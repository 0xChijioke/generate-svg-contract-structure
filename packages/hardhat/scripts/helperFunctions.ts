export function breakUpLargeSegments(segments: string[], byteLimit: number) {
  const result = [];

  for (const str of segments) {
    const byteCount = Buffer.from(str).length;

    // If the string's byte count is within the limit, add it to the result directly
    if (byteCount <= byteLimit) {
      result.push(str);
    } else {
      const brokenUp = _splitByByteSize(str, byteLimit);
      result.push(...brokenUp);
    }
  }

  return result;
}

function _splitByByteSize(input: string, byteLimit: number) {
  const encoder = new TextEncoder();
  const bytes = encoder.encode(input);
  const result = [];

  let byteIndex = 0;
  while (byteIndex < bytes.length) {
    let chunkEnd = byteIndex + byteLimit;

    // If we're potentially in the middle of a multi-byte character, backtrack until we're not
    while (chunkEnd > byteIndex && bytes[chunkEnd] > 127 && bytes[chunkEnd] < 192) {
      chunkEnd--;
    }

    const chunkBytes = bytes.slice(byteIndex, chunkEnd);
    result.push(new TextDecoder().decode(chunkBytes));

    byteIndex = chunkEnd;
  }

  return result;
}

export function createContract(functions: any, title: string | number) {
  const fnStringArray = functions.map((f: FunctionObj) => f.fnString);
  const start = `//SPDX-License-Identifier: MIT\npragma solidity ^0.8.20;\n\nimport './ToColor.sol';\n\ncontract ${title} {\n\nusing ToColor for bytes4;\n\n`;
  const middle = fnStringArray.join("\n\n    ");
  const end = `\n}`;

  return start + middle + end;
}

export function createFunction(data: string[], name: string, visibility = "internal") {
  return `function ${getFunctionCall(name)} ${visibility} pure returns (string memory) {
      ${parseDataToAbiEncode(data)}
      }`;
}

export function getFunctionCall(name: string, called = false) {
  // If function is in called format then we skip adding types to the args
  if (called) {
    return `${name}(colors)`;
  } else {
    return `${name}(bytes4[] memory colors)`;
  }
}

export function parseDataToAbiEncode(data: string[]) {
  const start = "  string memory render = string(abi.encodePacked(";
  const middle = data.join(",");
  const end = `));
      
        return render;`;

  return start + middle + end;
}

export function createFunctionObj(data: string[], name: string): FunctionObj {
  const functionObj = {
    fnString: createFunction(data, name),
    data,
    name,
  };
  return functionObj;
}

export function createNestingFunctions(functionObjs: FunctionObj[], stackLimit: number) {
  const allFunctions: FunctionObj[] = [];
  let helperFunctions: FunctionObj[] = [];
  let tempMemory: FunctionObj[] = [];
  // if functionObjs has > stacklimit args altogether then we need to nest a level deeper
  while (functionObjs.length) {
    const functionObj = functionObjs.shift();
    allFunctions.push(functionObj as FunctionObj);
    tempMemory.push(functionObj as FunctionObj);
    if (tempMemory.length > stackLimit) {
      // If we only have one function in queue then something is wrong
      if (tempMemory.length == 1) {
        throw new Error("Received function with more params than stack limit allows");
      }
      // Undo shift and pop off most recent addition
      functionObjs.unshift(functionObj as FunctionObj);
      allFunctions.pop();
      tempMemory.pop();
      // Process what we have
      process();
    } else if (!functionObjs.length) {
      // Process what we have because this is the end of it all
      process();
    }
    function process() {
      // Getting the string version of a function call
      const fnCallStrings = tempMemory.map(f => getFunctionCall(f.name, true));
      const helperFunction = createFunctionObj(fnCallStrings, `nested${helperFunctions.length}`);
      helperFunctions.push(helperFunction);
      tempMemory = [];
    }
  }
  // If only one function rename it so that top level function always has same name in each contract
  if (helperFunctions.length > 1) {
    helperFunctions = createNestingFunctions(helperFunctions, stackLimit);
  } else {
    helperFunctions[0].name = "renderMain";
    helperFunctions[0].fnString = createFunction(helperFunctions[0].data, "renderMain", "public");
  }
  return allFunctions.concat(helperFunctions);
}

export interface FunctionObj {
  fnString: string;
  data: string[];
  name: string;
}
