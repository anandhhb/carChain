// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

contract carChain {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    struct car {
        address owner;
        string carModel;
        uint modelYear;
        string licenseNumber;
        string carID;
        bool isAvailable;
    }

    struct rent {
        address owner;
        address rentee;
        string carID;
        bool isAvailable;
    }

    mapping (address=>car[]) cars;
    mapping (address=>rent[]) rental;

    function addCar(string memory _model, uint _year, string memory _number, string memory carID) public view{

        car memory newCar;
        newCar.owner = msg.sender;
        newCar.carModel = _model;
        newCar.modelYear = _year;
        newCar.licenseNumber = _number;
        newCar.carID = carID;
        newCar.isAvailable = true;
    
    }

}