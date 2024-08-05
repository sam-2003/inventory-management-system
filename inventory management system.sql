DROP DATABASE IF EXISTS inventorydatabase;
CREATE DATABASE inventorydatabase;
USE inventorydatabase;
CREATE TABLE Suppliers (
    SupplierID INT AUTO_INCREMENT PRIMARY KEY,
    SupplierName VARCHAR(100),
    ContactInfo VARCHAR(100)
);
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    Price DECIMAL(10, 2),
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE,
    ProductID INT,
    Quantity INT,
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Suppliers (SupplierName, ContactInfo) VALUES ('Tech Supplies Co.', '9876543210');
INSERT INTO Suppliers (SupplierName, ContactInfo) VALUES ('Global Distributors Ltd.', '9753124680');
INSERT INTO Suppliers (SupplierName, ContactInfo) VALUES ('Local Wholesalers Inc.', '8777765432');
INSERT INTO Suppliers (SupplierName, ContactInfo) VALUES ('Eco Materials Corp.', '6548907654');
INSERT INTO Suppliers (SupplierName, ContactInfo) VALUES ('Industrial Parts Group', '9003020890');
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES ('Steel Rods', 500, 12.50, 1);
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES ('Aluminum Sheets', 300, 15.00, 2);
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES ('Copper Wires', 200, 30.00, 3);
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES ('Plastic Tubes', 1000, 5.00, 4);
INSERT INTO Products (ProductName, Quantity, Price, SupplierID) VALUES ('Rubber Gaskets', 700, 2.50, 5);
SELECT * FROM Products;
SELECT * FROM Orders WHERE OrderDate BETWEEN '2023-07-20' AND '2023-07-24';

