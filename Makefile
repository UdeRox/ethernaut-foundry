-include .env


all: clean remove install update build
# Clean the repo
clean  :; forge clean

# Remove modules
remove :; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "modules"

install :; forge install openzeppelin-contracts-06=OpenZeppelin/openzeppelin-contracts@v3.4.0 --no-commit && forge install foundry-rs/forge-std@v1.5.3 --no-commit && forge install openzeppelin/openzeppelin-contracts@v4.8.3 --no-commit

# Update Dependencies
update:; forge update

build:; forge build

format :; forge fmt

runchallange :; forge script script/HelloEthernautSolution.s.sol -vvvvv 

