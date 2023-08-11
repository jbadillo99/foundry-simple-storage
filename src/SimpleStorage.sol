// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 internal contractFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string _name => uint256 _favoriteNumber) public nameToFavoriteNumber;

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public virtual {
        contractFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return contractFavoriteNumber;
    }

    function addPerson(uint256 _favoriteNumber, string calldata _name) public {
        listOfPeople.push(Person({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
