pragma solidity ^0.5.8;

contract Test {
    event Call(address caller);
    function callme() public {
        emit Call(msg.sender);
    }
}