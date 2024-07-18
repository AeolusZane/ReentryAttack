const hre = require("hardhat");
const abi = require("./artifacts/contracts/Attack.sol/Attack.json").abi;

async function main() {
    const signers = await hre.ethers.getSigners();
    const contract= new hre.ethers.Contract("0xe7f1725e7734ce288f8367e1bb143e90bb3f0512",abi,signers[0]);
    await contract.withdraw()
}

main();