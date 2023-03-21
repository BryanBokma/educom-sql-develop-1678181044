SELECT COUNT(OrderID) AS NumberofOrders
FROM order_details
GROUP BY OrderID
ORDER BY NumberofOrders DESC;