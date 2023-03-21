SELECT ContactName, Address, City
FROM customers
WHERE NOT Country='Germany' AND NOT Country='Mexico' AND NOT Country='Spain';