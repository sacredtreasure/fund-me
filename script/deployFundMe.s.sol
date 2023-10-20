// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script} from "lib/forge-std/src/Script.sol";
import {FundMe} from "src/fundMe.sol";

contract deployFundMe is Script {
    function run() external returns (FundMe){
        vm.startBroadcast();
       fundMe FundMe =  new FundMe(0x694A1769357215DE4FAC081bf1f309aDC325306);
        vm.stopBroadcast();
        return FundMe;
    }
}