SELECT CustomerID, SUM(Freight)
FROM orders
GROUP BY CustomerID
HAVING SUM(Freight) >200;
