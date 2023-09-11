import {ethers} from "ethers";

// only read 
// const contract = new ethers.Contract(`address`, `abi`, `provider`);

const INFURA_ID = ''

// connect ether
const provider = new ethers.JsonRpcProvider(`https://mainnet.infura.io/v3/${INFURA_ID}`)

// first way
const abiWETH = ''
const addressWETH = ''
const contractWETH = new ethers.Contract(addressWETH, abiWETH, provider)

// second way

const abiERC20 = [
    "function name() view returns (string)",
    "function symbol() view returns (string)",
    "function totalSupply() view returns (uint256)",
    "function balanceOf(address) view returns (uint)",
];

const addressDAI = ''
const contractDAI = new ethers.Contract(addressDAI, abiERC20, provider)

const main = async () => {
    const nameWETH = await contractWETH.name()
    const symbolWETH = await contractWETH.symbol()
    const totalSupplyWETH = await contractWETH.totalSupply()

    const balanceWETH = await contractWETH.balanceOf('vitalik.eth')

    console.log(nameWETH, symbolWETH, totalSupplyWETH, balanceWETH)


    const nameDAI = await contractDAI.name()
    const symbolDAI = await contractDAI.symbol()
    const totalSupplDAI = await contractDAI.totalSupply()

    const balanceDAI = await contractDAI.balanceOf('vitalik.eth')
    console.log(nameDAI, symbolDAI, totalSupplDAI, balanceDAI)

}

main()









