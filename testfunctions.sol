// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Functions{

    function add(uint x,uint y) public pure returns(uint){
        return x+y;
    }
    function sub(uint a,uint b) public pure returns(uint){
        return a-b;
    }
    function mul(uint c,uint d) public pure returns(uint){
        return c*d;
    }
    function div(uint e,uint f) public pure returns(uint){
        return e/f;
    } 
}
