const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("UpsidedownEngineer contract", function () {

    async function deployUpsidedownEngineerFixture() {

        const UpsidedownEngineerFactory = await ethers.getContractFactory("UpsidedownEngineerFactory");
        const UpsidedownEngineer = await ethers.getContractFactory("UpsidedownEngineer");

        const [deployer, addr1] = await ethers.getSigners();
    
        const factory = await UpsidedownEngineerFactory.deploy();
    
        await factory.deployed();

        // Deploy an instance of the UpsidedownEngineer contract
        const tx = await factory.deploy();
        const receipt = await tx.wait();

        const contract = UpsidedownEngineer.attach(receipt.events[0].args[0]);
        
        return { contract, factory, deployer, addr1 };
    }

    it("Should set owner to factory", async function () {
        const { contract, factory } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.owner()).to.equal(factory.address);
    });
    
    it("Should set storage slot 1 to factory", async function () {
        const { contract, factory } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await ethers.provider.getStorageAt(contract.address, 1)).to.equal(ethers.utils.hexZeroPad(factory.address, 32).toLowerCase());
    })

    it("Non-zero value for storage slot a", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);

        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const a = await ethers.provider.getStorageAt(contract.address, storage_slot);

        expect(a).to.not.equal("0x0000000000000000000000000000000000000000000000000000000000000000");

    })

    it("setOwner should revert when not called by owner", async function () {
        const { contract, factory, deployer, addr1} = await loadFixture(deployUpsidedownEngineerFixture);
        await expect(contract.connect(addr1).setOwner(addr1.address)).to.revertedWith("Maybe the claimOwnership function will work");
    })

    it("isOwner should return false", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.isOwner()).is.false;
    })

    it("sqrt_215F58CF9 should return sqrt", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.sqrt_215F58CF9(9)).to.equal(3);
        expect(await contract.sqrt_215F58CF9(16)).to.equal(4);
        expect(await contract.sqrt_215F58CF9(256)).to.equal(16);
    });

    it("claimOwnership should revert", async function () {
        const { contract} = await loadFixture(deployUpsidedownEngineerFixture);
        await expect(contract.claimOwnership()).to.revertedWith("Try out https://library.dedaub.com/decompile");
    })

    it("solve_108B1F57E should emit Hint event", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.solve_108B1F57E(0, 0)).to.emit(contract, "Hint").withArgs("Try to find out what storage slot the solution is stored in");
    })

    it("solve_108B1F57E should not update owner", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);

        const tx = await contract.solve_108B1F57E(0, 0);
        await tx.wait();

        expect(await contract.isOwner()).is.false;
    })

    it("solve_108B1F57E with improper b value should emit Hint event", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);

        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const a = await ethers.provider.getStorageAt(contract.address, storage_slot);

        await expect(contract.solve_108B1F57E(a, 0)).to.emit(contract, "Hint").withArgs("You're so close! What does the function with selector 0x10000001 do?");
    })

    it("solve_108B1F57E with improper b value should not update owner", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);

        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const a = await ethers.provider.getStorageAt(contract.address, storage_slot);

        const tx = await contract.solve_108B1F57E(a, 0);
        await tx.wait();

        expect(await contract.isOwner()).is.false;

    })

    it("solve_108B1F57E should set owner to msg.sender with correct input ", async function () {
        const { contract, factory, deployer } = await loadFixture(deployUpsidedownEngineerFixture);

        // Sqrt of msg.sender address
        const address_uint = ethers.BigNumber.from(deployer.address);
        const address_uint_sqrt = await contract.sqrt_215F58CF9(address_uint);
        
        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const a = await ethers.provider.getStorageAt(contract.address, storage_slot);

        await contract.solve_108B1F57E(a, address_uint_sqrt);

        expect(await contract.owner()).to.equal(deployer.address);
        expect(await contract.isOwner()).is.true;
    })

});
