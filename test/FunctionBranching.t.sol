// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract FunctionBranchingTest is Test {
    /// @dev Address of the SimpleStore contract.
    FunctionBranching public functionBrancher;

    /// @dev Setup the testing environment.
    function setUp() public {
        functionBrancher = FunctionBranching(HuffDeployer.deploy("FunctionBranching"));
    }

    /// @dev Ensure that you can set and get the value.
    function testAddTwo() public {
        uint result = functionBrancher.addTwo(1, 2);
        console.log(result);
        assertEq(3, result);
    }

    function testAddThree() public {
        uint result = functionBrancher.addThree(1, 2, 3);
        console.log(result);
        assertEq(6, result);
    }
}

interface FunctionBranching {
    function addTwo(uint256, uint256) external returns (uint256);
    function addThree(uint256, uint256, uint256) external returns (uint256);
}
