Create DATABASE ecommerce;

Create table Customer (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL ,
adress VARCHAR(255) NOT NULL );



Create Table `Order` (
  id  INT PRIMARY KEY AUTO_INCREMENT,
date DATE NOT NULL,
status VARCHAR(50) NOT NULL,
customer_id INT,
FOREIGN KEY(customer_id) REFERENCES Customer(id)

 );

CREATE TABLE `items`(
    id INT PRIMARY KEY AUTO_INCREMENT,
 shippingWeight FLOAT NOT NULL,
    description  VARCHAR(255) NOT NULL
);
    

    CREATE TABLE OrderDetails(
    id INT PRIMARY KEY AUTO_INCREMENT,
    quality INT NOT NULL,
    taxStatus VARCHAR(255) NOT NULL,
    items_id INT,
    Order_id INT,
    
    FOREIGN KEY (items_id)REFERENCES items(id),
    FOREIGN KEY (Order_id) REFERENCES `Order`(id)

);

CREATE table payement(
    id INT PRIMARY KEY AUTO_INCREMENT,
    amount FLOAT NOT NULL,
    orderId INT,
     paymentType VARCHAR(50) NOT NULL,
    FOREIGN KEY (orderId) REFERENCES `Order`(id)
    );

    CREATE TABLE Cash (
    PaymentID INT PRIMARY KEY,
    cashTendered FLOAT NOT NULL,
    FOREIGN KEY (PaymentID) REFERENCES payement(id)
);

CREATE TABLE CheckPayment (
    PaymentID INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bankID VARCHAR(50) NOT NULL,
    FOREIGN KEY (PaymentID) REFERENCES payement(id)
);

CREATE TABLE Credit (
    PaymentID INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(50) NOT NULL,
    expDate DATE NOT NULL,
    FOREIGN KEY (PaymentID) REFERENCES payement(id)
);