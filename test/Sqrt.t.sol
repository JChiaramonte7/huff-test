// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SqrtTest is Test {
    /// @dev Address of the SimpleStore contract.
    Sqrt public s;

    /// @dev Setup the testing environment.
    function setUp() public {
        s = Sqrt(HuffDeployer.deploy("Sqrt"));
    }

    function test_Sqrt4() public {
        assertEq(s.sqrt(4), 2);
    }

    function test_Sqrt5() public {
        assertEq(s.sqrt(5), 2);
    }

    function test_Sqrt64() public {
        assertEq(s.sqrt(64), 8);
    }
}

interface Sqrt {
    function sqrt(uint256) external returns (uint256);
}
