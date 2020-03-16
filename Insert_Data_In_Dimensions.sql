INSERT INTO northwindDW.dbo.Product_Dimension (
ProductID,
Product_Name,
Category)
SELECT
ProductID,
ProductName,
CategoryID
FROM northwindDB.dbo.Products

INSERT INTO northwindDW.dbo.Customer_Dimension(
CustomerID,
City,
Region,
Country)
SELECT
CustomerID,
City,
Region,
Country
FROM northwindDB.dbo.Customers

INSERT INTO northwindDW.dbo.Employee_Dimension(
EmployeeID,
Title,
First_Name,
Last_Name,
Hire_date)
SELECT
EmployeeID,
Title,
FirstName,
LastName,
HireDate
FROM northwindDB.dbo.Employees


INSERT INTO northwindDW.dbo.Date_Dimension(
CalenderDate,
Month,
Year,
Day)
SELECT
OrderDate,
DATEPART(MONTH, OrderDate),
DATEPART(YEAR, OrderDate),
DATEPART(WEEKDAY, OrderDate)
FROM northwindDB.dbo.Orders
