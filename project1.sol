// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract project{
     
    uint n1;
    int n2;
    bool n3;
    address n4;

function setNumber1(uint _n1) public {
    n1 =  _n1;
}

function getNumber1() public view returns(uint){
    return n1;
}

function setNumber2(int _n2) public {
    n2 =  _n2;
}

function getNumber2() public view returns(int){
    return n2;
}
function setNumber3(bool _n3) public {
    n3 =  _n3;
}

function getNumber3() public view returns(bool){
    return n3;
}
function setNumber4(address _n4) public {
    n4 =  _n4;
}

function getNumber4() public view returns(address){
    return n4;
}

}
