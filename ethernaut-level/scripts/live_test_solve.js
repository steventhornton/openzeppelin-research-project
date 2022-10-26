const { ethers } = require("hardhat");

async function main() {

    const [deployer] = await ethers.getSigners();

    const UpsidedownEngineer = await ethers.getContractFactory("UpsidedownEngineer");
    const contract = UpsidedownEngineer.attach("0xe91ff75e4f413cdddad88b1cd92d5c4addd7c8e3");

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

