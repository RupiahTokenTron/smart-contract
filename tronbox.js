module.exports = {
    networks: {
        development: {
            from: process.env.WALLET_TESTNET,
            privateKey: process.env.PK_TESTNET,
            userFeePercentage: 30,
            feeLimit: 1e9,
            originEnergyLimit: 1e7,
            fullHost: "https://api.shasta.trongrid.io",
            network_id: "*" // Match any network id
        },
      production: {
          //from: process.env.WALLET,
          privateKey: process.env.PK,
          consume_user_resource_percent: 30,
          fee_limit: 100000000,
          fullHost: "https://api.trongrid.io",
          solidityNode: "https://api.trongrid.io",
	  eventServer: "https://api.trongrid.io",
          network_id: "*"
      },
    }
};
