const hre = require("hardhat");
const abi = require("./artifacts/contracts/VulnerableContract.sol/VulnerableContract.json").abi;

async function main() {
    const signers = await hre.ethers.getSigners();
    const account = signers[0];
    const contract = new hre.ethers.Contract("0x5fbdb2315678afecb367f032d93f642f64180aa3", abi, account);
    console.log("contract balance:",await contract.getBalance());
    // contract.attack();
}

main();