const AdoptionArtifacts = artifacts.require("Adoption");

module.exports = function (deployer) {
  deployer.deploy(AdoptionArtifacts);
};
