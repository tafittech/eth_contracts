// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.9 <0.8.20;


contract tafitLottery{
 //entities - manager, players and winner
 address private  manager;
 address payable[] public players;
 address payable  public winner;

    constructor(){
        manager==msg.sender;
    }  

    function toPlay() public payable{
        require(msg.value==0.001 ether, "Please pay .001 ether to play ");
        players.push(payable(msg.sender));
    }

    function getBalance()public view returns(uint){
        require(manager==msg.sender, "You are not the manager");
        return address(this).balance;
    }
    function random()internal view returns(uint){

        return uint(keccak256(abi.encodePacked(block.timestamp,block.prevrandao,players.length)));

    }
}