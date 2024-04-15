// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import { Denominations } from "./Denominations.sol";
import { DenominationsLinked } from "./DenominationsLinked.sol";

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function isNativeToken(address token) external pure returns (bool) {
        return Denominations.isNativeToken(token);
    }

    function isNativeTokenLinked(address token) external pure returns (bool) {
        return DenominationsLinked.isNativeToken(token);
    }
}
