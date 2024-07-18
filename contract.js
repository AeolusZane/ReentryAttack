const hre = require("hardhat");

async function main() {
    const V = await hre.ethers.getContractFactory("VulnerableContract");
    const v = await V.deploy();

    return v;
}


main();

