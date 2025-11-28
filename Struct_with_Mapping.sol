// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ProuctInventory{
    //Struct with mapping
    struct Product{
        string name;
        uint price;
        uint quantity;
        bool isAvailable;
    }
    //Mapping from product id to product
    mapping (uint =>Product)public products;
    uint public productCount;
     
    function addProduct(string memory _name,uint _price,uint _quantity)public {
        productCount++;
        products[productCount]=Product(_name,_price,_quantity,true);
    }
    function getProduct(uint _productId)public view returns(string memory,uint,bool){
        require(_productId<=productCount,"product doesn't exist");

        Product memory product=products[_productId];
        return (product.name,product.price,product.isAvailable);
    }
}