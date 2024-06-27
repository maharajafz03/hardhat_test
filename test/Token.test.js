const { loadFixture, } = require("@nomicfoundation/hardhat-toolbox/network-helpers");
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe('deployment', function(){

    async function dash(){

        const Token = await ethers.getContractFactory("Token");
        const [owner, addr1, addr2] = await ethers.getSigners();
        const token = await Token.deploy()

        // await token.deployed()

        console.log(token)
        console.log(owner)

        return{owner, token, addr1, addr2}

    }

    describe("development", function(){

    
        it("should check right owner & right balance", async function(){
            const owner = await loadFixture(dash)
            const token = await loadFixture(dash)
            expect(await token.balance).to.equal(owner.address)
        })

        it("should transfer money from owner to another", async function (){
            const owner = await loadFixture(dash)
            const token = await loadFixture(dash)

           expect(await token.address).to.equal(owner.address)
          
            

            // await token.transfer(addr1.address, 50)
            // expect(await addr1.address().to.equal(50))
            
        })
    })
    
})