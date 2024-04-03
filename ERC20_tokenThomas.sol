// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ThomasToken is ERC20 {
    address public owner;

    constructor() ERC20("Thomas Token", "TT") {
        owner = msg.sender;
        _mint(msg.sender, 1000 * 10 ** uint(decimals())); // Mint 1000 tokens to the contract deployer
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, allowance(sender, msg.sender) - amount); // Decrease allowance

        return true;
    }
}