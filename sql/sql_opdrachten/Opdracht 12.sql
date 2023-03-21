SELECT EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
FROM orders
WHERE ShippedDate>RequiredDate;