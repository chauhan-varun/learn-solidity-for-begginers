// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/// @title StorageFactory Contract
/// @notice Demonstrates managing multiple SimpleStorage contracts.
import "./SimpleStorage.sol";

contract StorageFactory {
    /// @notice Array of deployed SimpleStorage contracts.
    SimpleStorage[] public s_simpleStorages;

    /// @notice Deploys new SimpleStorage contract.
    function createSimpleStorage() public {
        SimpleStorage newStorage = new SimpleStorage();
        s_simpleStorages.push(newStorage);
    }

    /// @notice Calls set on a specific SimpleStorage contract by index.
    function setSimpleStorageValue(uint256 index, string memory _name, uint256 _favNum) public {
        s_simpleStorages[index].set(_name, _favNum);
    }

    /// @notice Gets a value from a specific SimpleStorage contract.
    function getSimpleStorageValue(uint256 index, string memory _name) public view returns (uint256) {
        return s_simpleStorages[index].get(_name);
    }
}