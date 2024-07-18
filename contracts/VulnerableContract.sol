// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract VulnerableContract {
    mapping(address => uint256) public balances;

    // 存款函数，允许用户向合约存款
    function deposit() public payable {
        balances[msg.sender] = balances[msg.sender] + msg.value;
    }

    // 提款函数，存在重入攻击漏洞
    function withdraw(uint256 _amount) public {
        console.log(
            "withdraw: ",
            _amount,
            address(this).balance,
            balances[msg.sender]
        );
        require(balances[msg.sender] >= _amount, "Insufficient balance");
        // 发送资金给调用者
        (bool sent, ) = msg.sender.call{value: _amount}("");
        require(sent, "Failed to send Ether");

        // 更新余额
        unchecked {
            balances[msg.sender] -= _amount;
        }
    }

    // 获取合约的余额
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
