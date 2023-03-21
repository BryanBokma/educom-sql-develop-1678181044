SELECT ROUND(AVG(UnitPrice), 0) AS AveragePrice, SUM(UnitPrice) AS TotalStock, SUM(UnitsOnOrder) AS MaxOrder
FROM products;