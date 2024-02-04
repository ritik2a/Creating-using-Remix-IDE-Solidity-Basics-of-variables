// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract functionChallenge{
    
    function addUp(string memory yes) external payable{
        yes = "Hello";
    }

    function seeLast() external view returns(uint){
        return address(this).balance;
    }

    uint256 public x = 5;
    function setToView (uint256 z) public view returns (uint256) {
        return x + z;
    }

    function setGet (uint256 m, uint256 a) public pure returns (uint256) {
        return m + a;
    }
    
}
