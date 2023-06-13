 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "eth_contracts/tafit_coin/contracts/token/ERC20/ERC20.sol";
import "eth_contracts/tafit_coin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "eth_contracts/tafit_coin/contracts/security/Pausable.sol";
import "eth_contracts/tafit_coin/contracts/access/Ownable.sol";

contract tacoin is ERC20, ERC20Burnable, Pausable, Ownable {
    constructor() ERC20("tacoin", "TTSC") {}

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}