pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Vote.sol";

contract TestVote {
 // The address of the vote contract to be tested
 Vote vote = Vote(DeployedAddresses.Vote());

 // The id of the pet that will be used for testing
 uint expectedPetId = 1;

 //The expected owner of adopted pet is this contract
 address expectedAdopter = address(this);

}
