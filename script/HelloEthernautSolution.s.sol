// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/HelloEthernaut.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract HelloEthernautSolution is Script {
    HelloEthernaut public helloEthernaut =
        HelloEthernaut(0xfA7f90cb10Bf7ACb9737dEb489181ffE2F9aB628);

    function run() external {
        string memory passowrd = helloEthernaut.password();
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        helloEthernaut.authenticate(passowrd);
        vm.stopBroadcast();
    }
}
