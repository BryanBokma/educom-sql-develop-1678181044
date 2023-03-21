SELECT ShipPostalCode, OrderID, OrderDate, RequiredDate, ShippedDate, ShipAddress
FROM orders
WHERE ShipPostalCode LIKE '98124%';