-- The SELECT DISTINCT statement is used to return only distinct (different) values
-- dus als er meerdere dezelfde values bestaan in de column dan pakt die die niet

-- SELECT DISTINCT Syntax 
SELECT DISTINCT CustomerName, PostalCode FROM Customers;

-- SELECT example without DISTINCT 
SELECT Country FROM Customers;

-- SELECT DISTINCT examples (21 records)
SELECT DISTINCT Country FROM Customers;

-- Hierbij geeft die alleen het aantal landen weer (21)
SELECT COUNT(DISTINCT Country) FROM Customers;

-- hetzelfde resultaat als bovenstaande (SELECT COUNT(DISTINCT Country) FROM Customers;)
SELECT COUNT(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers);

-- Exercise
SELECT DISTINCT Country FROM Customers;