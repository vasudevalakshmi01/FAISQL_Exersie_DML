USE Pratap_ShoppingDB;

CREATE TABLE Customer
(
	CustomerID INT,
	CustomerName VARCHAR(10),
	Email VARCHAR(20),
	Age INT,
	Phone VARCHAR(20)
)

--1.Insert Record in Customer Table
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(1,'Peter','Peter@gmail.com',28,'234-364-2879');

--2.Insert Multiple Records in Customer Table
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(2,'James','James@gmail.com',25,'346-238-2737');
INSERT INTO Customer(CustomerID,CustomerName,Email,Age,Phone)
VALUES(3,'Steve','Steve@gmail.com',30,'384-238-1278');

--3.Update Age and Email for CustomerID 2
UPDATE Customer
SET Age = 28, Email = 'James@hotmail.com'
WHERE CustomerID = 2

--4.Delete Record whose CustomerID is 3
DELETE FROM Customer
WHERE CustomerID = 3

--5.Delete Records from Customer and cannot be rolled back
BEGIN TRAN T1
	DELETE FROM Customer
	COMMIT TRAN T1



