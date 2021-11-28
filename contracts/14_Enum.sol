// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract Enum {
    // Enum representing shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Canceled
    }

    // Default value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;

    // Returns uint
    // Pending  - 0
    // Shipped  - 1
    // Accepted - 2
    // Rejected - 3
    // Canceled - 4
    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    // You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    // delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }
}

// Declaring and importnig Enum

// This is saved 'EnumDeclaration.sol'
enum Status1 {
    Pending,
    Shipped,
    Accepted,
    Rejected,
    Canceled
}

// File that imports the enum above
// import "./EnumDeclaration.sol";

contract Enum1 {
    Status1 public status;
}