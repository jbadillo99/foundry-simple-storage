//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfStorageContracts;

    function createSimpleStorage() public {
        listOfStorageContracts.push(new SimpleStorage());
    }

    function storageFactoryStore(
        uint256 _simpleStorageIndex,
        uint256 _favoriteNumber
    ) public {
        listOfStorageContracts[_simpleStorageIndex].store(_favoriteNumber);
    }

    function storageFactoryGet(uint256 _simpleStorageIndex)
        public
        view
        returns (uint256)
    {
        return listOfStorageContracts[_simpleStorageIndex].retrieve();
    }
}
