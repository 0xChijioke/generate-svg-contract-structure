// utils/fetchTokenIds.ts
export const fetchTokenIds = async (userAddress: string, batchIndex: number) => {
  if (!userAddress) {
    throw new Error("User address is required");
  }

  try {
    const response = await fetch(`/api/token-ids/${userAddress}?batchIndex=${batchIndex}`);
    if (!response.ok) {
      const error = await response.json();
      throw new Error(error.error || response.statusText);
    }
    return await response.json();
  } catch (error) {
    console.error("Failed to fetch token IDs:", error);
    throw error;
  }
};
