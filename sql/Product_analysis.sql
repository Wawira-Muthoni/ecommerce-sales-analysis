#Top 10 Best-Selling Products by Revenue
SELECT 
Description AS ProductName,
COUNT(DISTINCT InvoiceNo) AS TimesOrdered,
SUM(TotalAmount) AS TotalRevenue,
SUM(Quantity) AS TotalQuantitySold,
ROUND(AVG(UnitPrice), 2) AS AvgPrice
FROM retailsales
GROUP BY ProductName
ORDER BY TotalRevenue
limit 10;

#Top 5 Best-Selling Products by Quantity Sold
SELECT 
    Description as ProductName,
    SUM(Quantity) as TotalQuantitySold,
    SUM(TotalAmount) as TotalRevenue,
    ROUND(AVG(UnitPrice), 2) as AvgPrice
FROM retailsales
GROUP BY Description
ORDER BY TotalQuantitySold DESC
LIMIT 10;

#Products with Highest Average Order Value
SELECT 
Description as ProductName,
COUNT(DISTINCT InvoiceNo) as NumberOfOrders,
SUM(TotalAmount) AS TotalRevenue,
Round(AVG(TotalAmount),2) AS AvgOrderValue
FROM retailsales
group by ProductName
HAVING NumberOfOrders >=5
Order By AvgOrderValue desc
limit 10;

#Price Range Analysis (Which price points sell best?)
SELECT 
CASE
WHEN UnitPrice < 1 THEN 'Under $1'
WHEN UnitPrice BETWEEN 1 AND 2.99 THEN '$1 - $2.99'
WHEN UnitPrice BETWEEN 3 AND 4.99 THEN '$3 - $4.99'
WHEN UnitPrice BETWEEN 5 AND 7.99 THEN '$5 - $7.99'
ELSE '$8+'
END AS PriceRange,
COUNT(DISTINCT InvoiceNo) AS Orders,
SUM(TotalAmount) AS Revenue,
SUM(Quantity) AS UnitsSold
FROM retailsales
GROUP BY PriceRange
ORDER BY Revenue DESC ;