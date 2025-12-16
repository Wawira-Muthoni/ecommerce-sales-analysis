#Total Revenue and Orders
SELECT 
COUNT(DISTINCT InvoiceNo) AS TotalOrders,
SUM(TotalAmount) AS TotalRevenue,
AVG (TotalAmount) AS AvgTotalRevenue,
SUM(UnitPrice) AS TotalUnitSold
FROM retailsales;

#Revenue by Year
SELECT 
YEAR(InvoiceDate) AS Year,
COUNT(DISTINCT InvoiceNo) AS TotalOrders,
SUM(TotalAmount) TotalRevenue,
SUM(UnitPrice) TotalUnitSold
FROM retailsales
group by YEAR(InvoiceDate)
order by  Year desc;

#Monthly Revenue
SELECT 
DATE_FORMAT(InvoiceDate, '%y-%m') as Month,
COUNT(DISTINCT InvoiceNo) AS TotalOrders,
SUM(TotalAmount) TotalRevenue,
SUM(UnitPrice) TotalUnitSold
FROM retailsales
group by month
order by month;

#Day of Week Analysis (Which days have most sales?)
SELECT 
    DAYNAME(InvoiceDate) as DayOfWeek,
    COUNT(DISTINCT InvoiceNo) as Orders,
    SUM(TotalAmount) as Revenue,
    AVG(TotalAmount) as AvgOrderValue
FROM retailsales
GROUP BY DayOfWeek, DAYOFWEEK(InvoiceDate)
ORDER BY DAYOFWEEK(InvoiceDate) desc;