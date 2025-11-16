// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


contract enums{
    enum size{small, medium,large}

    size public choice=size.medium;

    function setSmall()public {
        choice=size.small;
    }

    function setMedium()public {
        choice=size.medium;

    }

    function setLarge()public {
        choice=size.large;
    }
}