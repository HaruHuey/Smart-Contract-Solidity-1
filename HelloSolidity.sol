pragma solidity ^0.5.8;

import "./test.sol";

contract Haru {
    string test;
}

contract DelegateTes {
    address test;
    
    function setTest(address _test) public{
        test = _test;
    }

    function callTest() public {
        Test(test).callme();
    }
    // FIXME: 나중에 손보기 ~~
    function DelegateCallTest() public {
        test.delegatecall(bytes4(keccak256("callme()")));
    }
}