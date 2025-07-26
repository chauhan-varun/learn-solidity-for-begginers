// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Proxy2 Contract Example
/// @notice Demonstrates calling other contracts' functions via interface.
interface IStorage {
    function addNum() external;
    function getNum() external view returns (uint);
}

contract Proxy2 {
    /// @notice The address of the storage contract.
    address public immutable i_storageContract;

    /// @notice Sets the address of the storage contract to call.
    constructor(address storageContract) {
        i_storageContract = storageContract;
    }

    /// @notice Proxy for calling addNum() on external storage contract.
    function proxyAdd() public {
        IStorage(i_storageContract).addNum();
    }

    /// @notice Proxy for calling getNum() on external storage contract.
    function proxyGet() public view returns (uint) {
        return IStorage(i_storageContract).getNum();
    }
}
