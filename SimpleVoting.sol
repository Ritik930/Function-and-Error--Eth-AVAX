// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVoting {
    address public chair; // Address of the chairperson who deployed the contract
    mapping(address => bool) public hasVoted; // Mapping to track whether each address has voted

    // Events to log important contract actions
    event Voted(address indexed voter);
    event VotesWithdrawn(address indexed by);

    // Constructor to set the chairperson's address
    constructor() {
        chair = msg.sender;
    }

    // Function for voters to cast their vote
    function vote() public {
        require(!hasVoted[msg.sender], "Already voted"); // Ensure the sender hasn't already voted
        hasVoted[msg.sender] = true; // Mark sender as voted
        emit Voted(msg.sender); // Emit event that a vote has been cast
    }

    // Function for the chairperson to withdraw votes (placeholder for actual logic)
    function withdrawVotes() public {
        require(msg.sender == chair, "Only chair can withdraw"); // Only the chairperson can withdraw votes
        // Implement withdrawal logic here (currently placeholder)
        emit VotesWithdrawn(msg.sender); // Emit event that votes have been withdrawn
    }

    // Function demonstrating the assert statement
    function assertExample() public view returns (bool) {
        assert(address(this).balance > 0 || hasVoted[msg.sender]); // Assert condition for contract state
        return true;
    }

    // Function demonstrating the revert statement
    function revertExample() public view {
        if (msg.sender != chair) {
            revert("Unauthorized access"); // Revert with custom error message if not chairperson
        }
    }
}
