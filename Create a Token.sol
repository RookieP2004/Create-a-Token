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
