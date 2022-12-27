pragma solidity ^0.6.0;

contract AdminOnly {
    address private admin;

    constructor() public {
        // Set the contract's admin to the address that deployed the contract
        admin = msg.sender;
    }

    // Declare a modifier that can be used to restrict access to functions
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only the admin can access this function.");
        _;
    }

    function someFunction() public onlyAdmin {
        // Function body goes here
    }

    function anotherFunction() public onlyAdmin {
        // Function body goes here
    }

    // Add more functions with the onlyAdmin modifier as needed
}
