SELECT CONCAT(ProductName, ' weighs/is ', QuantityPerUnit, ' and cost ', ROUND(UnitPrice,0)) AS ProductInfo
FROM Products;