pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TeztCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TeztCoin(address _owner)  UpgradeableToken(_owner) {
    name = "TeztCoin";
    symbol = "TZC";
    totalSupply = 1000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}