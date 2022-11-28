// uses hardhat-deploy
module.exports = async ({ getNamedAccounts, deployments }) => {
  const { deploy } = deployments;
  const { deployer } = await getNamedAccounts();

  await deploy("Greeter", {
    from: deployer,
    args: ["Hello", "world"],
    log: true,
  });
};
module.exports.tags = ["Greeter"];
