// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract AddTest is Test {
    /// @dev Address of the SimpleStore contract.
    Add public adder;

    /// @dev Setup the testing environment.
    function setUp() public {
        adder = Add(HuffDeployer.deploy("Add"));
    }

    /// @dev Ensure that you can set and get the value.
    function testAddTwo() public {
        uint result = adder.addTwo(1, 2);
        console.log(result);
        assertEq(3, result);
    }
}

interface Add {
    function addTwo(uint256, uint256) external returns (uint256);
}
