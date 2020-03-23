USE northwindStage
CREATE TABLE Fact_sales (
 C_ID INT NULL,
 E_ID INT NULL,
 P_ID INT NULL,
 D_ID INT NULL,
 CustomerID NCHAR(5) NULL,
 DateID DATE NULL,
 EmployeeID INT NULL,
 ProductID INT NULL,
 Quantity int,
 SalesAmount decimal (18,2)
);


USE northwindDB
GO
INSERT INTO northwindStage.dbo.Fact_sales (
SalesAmount,
Quantity,
ProductID,
CustomerID,
EmployeeID,
DateID)
SELECT
Quantity,
[Order Details].UnitPrice * Quantity,
Products.ProductID,
Customers.CustomerID,
Employees.EmployeeID,
Orders.OrderDate
FROM [Order Details]
JOIN Orders ON Orders.OrderID = [Order Details].OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN Products ON Products.ProductID = [Order Details].ProductID
