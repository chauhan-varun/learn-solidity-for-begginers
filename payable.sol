// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Simple Payment Contract
/// @author Varun Chauhan
/// @notice Allows deposits and withdrawals of Ether to/from the contract.

contract Mycontract {
    uint private s_amount;

    /// @notice Deposits Ether into the contract and updates the total amount.
    function deposit() public payable {
        s_amount += msg.value;
    }

    /// @notice Transfers the total stored amount to a recipient address using call.
    /// @param recipient The address to receive the funds.
    function drain(address payable recipient) public {
        uint amount = s_amount;
        s_amount = 0;
        (bool sent, ) = recipient.call{value: amount}("");
        require(sent, "Failed to send Ether");
    }

    /// @notice Returns the current Ether balance of the contract.
    /// @return balance The contract's balance in wei.
    function getBalance() public view returns (uint balance) {
        return address(this).balance;
    }
}
