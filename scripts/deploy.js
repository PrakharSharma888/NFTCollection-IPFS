require("dotenv").config({ path: ".env" });
const hre = require("hardhat");

async function main() {

  const metadataURL = "ipfs://Qmbygo38DWF1V8GttM1zy89KzyZTPU2FLUzQtiDvB7q6i5/";

  const Lock = await hre.ethers.getContractFactory("LW3Punks");
  const lock = await Lock.deploy(metadataURL);

  await lock.deployed();

  console.log("Deployed to : ", lock.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
