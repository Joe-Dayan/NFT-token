/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  defaultNetwork: "goerli",
  networks:{
    hardhat:{},
    goerli:{
	url:process.env.DEV_API_URL,
	accounts: [`0x$ {process.env.PRIVATE_KEY}`],
},},
};
