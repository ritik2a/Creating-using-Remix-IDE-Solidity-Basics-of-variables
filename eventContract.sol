const hre = require("hardhat");

async function main() { 
  const EventTest = await hre.ethers.getContractFactory("Task");
  const eventTest = await EventTest.deploy();

  await eventTest.deployed();

  eventTest.on("UserCreated", (userAddress, age) => {
    console.log("user created");
  })

  eventTest.on("UserUpdated", (userAddress, newAge) => {
    console.log("user updated");
  })

  eventTest.on("UserDeleted", (userAddress) => {
    console.log("user deleted");
  })

  console.log(
    `Contract deployed to ${eventTest.address}`
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
