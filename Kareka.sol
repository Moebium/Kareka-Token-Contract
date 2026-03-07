// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract KarekaToken is ERC20, Ownable {
    
    constructor() ERC20("Kareka", "KRK") Ownable(msg.sender) {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mintLagi(address ke, uint256 jumlah) public onlyOwner {
        _mint(ke, jumlah);
    }
}
