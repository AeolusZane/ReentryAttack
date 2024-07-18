const hre = require("hardhat");

async function main() {
    const V = await hre.ethers.getContractFactory("Attack");
    const v = await V.deploy("0x5fbdb2315678afecb367f032d93f642f64180aa3");

    return v;
}


main();