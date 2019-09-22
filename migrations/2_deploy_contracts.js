var RupiahToken = artifacts.require("./RupiahToken.sol");

module.exports = function (deployer) {
    deployer.deploy(RupiahToken, "RupiahToken", "RPT", 1000000000, 8);
};
