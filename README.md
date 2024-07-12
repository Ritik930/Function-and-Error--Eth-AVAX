# Function-and-Error--Eth-AVAX
# Simple Voting Smart Contract

This Solidity smart contract implements a simple voting system on the Ethereum blockchain. It allows voters to cast their votes and ensures only the chairperson (deployer) can withdraw votes. This README provides an overview of the contract and instructions for deploying and interacting with it.

## Contract Details

- **SPDX-License-Identifier: UNLICENSED 
- **Solidity Version**: ^0.8.0

### State Variables

- **chair**: Address of the chairperson who deploys the contract.
- **hasVoted**: Mapping to track whether each address has already voted.

### Events

- **Voted**: Logged when a voter casts their vote.
- **VotesWithdrawn**: Logged when the chairperson withdraws votes.

### Functions

- **constructor()**: Sets the `chair` to the address of the contract deployer.
- **vote()**: Allows an address to cast their vote. Throws an error if the address has already voted.
- **withdrawVotes()**: Allows the chairperson to withdraw votes. Placeholder for withdrawal logic.
- **assertExample()**: Demonstrates the use of the `assert` statement to validate contract state.
- **revertExample()**: Demonstrates the use of the `revert` statement with a custom error message.

## Getting Started

### Prerequisites

- Access to an Ethereum development environment (e.g., Remix IDE).

### Deploying the Contract

1. **Compile the Contract**:
   - Copy the contract code into your Solidity IDE (e.g., Remix).
   - Ensure the Solidity compiler version is set to ^0.8.0.
   - Compile the contract.

2. **Deploy the Contract**:
   - Go to the "Deploy & Run Transactions" tab.
   - Click on the "Deploy" button to deploy the contract.

### Interacting with the Contract

1. **Voting**:
   - After deployment, call the `vote()` function to cast a vote. Ensure you haven't voted before.

2. **Withdrawing Votes**:
   - Only the chairperson can withdraw votes. Implement withdrawal logic in `withdrawVotes()`.

3. **Assert and Revert Examples**:
   - Use `assertExample()` to validate contract conditions.
   - Use `revertExample()` to handle unauthorized access attempts.

## Authors

Ritik kumar (https://www.linkedin.com/in/ritik-kumar-8376ba225/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

