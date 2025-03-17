const hre = require("hardhat");

async function main() {
    const Paypal = await hre.ethers.getContractFactory("Paypal");
    const paypal = await Paypal.deploy();

    await paypal.deployed();
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
})