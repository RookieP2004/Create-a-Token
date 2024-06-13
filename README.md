# MyToken Contract

## Simple Overview

The MyToken contract is a basic implementation of a cryptocurrency token on the Ethereum blockchain. It allows for the creation (minting) and destruction (burning) of tokens and includes functionality to track balances associated with different addresses.

## Description

The MyToken contract is designed to provide a simple and efficient way to manage tokens on the Ethereum blockchain. It includes functionalities to mint new tokens, increasing the total supply and the balance of the specified address, and to burn tokens, reducing the total supply and the balance of the specified address. The contract keeps track of the balances of each address through a mapping and ensures that tokens cannot be burned from an address unless it has sufficient balance.

## Getting Started

### Installing

To get started with the MyToken contract, you will need to have a Solidity development environment set up. You can use tools like Remix IDE, Truffle, or Hardhat.

## Executing Program

### How to run the program

Open your Solidity development environment (e.g., Remix IDE).
Create a new file and name it MyToken.sol.
Copy and paste the following code into the file:
solidity

### Code
```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables here
    string public name = "META1";
    string public symbol = "MTA1";
    uint256 public totalSupply = 0;

    // Mapping variable here
    mapping(address => uint256) public balances;

    // mint Function
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn Function
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        } 
    }
}

```
Compile the contract to check for any syntax errors.
Deploy the contract to a local or test Ethereum network.
Step-by-step bullets
Open Remix IDE or your preferred Solidity development environment.
Create a new file named MyToken.sol.
Copy and paste the provided contract code into the file.
Ensure the Solidity compiler is set to version 0.8.18.
Compile the contract.
Deploy the contract using the deploy button in Remix or your development environment's deployment tool.

## Authors

Sujal Chandel

@RookieP2004
