balance:
	@npx hardhat run ./balance.js --network localhost
transfer:
	@npx hardhat run ./transfer.js --network localhost
deploy:
	@npx hardhat run ./deploy.js --network localhost
attack:
	@npx hardhat run ./attackcontract.js --network localhost
at:
	@npx hardhat run ./attack.js --network localhost
start:
	@npx hardhat run ./contract.js --network localhost
	@npx hardhat run ./attack.js --network localhost
	@npx hardhat run ./transfer.js --network localhost
	@npx hardhat run ./balance.js --network localhost
withdraw:
	@npx hardhat run ./withdraw.js --network localhost
attackbalance:
	@npx hardhat run ./attackbalance.js --network localhost
check:
	@npx hardhat run ./check.js --network localhost