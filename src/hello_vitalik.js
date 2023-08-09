import {ethers} from "ethers";

const provider = ethers.getDefaultProvider();

const main = async () => {
    // const balance = await provider.getBalance(`vitalik.eth`);
    // console.log(`eth balance of vitalik:\n ${ethers.utils.formatEther(balance)}` );

    console.log("handler");
    const num = await provider.getBlockNumber();
    console.log(num)
}

main();