-- Create database and tables
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Warehouses (
    ID INT,
    Name VARCHAR(50),
    Country VARCHAR(50), 
	City VARCHAR(50),
    Street VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE Products(
	ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT,
    ProductID INT,
    WarehouseAmount INT,
    WarehouseID INT,
	FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Warehouses (ID,Name,Country,City,Street)
	VALUES (1,'Warehouse-1','Country1','City-1','Street-1');
INSERT INTO Warehouses (ID,Name,Country,City,Street)
	VALUES (2,'Warehouse-2','Country2','City-2','Street-2');

INSERT INTO Products(ID,Name)
	VALUES (1, 'AwersomeProduct');
    
INSERT INTO ProductInventory (ID, ProductID, WarehouseAmount, WarehouseID)
	VALUES (1, 1, 2, 1);
INSERT INTO ProductInventory (ID, ProductID, WarehouseAmount, WarehouseID)
	VALUES (2, 1, 5, 2);
