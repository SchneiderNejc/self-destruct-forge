// SPDX-License-Identifier: MIT
/// @notice use older version since selfdestruct was deprecated in 0.8.18
pragma solidity 0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/**
 *  @title Destruct refunding mechanism
 *  @author Nejc Schneider
 *  @notice In addition to refunding ether, this contract also refunds 
 *          custom ERC20 tokens upon selfdestruct.
 *  @dev There is currently no way to specify which erc20 tokens are
 *       accepted, so contract will receive all.
 *  @dev There is also no conventional way to keep track of different erc20 tokens sent
 *       to contract, so only the one specified in the constructor will be refunded.
 */
contract Destruct {
    address public immutable owner;
    IERC20 public immutable token;
    /// @param _token ERC20 token address that will be refunded upon selfdestruct
    constructor(address _token) {
        owner = msg.sender;
        require(_token != owner, "Cant be owner");
        require(_token != address(0), "Cant be zero");
        token = IERC20(_token);
    }
}