CREATE DATABASE Decode_labs_Internship;

use Decode_labs_Internship;

select * from task_3_decodelabs;

-- Week 3: E-commerce Sales Analysis

-- 1. Overall order and sales summary

SELECT COUNT(*) AS Total_Orders,
SUM(TotalPrice) AS Total_Sales,
AVG(TotalPrice) AS Average_Order_Value
FROM task_3_decodelabs;

-- 2. Sales by product

SELECT Product,
COUNT(*) AS Number_Of_Orders,
SUM(TotalPrice) AS Total_Sales
FROM task_3_decodelabs
GROUP BY Product
ORDER BY Total_Sales DESC

-- 3. Orders by status

SELECT OrderStatus,
COUNT(*) AS Number_Of_Orders
FROM task_3_decodelabs
GROUP BY OrderStatus
ORDER BY Number_Of_Orders DESC;

-- 4. Average order value by payment method

SELECT PaymentMethod,
COUNT(*) AS Number_Of_Orders,
AVG(TotalPrice) AS Average_Order_Value
FROM task_3_decodelabs
GROUP BY PaymentMethod
ORDER BY Average_Order_Value DESC;

-- 5. Ten highest-value orders above 3000

SELECT ï»¿OrderID, Product, TotalPrice
FROM task_3_decodelabs
WHERE TotalPrice > 3000
ORDER BY TotalPrice DESC
LIMIT 10

-- 6. Monthly sales

SELECT YEAR(Date) AS Sales_Year,
MONTH(Date) AS Sales_Month,
SUM(TotalPrice) AS Monthly_Sales
FROM task_3_decodelabs
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Sales_Year, Sales_Month;

-- 7. Sales by referral source

SELECT ReferralSource,
COUNT(*) AS Number_Of_Orders,
SUM(TotalPrice) AS Total_Sales
FROM task_3_decodelabs
GROUP BY ReferralSource
ORDER BY Total_Sales DESC;