Insert into [northwindDW].[dbo].[SalesFact] 
(      [P_ID]
      ,[C_ID]
      ,[E_ID]
      ,[D_ID]
      ,[Quantity]
      ,[SalesAmount])
      select p.[P_ID]
      ,c.[C_ID]
      ,e.[E_ID]
      ,od.[D_ID]
      ,f.[SalesAmount]
      ,f.[Quantity]

      from [northwindStage].[dbo].[Fact_sales] f 
      left join [northwindDW].[dbo].[Product_Dimension] as p
      on p.ProductId = f.ProductID
      left join  [dbo].[Customer_Dimension] as c
      on c.CustomerId=f.CustomerId
      left join [dbo].[Employee_Dimension] as e
      on e.EmployeeId=f.EmployeeId
      left join [dbo].[Date_Dimension] as od
      on od.DateID = f.DateID
