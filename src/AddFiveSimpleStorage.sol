// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveSimpleStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        contractFavoriteNumber = _favoriteNumber + 5;
    }
}
