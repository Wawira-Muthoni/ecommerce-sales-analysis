#Top 10 Customers by Total Spending
SELECT 
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    SUM(TotalAmount) AS total_spent,
    AVG(TotalAmount) AS avg_order_value
FROM RetailSales
GROUP BY CustomerID
ORDER BY total_spent DESC
limit 10;

#Customer Purchase Behavior
SELECT 
CustomerID,
COUNT(DISTINCT InvoiceNo) AS NumberOfPurchases,
SUM(TotalAmount) AS TotalSpent,
SUM(Quantity) AS TotalItemsPurchased,
MIN(InvoiceDate) AS FirstPurchase,
MAX(InvoiceDate) AS LastPurchase,
datediff(MAX(InvoiceDate), MIN(InvoiceDate)) as CustomerLifeSpanDays
FROM retailsales
group by CustomerID
order by TotalSpent DESC;
