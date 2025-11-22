// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


struct Product{
    uint256 id;
    string name;
    uint256 price;
    address seller;
    bool isAvailable;

}
   

   contract Marketplace{
    Product[]public products;
    mapping (uint256=>Product)public productById;


    enum OrderStatus{
        Pending,
        Confirmed,
        Shipped,
        Delivered,
        Cancelled
    }

   struct Order{
    uint256 id;
    address buyer;
    uint256 productId;
    OrderStatus status;
    uint256 timestamp;
   }

   mapping (uint256=>Order)public orders;

   function createOrder(uint256 productId) public{
    uint256 orderId=block.timestamp;

    orders[orderId]=Order({
        id:orderId,
        buyer:msg.sender,
        productId:productId,
        status:OrderStatus.Pending,
        timestamp:block.timestamp
    });
   }

   function updateOrderStatus(uint256 orderId,OrderStatus newStatus)public {
    require(orders[orderId].buyer==msg.sender,"This is not order");

    OrderStatus currentStatus=orders[orderId].status;
    require(isValidTransition(currentStatus,newStatus),"Invalid Transition");

    orders[orderId].status=newStatus;

   }

   function isValidTransition(OrderStatus from,OrderStatus to)public pure returns(bool){
    if(from==OrderStatus.Pending)return to==OrderStatus.Confirmed||to==OrderStatus.Cancelled;
    if(from==OrderStatus.Confirmed)return to==OrderStatus.Shipped||to==OrderStatus.Cancelled;
    if(from==OrderStatus.Shipped)return to==OrderStatus.Delivered;


    return false;


   }

    function addProduct(string memory name,uint256 price)public returns(uint256){
        uint256 productId=products.length; 


        
        Product memory newProduct=Product({
            id:productId,
            name:name,
            price:price,
            seller:msg.sender,
            isAvailable:true
        });

 
        products.push(newProduct);
        productById[productId]=newProduct;

        return productId;

     }

       function updateProduct(uint256 productId,string memory newName)public{
        Product storage product =productById[productId];
        product.name=newName;

        Product memory tempProduct=productById[productId];
        tempProduct.name="I am nothing";
       }


   }