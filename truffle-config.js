module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 8545,
      network_id: "*"
    },
    compilers: {
      solc: {
        version: "0.8.20"
      }
    },
    loc_tafit_tafit: {
      network_id: "*",
      port: 7545,
      host: "127.0.0.1"
    }
  }
};
