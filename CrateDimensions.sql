CREATE TABLE Customer_Dimension (
 C_ID INT IDENTITY (1,1),
 CustomerID NCHAR(5),
 City NVARCHAR(25),
 Region NVARCHAR(25),
 Country NVARCHAR(25),
 Customer_Name NVARCHAR(25)
);


CREATE TABLE Date_Dimension (
 D_ID INT IDENTITY (1,1),
 DateID DATE,
 Year INT,
 Month INT,
 Day INT
);


CREATE TABLE Employee_Dimension (
 E_ID INT IDENTITY (1,1),
 EmployeeID INT,
 Title NVARCHAR(25),
 Full_Name NVARCHAR(50),
 Hire_date DATE
);


CREATE TABLE Product_Dimension (
 P_ID INT IDENTITY (1,1),
 ProductID INT,
 Product_Name NVARCHAR(40),
 Category NVARCHAR(25),
);

drop table Product_Dimension
