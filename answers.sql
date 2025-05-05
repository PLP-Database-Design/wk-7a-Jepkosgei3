DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS ProductDetail;


CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);


INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES
(201, 'Alice Brown', 'Smartwatch'),
(201, 'Alice Brown', 'Charger'),
(202, 'Bob White', 'Laptop'),
(202, 'Bob White', 'Mouse'),
(203, 'Catherine Green', 'Headphones'),
(204, 'David Blue', 'Smartphone');


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES
(201, 'Alice Brown'),
(202, 'Bob White'),
(203, 'Catherine Green'),
(204, 'David Blue');


CREATE TABLE Product (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Product (OrderID, Product, Quantity)
VALUES
(201, 'Smartwatch', 1),
(201, 'Charger', 2),
(202, 'Laptop', 1),
(202, 'Mouse', 3),
(203, 'Headphones', 2),
(203, 'Keyboard', 1),
(204, 'Smartphone', 1);
