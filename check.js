const hre = require("hardhat");
const abi = require("./artifacts/contracts/VulnerableContract.sol/VulnerableContract.json").abi;

async function main() {
    const signers = await hre.ethers.getSigners();
    const account = signers[0];
    console.log("contract balance:",await hre.ethers.provider.getBalance(account.address));
    // contract.attack();
}

main();