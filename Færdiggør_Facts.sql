USE northwindDW
INSERT INTO northwindDW.dbo.SalesFact(
CustomerID,
DateID,
EmployeeID,
ProductID,
Quantity,
SalesAmount)
SELECT
CustomerID,
DateID,
EmployeeID,
ProductID,
Quantity,
SalesAmount
FROM northwindStage.dbo.Fact_sales



USE northwindDW
UPDATE northwindDW.dbo.SalesFact
SET C_ID = (
  SELECT C_ID
  FROM northwindDW.dbo.Customer_Dimension c
  WHERE c.CustomerID = SalesFact.CustomerID)


UPDATE northwindDW.dbo.SalesFact
SET E_ID = (
  SELECT E_ID
  FROM northwindDW.dbo.Employee_Dimension e
  WHERE e.EmployeeID = SalesFact.EmployeeID)

UPDATE northwindDW.dbo.SalesFact
SET P_ID = (
  SELECT P_ID
  FROM northwindDW.dbo.Product_Dimension p
  WHERE p.ProductID = SalesFact.ProductID)

UPDATE northwindDW.dbo.SalesFact
SET D_ID = (
  SELECT D_ID
  FROM northwindDW.dbo.Date_Dimension d
  WHERE d.D_ID = SalesFact.DateID)
