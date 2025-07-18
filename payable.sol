// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Simple Payment Contract
/// @author Varun Chauhan
/// @notice Allows deposits and withdrawals of Ether to/from the contract.
contract Mycontract {

    uint public amount;

    /// @notice Deposits Ether into the contract and updates the total amount.
    function deposite() public payable {
        amount += msg.value;
    }

    /// @notice Transfers the total stored amount to a recipient address.
    /// @param recipient The address to receive the funds.
    function drain(address payable recipient) public {
        payable(recipient).transfer(amount);
        amount = 0; // Reset amount after transfer
    }

    /// @notice Returns the current Ether balance of the contract.
    /// @return The contract's balance in wei.
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
