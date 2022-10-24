const { ethers } = require("hardhat");

async function main() {

    const [deployer] = await ethers.getSigners();

    const UpsidedownEngineer = await ethers.getContractFactory("UpsidedownEngineer");
    const contract = UpsidedownEngineer.attach("0x6cf3cab421683c16d31c2d06af2dedee137e493d");

    // Deploy an instance of the UpsidedownEngineer contract
    // let tx = await contract.deploy();
    // await tx.wait(5);

    const address_uint = ethers.BigNumber.from(deployer.address);
    const address_uint_sqrt = await contract.sqrt_215F58CF9(address_uint);

    // Get the value in the storage slot
    const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
    const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
    const age = await ethers.provider.getStorageAt(contract.address, storage_slot);

    let tx = await contract.solve_108B1F57E(age, address_uint_sqrt);
    await tx.wait(5);

    console.log(await contract.owner());

}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });

