const Colours = artifacts.require("Colours");

module.exports = function(deployer) {
  deployer.deploy(Colours);
};