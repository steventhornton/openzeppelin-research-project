const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("UpsidedownEngineer contract", function () {

    async function deployUpsidedownEngineerFixture() {
        const UpsidedownEngineer = await ethers.getContractFactory("UpsidedownEngineer");
        const [owner, addr1] = await ethers.getSigners();
    
        const contract = await UpsidedownEngineer.deploy();
    
        await contract.deployed();
    
        return { contract, owner, addr1 };
    }

    it("Should set owner to deployer", async function () {
        const { contract, owner } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.owner()).to.equal(owner.address);
    });

    // it("Should set a to correct value", async function () {
    //     const { contract } = await loadFixture(deployUpsidedownEngineerFixture);

    //     // Get the value in the storage slot
    //     const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
    //     const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
    //     const a = await ethers.provider.getStorageAt(contract.address, storage_slot);
    //     const a_bn = ethers.BigNumber.from(a);
    //     console.log(`a: ${a_bn}`);


    //     expect(await contract.set_a_21E47EDEE()).to.equal(a_bn);
    // });

    it("sqrt_215F58CF9 should return sqrt", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.sqrt_215F58CF9(9)).to.equal(3);
        expect(await contract.sqrt_215F58CF9(16)).to.equal(4);
        expect(await contract.sqrt_215F58CF9(256)).to.equal(16);
    });

    it("setOwner should update owner when set by owner", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);
        await contract.setOwner(ethers.constants.AddressZero);
        expect(await contract.owner()).to.equal(ethers.constants.AddressZero);
    })

    it("setOwner should destruct contract when not called by owner", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);
        await contract.connect(addr1).setOwner(addr1.address);
        expect(await ethers.provider.getCode(contract.address)).to.equal('0x');
    })

    it("isOwner should return true", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        expect(await contract.isOwner()).is.true;
    })

    it("kill_B708A60B should self destruct the contract", async function () {
        const { contract } = await loadFixture(deployUpsidedownEngineerFixture);
        await contract.kill_B708A60B();
        expect(await ethers.provider.getCode(contract.address)).to.equal('0x');
    })

    it("set_a_21E47EDEE should self destruct the contract", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);
        await contract.connect(addr1).set_a_21E47EDEE(0);
        expect(await ethers.provider.getCode(contract.address)).to.equal('0x');
    })

    it("solve_108B1F57E should self destruct the contract when called with improper age", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);
        await contract.connect(addr1).solve_108B1F57E(0, 0);
        expect(await ethers.provider.getCode(contract.address)).to.equal('0x');
    })

    it("solve_108B1F57E should self destruct the contract when called with improper b value", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);

        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string", "string", "string", "string"], ["The", "Solution", "is", "42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const age = await ethers.provider.getStorageAt(contract.address, storage_slot);

        await contract.connect(addr1).solve_108B1F57E(age, 0);
        expect(await ethers.provider.getCode(contract.address)).to.equal('0x');
    })

    it("solve_108B1F57E should set owner to msg.sender when ", async function () {
        const { contract, owner, addr1 } = await loadFixture(deployUpsidedownEngineerFixture);

        // Sqrt of msg.sender address
        const address_uint = ethers.BigNumber.from(addr1.address);
        const address_uint_sqrt = await contract.sqrt_215F58CF9(address_uint);
        // Get the value in the storage slot
        const s1 = ethers.utils.defaultAbiCoder.encode(["string"], ["The Solution is 42"]);
        const storage_slot = ethers.utils.solidityKeccak256(["bytes"], [s1]);
        const age = await ethers.provider.getStorageAt(contract.address, storage_slot);
        const age_bn = ethers.BigNumber.from(age);

        await contract.connect(addr1).solve_108B1F57E(age, address_uint_sqrt);

        expect(await contract.owner()).to.equal(addr1.address);
    })

});
