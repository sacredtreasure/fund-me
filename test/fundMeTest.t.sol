// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {fundMe} from "../src/fundMe.sol"
contract fundMeTest is Test {
    uint256 number = 1;

    function setUp() external {
        number = 2;
    }

    function testDemo() public  {
        console.log(number);
        console.log("hey");
        assertEq(number, 2);
    }
}