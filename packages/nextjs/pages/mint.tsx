import { useEffect, useState } from "react";
import type { NextPage } from "next";
import { SendTransactionParameters, createPublicClient, http, keccak256, toRlp } from "viem";
import { useAccount } from "wagmi";
import { useBlockNumber } from "wagmi";
import { useWalletClient } from "wagmi";
import { MetaHeader } from "~~/components/MetaHeader";
import {
  useScaffoldContract,
  useScaffoldContractRead,
  useScaffoldContractWrite,
  useTransactor,
} from "~~/hooks/scaffold-eth";
import scaffoldConfig from "~~/scaffold.config";
import { notification } from "~~/utils/scaffold-eth";

const MintPage: NextPage = () => {
  const [targetBlockNumber, setTargetBlockNumber] = useState<bigint>();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [openDisabled, setOpenDisabled] = useState<boolean>(false);
  const [showOpenNotice, setShowOpenNotice] = useState<boolean>(false);
  const [opened, setOpened] = useState<boolean>(false);
  const [minted, setMinted] = useState<boolean>(false);
  const [opening, setOpening] = useState<boolean>(false);

  const writeTx = useTransactor();
  const { address } = useAccount();
  const { data: blockNumber } = useBlockNumber();

  const publicClient = createPublicClient({
    chain: scaffoldConfig.targetNetwork,
    transport: http(),
  });

  const { writeAsync, isLoading, isMining } = useScaffoldContractWrite({
    contractName: "OnchainMechaPacks",
    functionName: "mintPack",
    // args: [],
    value: "0.0007777777",
    onBlockConfirmation: txnReceipt => {
      console.log("Transaction blockHash", txnReceipt.blockHash);
      setMinted(true);
    },
  });

  const { data: walletClient } = useWalletClient();
  const { data: packsContract } = useScaffoldContract({
    contractName: "OnchainMechaPacks",
    walletClient,
  });

  const { data: tokenId } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "tokenOfOwnerByIndex",
    args: [address, 0n],
  });
  console.log(tokenId);
  const { data: packData } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "packs",
    args: [tokenId],
  }) as { data: [bigint, bigint, boolean, bigint] | undefined };

  useEffect(() => {
    if (packData) {
      console.log("packData: ", packData);
      setTargetBlockNumber(packData[0]);
    }
  }, [packData]);

  useEffect(() => {
    if (packData !== undefined && packData[1]) {
      setOpened(true);
    } else {
      setOpened(false);
    }
    if (packData !== undefined && packData[0] > 0) {
      setMinted(true);
    } else {
      setMinted(false);
    }
  }, [packData]);

  useEffect(() => {
    if (blockNumber && targetBlockNumber) {
      const show = blockNumber < targetBlockNumber;
      setShowOpenNotice(show);
    } else {
      setShowOpenNotice(false);
      setOpenDisabled(false);
    }
  }, [blockNumber, targetBlockNumber, packData]);

  const minting = isLoading || isMining || (minted && !opened);

  const openPack = async () => {
    console.log("Open the pack: ", blockNumber);
    console.log("targetBlockNumber: ", targetBlockNumber);

    const blockData = await publicClient.getBlock({ blockNumber: targetBlockNumber });

    console.log("blockData: ", blockData);

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

    console.log("blockData values after: ", values);

    const rlpEncodedValues = toRlp(values);
    console.log("blockData RLP: ", rlpEncodedValues);

    const blockHash = keccak256(rlpEncodedValues);
    console.log("blockData hash: ", blockHash);

    if (blockHash !== blockData.hash) {
      notification.error("Block hash mismatch");
      return;
    }

    setOpening(true);

    if (packsContract !== undefined) {
      console.log("tokenId", tokenId);
      const makeWrite = () => packsContract.write.openPack([rlpEncodedValues, tokenId as bigint]);

      await writeTx(makeWrite as unknown as SendTransactionParameters, {
        onBlockConfirmation: txnReceipt => {
          console.log("Transaction blockHash", txnReceipt.blockHash);
          setOpened(true);
        },
      });
      setOpening(false);
    }
  };

  return (
    <>
      <MetaHeader />
      <div className="flex items-center flex-col flex-grow pt-10">
        <div className="px-5">
          <div className="text-center text-lg">
            <>
              <button
                className="btn btn-primary mt-2"
                onClick={() => {
                  writeAsync();
                }}
                disabled={minting}
              >
                Mint Pack
              </button>
            </>
            <>
              {packData && packData[0] !== 0n && (
                <>
                  <p className="text-xl font-bold">First pack valid block: {packData[0].toString()}</p>
                  <p className="text-xl font-bold">Current block: {blockNumber?.toString() || 0}</p>
                  {opened && !opening && <p className="text-xl font-bold">Opened: {packData[3].toString()}</p>}
                  {opening && <p className="text-xl font-bold">Opening...</p>}
                  {showOpenNotice && targetBlockNumber && blockNumber && (
                    <p>Wait for {(targetBlockNumber - blockNumber).toString()} blocks to open the pack</p>
                  )}
                  <button className="btn btn-primary" disabled={openDisabled} onClick={openPack}>
                    Open Pack
                  </button>
                </>
              )}
            </>
          </div>
        </div>
      </div>
    </>
  );
};

export default MintPage;
