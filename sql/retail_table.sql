CREATE DATABASE RetailDB;
USE RetailDB;


CREATE TABLE RetailSales (
    InvoiceNo INT,
    StockCode VARCHAR(50),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate VARCHAR(20), 
    UnitPrice DECIMAL(10,2),
    TotalAmount DECIMAL(10,2),
    CustomerID INT,
    Country VARCHAR(100));
    
SELECT 
    STR_TO_DATE(InvoiceDate, '%d-%m-%y') AS CleanDate
FROM RetailSales;

SELECT COUNT(*) as NullDates
FROM RetailSales
WHERE InvoiceDate IS NULL;

SELECT *
FROM RetailSales
WHERE CustomerID IS NULL 
   OR Country IS NULL 
   OR InvoiceDate IS NULL
;










