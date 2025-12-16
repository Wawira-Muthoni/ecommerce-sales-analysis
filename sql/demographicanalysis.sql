#Top 5 Countries by Revenue
SELECT Country,
       SUM(TotalAmount) AS total_revenue,
	AVG(TotalAmount) AS avg_total_amt
FROM RetailSales
group by country
order by total_revenue desc
limit 5;

#Query 5: Top 5 Countries by Revenue
SELECT 
    Country,
    COUNT(DISTINCT CustomerID) AS unique_customers,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(TotalAmount) AS total_revenue,
    AVG(TotalAmount) AS avg_transaction_value
FROM RetailSales
GROUP BY Country
ORDER BY total_revenue DESC
LIMIT 5;

#Sales trend by country
SELECT Country, SUM(TotalAmount) AS TotalSales
FROM RetailSales
GROUP BY Country
ORDER BY TotalSales DESC;


#Sales Trend Overtime
SELECT InvoiceDate,SUM(TotalAmount) AS DailySales
FROM RetailSales
group by InvoiceDate
order by InvoiceDate;