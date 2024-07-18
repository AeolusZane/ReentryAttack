const hre = require("hardhat");
const abi = require("./artifacts/contracts/VulnerableContract.sol/VulnerableContract.json").abi;
const { Contract } = require("ethers");
async function main() {
    const signers = await hre.ethers.getSigners();
    const account1 = signers[1];
    const contract= new Contract("0x5fbdb2315678afecb367f032d93f642f64180aa3",abi,account1);
    contract.deposit({
        value: hre.ethers.parseEther("10")
    });
}

main();