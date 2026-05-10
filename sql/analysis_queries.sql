-- =========================================
-- Retail Sales Analytics SQL Queries
-- =========================================


-- =========================================
-- 1. Total Sales by Category
-- =========================================

SELECT 
    "Category",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM sales_data
GROUP BY "Category"
ORDER BY total_sales DESC;



-- =========================================
-- 2. Total Profit by Region
-- =========================================

SELECT 
    "Region",
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM sales_data
GROUP BY "Region"
ORDER BY total_profit DESC;



-- =========================================
-- 3. Loss-Making Sub-Categories
-- =========================================

SELECT 
    "Sub-Category",
    ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM sales_data
GROUP BY "Sub-Category"
ORDER BY total_profit ASC;



-- =========================================
-- 4. Top 10 Customers by Sales
-- =========================================

SELECT 
    "Customer Name",
    ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM sales_data
GROUP BY "Customer Name"
ORDER BY total_sales DESC
LIMIT 10;



-- =========================================
-- 5. Average Delivery Time
-- =========================================

SELECT 
    ROUND(AVG("Delivery Time"), 2) AS avg_delivery_days
FROM sales_data;



-- =========================================
-- 6. Monthly Sales Trend
-- =========================================

SELECT 
    DATE_TRUNC('month', "Order Date") AS month,
    ROUND(SUM("Sales")::numeric, 2) AS monthly_sales
FROM sales_data
GROUP BY month
ORDER BY month;