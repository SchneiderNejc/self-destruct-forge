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
}