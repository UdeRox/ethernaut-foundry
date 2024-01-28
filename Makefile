-include .env

# Clean the repo
clean  :; forge clean

# Update Dependencies
update:; forge update

build:; forge build

format :; forge fmt

runchallange :; forge script script/HelloEthernautSolution.s.sol -vvvvv 

