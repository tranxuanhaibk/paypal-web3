require("@nomicfoundation/hardhat-chai-matchers");
require("@nomiclabs/hardhat-etherscan");
const dotenv = require("dotenv");
/** @type import('hardhat/config').HardhatUserConfig */

dotenv.config();

module.exports = {
  solidity: "0.8.28",
  networks: {
    numbai: {
      url: [process.env.POLYGON_MUMBAI],
      accounts: [process.env.PRIVATE_KEY],
    }
  },
  etherscan: {
    url: [process.env.API_KEY],
  }
};
