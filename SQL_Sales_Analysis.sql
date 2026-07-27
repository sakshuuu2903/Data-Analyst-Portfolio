-- E-commerce Sales Analysis Project

-- 1. Total Revenue
SELECT 
SUM(Sales) AS Total_Revenue
FROM Sales;


-- 2. Total Profit
SELECT 
SUM(Profit) AS Total_Profit
FROM Sales;


-- 3. Total Orders
SELECT 
COUNT(Order_ID) AS Total_Orders
FROM Sales;


-- 4. Average Sales
SELECT 
AVG(Sales) AS Average_Sales
FROM Sales;


-- 5. Category-wise Sales
SELECT 
Category,
SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 6. Category-wise Profit
SELECT 
Category,
SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 7. Top Selling Products
SELECT 
Product_Name,
SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;


-- 8. Product Ranking using RANK()
SELECT 
Product_Name,
SUM(Sales) AS Total_Sales,
RANK() OVER(ORDER BY SUM(Sales) DESC) AS Sales_Rank
FROM Sales
GROUP BY Product_Name;
