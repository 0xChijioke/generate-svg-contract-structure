import { SendTransactionParameters, createPublicClient, http, keccak256, toRlp } from "viem";
import scaffoldConfig from "~~/scaffold.config";
import { notification } from "~~/utils/scaffold-eth";

export const openPack = async (
  targetBlockNumber: bigint,
  packsContract: any,
  writeTx: any,
  tokenId: bigint | undefined,
  setOpened: React.Dispatch<React.SetStateAction<boolean>>,
  setOpening: React.Dispatch<React.SetStateAction<boolean>>,
) => {
  const publicClient = createPublicClient({
    chain: scaffoldConfig.targetNetwork,
    transport: http(),
  });

  try {
    const blockData = await publicClient.getBlock({ blockNumber: targetBlockNumber });

    const values: `0x${string}`[] = [];
    values.push(blockData.parentHash);
    values.push(blockData.sha3Uncles);
    values.push(blockData.miner as `0x${string}`);
    values.push(blockData.stateRoot);
    values.push(blockData.transactionsRoot);
    values.push(blockData.receiptsRoot);
    values.push(blockData.logsBloom as `0x${string}`);
    values.push(`0x${blockData.difficulty.toString(16)}`);
    values.push(`0x${blockData.number?.toString(16)}`);
    values.push(`0x${blockData.gasLimit.toString(16)}`);
    values.push(`0x${blockData.gasUsed.toString(16)}`);
    values.push(`0x${blockData.timestamp.toString(16)}`);
    values.push(blockData.extraData);
    values.push(blockData.mixHash);
    values.push(blockData.nonce as `0x${string}`);
    if ("baseFeePerGas" in blockData && blockData.baseFeePerGas !== null) {
      values.push(`0x${blockData.baseFeePerGas.toString(16)}`);
    }
    if ("withdrawalsRoot" in blockData && blockData.withdrawalsRoot !== undefined) {
      values.push(blockData.withdrawalsRoot as `0x${string}`);
    }
    if ("blobGasUsed" in blockData && blockData.blobGasUsed !== undefined) {
      values.push(blockData.blobGasUsed as `0x${string}`);
    }
    if ("excessBlobGas" in blockData && blockData.excessBlobGas !== undefined) {
      values.push(blockData.excessBlobGas as `0x${string}`);
    }
    if ("parentBeaconBlockRoot" in blockData && blockData.parentBeaconBlockRoot !== undefined) {
      values.push(blockData.parentBeaconBlockRoot as `0x${string}`);
    }

    console.log("blockData values: ", values);
    for (let i = 0; i < values.length; i++) {
      if (values[i] === "0x0") {
        values[i] = "0x";
      }
      if (values[i].length % 2 === 1) {
        values[i] = ("0x0" + values[i].substring(2)) as `0x${string}`;
      }
    }

    // console.log("blockData values after: ", values);

    const rlpEncodedValues = toRlp(values);
    // console.log("blockData RLP: ", rlpEncodedValues);

    const blockHash = keccak256(rlpEncodedValues);
    console.log("blockData hash: ", blockHash);

    if (blockHash !== blockData.hash) {
      notification.error("Block hash mismatch");
      return;
    }

    setOpening(true);

    if (!packsContract) {
      notification.error("Pack contract error");
      return;
    }

    if (tokenId === undefined) {
      notification.error("Token ID is undefined");
      return;
    }

    try {
      console.log(packsContract);
      console.log(tokenId);
      const makeWrite = () => packsContract.write.openPack([rlpEncodedValues, tokenId as bigint]);
      console.log(makeWrite);
      const tx = await writeTx(makeWrite as unknown as SendTransactionParameters, {
        onBlockConfirmation: (txnReceipt: any) => {
          console.log("Transaction blockHash", txnReceipt);
          if (!txnReceipt) {
            console.error("Transaction receipt is undefined or null");
            notification.error("Transaction receipt error");
            return;
          }
          setOpened(true);
          return txnReceipt;
        },
      });
      console.log("Transaction: ", tx);
    } catch (error) {
      console.error("Error during transaction:", error);
      notification.error("Error during transaction");
    } finally {
      setOpening(false);
    }
  } catch (error) {
    console.error("Error fetching block data: ", error);
    notification.error("Error fetching block data");
  }
};
