use [DA P#1]

CREATE VIEW vw_SalesSummary as
select Customers.Name, Products.ProductName, Products.Category, (Sales.Quantity * Products.UnitPrice) * (1 - Sales.Discount) AS TotalAmount , Sales.SaleDate
from Sales
INNER JOIN Customers ON Sales.CustomerID = Customers.CustomerID
INNER JOIN Products ON Sales.ProductID = Products.ProductID

select * from vw_SalesSummary


CREATE VIEW vw_RecentSales AS
SELECT * FROM Sales
WHERE Discount > 0 AND SaleDate >= DATEADD(day, -30, GETDATE())

select * from vw_RecentSales
select * from vw_SalesSummary




