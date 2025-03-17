// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Paypal {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    struct request {
        address requestor;
        uint256 amount;
        string messsage;
        string name;
    }

    struct sendReceive {
        string action;
        uint256 amount;
        string messsage;
        address otherPartyAddress;
        string otherPartyName;
    }

    struct userName {
        string name;
        bool hasName;
    }

    mapping (address => userName) names;
    mapping (address => request[]) requests;
    mapping (address => sendReceive[]) history;

    function addName(string memory _name) public {
        userName storage newUserName = names[msg.sender];
        newUserName.name = _name;
        newUserName.hasName = true;
    }

    function createRequest(address user, uint256 _amount, string memory _message) public {
        request memory newRequest;
        newRequest.requestor = msg.sender;
        newRequest.amount = _amount;
        newRequest.messsage = _message;

        if (names[msg.sender].hasName) {
            newRequest.name = names[msg.sender].name;
        }

        requests[user].push(newRequest);
    }

    function payRequest(uint256 _request) public payable {
        require(_request < requests[msg.sender].length, "No Such Request");
        request[] storage myRequests = requests[msg.sender];
        request storage payableRequest = myRequests[_request];

        uint256 toPay = payableRequest.amount * 1000000000000000000;
        require(msg.value == (toPay), "Pay Correct Amount");

        myRequests[_request] = myRequests[myRequests.length - 1];
        myRequests.pop();
    }

    function addHistory(address sender, address receiver, uint256 _amount, string memory _message) private {
        sendReceive memory newSend;
        newSend.action = "-";
        newSend.amount = _amount;
        newSend.messsage = _message;
        newSend.otherPartyAddress = receiver;
        if (names[receiver].hasName) {
            newSend.otherPartyName = names[receiver].name;
        }

        history[sender].push(newSend);
    }
}
