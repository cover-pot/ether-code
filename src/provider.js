import {ethers} from "ethers";

const infura_id = '';

const providerGoerli = new ethers.providers.JsonRpcProvider(`https://goerli.infura.io/v3/${INFURA_ID}`);

// 查询余额
const balanceGoerli = await providerGoerli.getBlance(`vitalik.eth`);
console.log(`ETH balance of vitalik: ${ethers.utils.formatEther(balanceGoerli)} ETH`);

// 查询连接的链
const network = await providerGoerli.getNetwork();
console.log(`连接的网络${network}`);

// 查询区块高度
const blockNumber = await providerGoerli.getBlockNumber();
console.log(`当前区块高度：${blockNumber}`);

// 查询当前gas price
const gasPrice = await providerGoerli.getGasPrice();
console.log(`当前gas price：${gasPrice}`);

// 查询当前建议的gas设置
const feeData = await providerGoerli.getFeeData();
console.log(`当前fee data ${feeData}`);

// 查询区块信息
const block = providerGoerli.getBlock(0);
console.log(`区块信息： ${block}`);





