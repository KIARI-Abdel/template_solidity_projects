///SPDX-License-Identifier: Unlicense
pragma solidity 0.8.9;

//import "hardhat/console.sol";

/// @title An example Greeter contract
/// @notice This contract is only for simulation purposes
/// @dev All function calls are currently implemented without side effects
/// @custom:experimental This is an experimental contract.
contract Greeter {
    string private message;
    string private place;

    /// @notice Accept message and place parameters
    /// @param  _message message
    /// @param  _place place
    constructor(string memory _message, string memory _place) {
        //console.log("Deploying a Greeter with greeting:", _message);
        message = _message;
        place = _place;
    }

    /// @notice Returns a greeting phrase
    /// @return Greeting string
    function greet() external view returns (string memory) {
        return message;
    }

    /// @notice Returns a greeting phrase
    /// @return Greeting string
    function meet() external view returns (string memory) {
        return place;
    }

    function getGreet() external view returns (string memory) {
        return message;
    }

    function getMeet() external view returns (string memory) {
        return place;
    }

    /// @notice Sets a greeting phrase
    /// @dev Contains a console log output
    /// @param _message The greeting phrase
    function setGreetingMeet(string memory _message, string memory _place) external {
        //console.log("Changing greeting from '%s' to '%s'", message, _message);
        message = _message;
        place = _place;
    }
}
