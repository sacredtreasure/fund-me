// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {FundMe} from "../src/fundMe.sol";
import {deployFundMe} from "../script/deployFundMe.s.sol";

contract fundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
       //us -> fundMeTest -> fundMe
        // fundMe = new FundMe(0x694A1769357215DE4FAC081bf1f309aDC325306);
        deployFundMe DeployFundMe = new deployFundMe();
        fundMe = DeployFundMe.run();
    }

    // function testDemo() public  {
    //     console.log(number);
    //     console.log("hey");
    //     assertEq(number, 2);
    // }
    function testMinimumDollarIsFive() public {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public {
        console.log(fundMe.i_owner());
        console.log(msg.sender);
        assertEq(fundMe.i_owner(), address(this));
    }

    function testPriceFeedVersionIsAccurate() public {
        uint256 version = fundMe.getVersion();
        assertEq(version, 4);
    }
}

