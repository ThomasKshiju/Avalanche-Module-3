# ThomasToken

The ThomasToken contract represents an ERC-20 compliant token on the Ethereum blockchain. This token contract allows the owner to mint new tokens, burn tokens, and transfer tokens between addresses. Below is the documentation to help you understand, deploy, and interact with the ThomasToken.

## Description

The ThomasToken contract is developed in Solidity, a programming language for creating smart contracts on the Ethereum blockchain. This ERC-20 token has features such as minting, burning, and transferring, making it suitable for various decentralized applications.

## Getting Started

### Executing Program

To interact with the ThomasToken contract, follow these steps:

1. **Deployment**: Deploy the ThomasToken contract on the Ethereum blockchain using a platform like Remix, an online Solidity IDE, or any Ethereum development environment of your choice.

2. **Interacting with the Contract**: Once deployed, you can interact with the ThomasToken contract using Ethereum wallets or other smart contract interaction tools. Ensure that you have the necessary permissions to perform minting and burning operations as specified in the contract.

## Functions

- `mint(address account, uint256 amount)`: Call this function to create new tokens. Only the owner can perform this action.
- `burn(uint256 amount)`: Call this function to destroy tokens. Any user can perform this action.
- `transferFrom(address sender, address recipient, uint256 amount)`: Call this function to transfer tokens between addresses. Ensure proper allowance is set.

## Authors

Thomas K Shiju

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
