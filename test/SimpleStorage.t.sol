// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorageContract;

    function setUp() public {
        simpleStorageContract = new SimpleStorage();
    }

    // function testIncrement() public {
    //     simpleStorageContract.increment();
    //     assertEq(simpleStorageContract.number(), 1);
    // }

    // function testSetNumber(uint256 x) public {
    //     simpleStorageContract.setNumber(x);
    //     assertEq(simpleStorageContract.number(), x);
    // }
}
