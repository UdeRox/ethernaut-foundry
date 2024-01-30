# Ethernaut Challenge with Foundry

Welcome to my Ethernaut challenge solutions repository! In this repository, I have documented my solutions to the challenges from the Ethernaut platform, which you can find at [https://ethernaut.openzeppelin.com/](https://ethernaut.openzeppelin.com/).

## Getting Started

### Prerequisites

Before you can start working on the challenges locally, make sure you have the following installed:

- [Foundry](https://book.getfoundry.sh/) - Foundry is a development environment for Ethereum smart contracts.

### Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/UdeRox/ethernaut-foundry.git
   cd ethernaut-foundry
   forge install
   forge build

## Ethernaut Challenges
 https://ethernaut.openzeppelin.com/

 The Ethernaut is a Web3/Solidity based wargame inspired by overthewire.org, played in the Ethereum Virtual Machine. Each level is a smart contract that needs to be 'hacked'. The game is 100% open source and all levels are contributions made by other players

# Issue in Resolving Fallout Challenge

Encountered a challenge while working on the Fallout challenge, where it was necessary to install two different versions of the OpenZeppelin libraries. To address this, utilize the following command to install the openzeppelin-contracts-06 library and employ the remappings.txt file for dependency mapping:

```bash
forge install openzeppelin-contracts-06=OpenZeppelin/openzeppelin-contracts@v3.4.0
