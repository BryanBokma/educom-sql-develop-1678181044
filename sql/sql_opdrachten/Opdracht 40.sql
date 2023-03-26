CREATE VIEW CustomerDetails AS
SELECT a.CompanyName, a.ContactName, a.ContactTitle, a.Address, a.City, a.Country, a.Phone, b.CustomerID, b.OrderDate, b.RequiredDate, b.ShippedDate
FROM customers AS a, orders AS b
WHERE b.CustomerID = a.CustomerID;