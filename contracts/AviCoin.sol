// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract AviCoin is ERC20, Ownable, ERC20Permit {
  constructor() ERC20("AviCoin", "AVI") ERC20Permit("AviCoin") {
    _mint(msg.sender, 10000 * 10 ** decimals());
  }

  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }

  function decimals() public view virtual override returns (uint8) {
    return 0;
  }
}