import { useEffect, useState } from "react";
import type { NextPage } from "next";
import { SendTransactionParameters, createPublicClient, http, keccak256, toRlp } from "viem";
import { useAccount } from "wagmi";
import { useBlockNumber } from "wagmi";
import { useWalletClient } from "wagmi";
import { MetaHeader } from "~~/components/MetaHeader";
import { Address } from "~~/components/scaffold-eth";
import {
  useScaffoldContract,
  useScaffoldContractRead,
  useScaffoldContractWrite,
  useScaffoldEventHistory,
  useTransactor,
} from "~~/hooks/scaffold-eth";
import scaffoldConfig from "~~/scaffold.config";
import { notification } from "~~/utils/scaffold-eth";

const MintPage: NextPage = () => {
  // const [number, setNumber] = useState<string | bigint>("");
  // const [betNumber, setBetNumber] = useState<number>();
  const [targetBlockNumber, setTargetBlockNumber] = useState<bigint>();
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [minted, setMinted] = useState<boolean>(false);
  const [rollDisabled, setRollDisabled] = useState<boolean>(false);
  const [showRollNotice, setShowRollNotice] = useState<boolean>(false);
  const [rolled, setRolled] = useState<boolean>(false);
  const [betted, setBetted] = useState<boolean>(false);
  const [rolling, setRolling] = useState<boolean>(false);

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

  const { data: mintPackEvents } = useScaffoldEventHistory({
    contractName: "OnchainMechaPacks",
    eventName: "Transfer",
    fromBlock: scaffoldConfig.fromBlock,
    filters: { from: "0x0000000000000000000000000000000000000000", to: address },
  });

  const { data: mintCardEvents } = useScaffoldEventHistory({
    contractName: "OnchainMecha",
    eventName: "Transfer",
    fromBlock: scaffoldConfig.fromBlock,
    filters: { from: "0x0000000000000000000000000000000000000000", to: address },
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

  const { data: betData } = useScaffoldContractRead({
    contractName: "OnchainMechaPacks",
    functionName: "packs",
    args: [tokenId],
  }) as { data: [bigint, bigint, boolean, bigint] | undefined };

  useEffect(() => {
    if (betData) {
      console.log("betData: ", betData);
      setTargetBlockNumber(betData[0]);
    }
  }, [betData]);

  useEffect(() => {
    if (betData !== undefined && betData[1]) {
      setRolled(true);
    } else {
      setRolled(false);
    }
    if (betData !== undefined && betData[0] > 0) {
      setBetted(true);
    } else {
      setBetted(false);
    }
  }, [betData]);

  useEffect(() => {
    if (blockNumber && targetBlockNumber) {
      const show = blockNumber < targetBlockNumber;
      setShowRollNotice(show);
    } else {
      setShowRollNotice(false);
      setRollDisabled(false);
    }
  }, [blockNumber, targetBlockNumber, betData]);

  const betDisabled = isLoading || isMining || (betted && !rolled);

  const rollTheDice = async () => {
    console.log("Roll the dice: ", blockNumber);
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

    setRolling(true);

    if (packsContract !== undefined) {
      console.log("tokenId", tokenId);
      const makeWrite = () => packsContract.write.openPack([rlpEncodedValues, tokenId as bigint]);

      await writeTx(makeWrite as unknown as SendTransactionParameters, {
        onBlockConfirmation: txnReceipt => {
          console.log("Transaction blockHash", txnReceipt.blockHash);
          setRolled(true);
        },
      });
      setRolling(false);
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
                disabled={betDisabled}
              >
                Mint Pack
              </button>
            </>
            <>
              {betData && betData[0] !== 0n && (
                <>
                  <p className="text-xl font-bold">First pack valid block: {betData[0].toString()}</p>
                  <p className="text-xl font-bold">Current block: {blockNumber?.toString() || 0}</p>
                  {rolled && !rolling && <p className="text-xl font-bold">Rolled: {betData[3].toString()}</p>}
                  {rolling && <p className="text-xl font-bold">Rolling...</p>}
                  {showRollNotice && targetBlockNumber && blockNumber && (
                    <p>Wait for {(targetBlockNumber - blockNumber).toString()} blocks to roll the dice</p>
                  )}
                  <button className="btn btn-primary" disabled={rollDisabled} onClick={rollTheDice}>
                    Open Pack
                  </button>
                </>
              )}
            </>
          </div>
        </div>

        <div className="flex-grow bg-base-300 w-full mt-16 px-8 py-12">
          <div className="flex justify-center items-start gap-12 flex-col sm:flex-row">
            <div className="flex flex-col bg-base-100 px-10 text-center items-center max-w-xs rounded-3xl">
              <p className="text-2xl font-bold">Bets</p>
              {mintPackEvents &&
                mintPackEvents.map((event, index) => (
                  <div key={index} className="mt-0">
                    <Address address={event.args.player} />
                    Bet: {event.args.number}
                  </div>
                ))}
            </div>
            <div className="flex flex-col bg-base-100 px-10 text-center items-center max-w-xs rounded-3xl">
              <p className="text-2xl font-bold">Rolls</p>
              {mintCardEvents &&
                mintCardEvents.map((event, index) => (
                  <div key={index} className="mt-0">
                    <Address address={event.args.player} />
                    Number: {event.args.number}
                  </div>
                ))}
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default MintPage;
