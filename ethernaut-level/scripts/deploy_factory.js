const { ethers } = require("hardhat");

async function main() {
    const [deployer] = await ethers.getSigners();

    console.log("Deploying contract with the account:", deployer.address);

    console.log("Account balance:", (await deployer.getBalance()).toString());

    const UpsidedownEngineerFactory = await ethers.getContractFactory("UpsidedownEngineerFactory");
    const contract = await UpsidedownEngineerFactory.deploy();

    console.log("UpsidedownEngineerFactory address:", contract.address);
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

