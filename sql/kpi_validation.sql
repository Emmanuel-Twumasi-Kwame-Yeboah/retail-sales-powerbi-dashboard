-- KPI Validation Queries
-- Used to confirm Power BI dashboard figures against the MySQL source data
-- Run against the retail_sales database

USE retail_sales;

-- Total Revenue (raw, all records)
SELECT SUM(revenue) AS total_revenue FROM sales;

-- Total Orders (raw, all records)
SELECT COUNT(*) AS total_orders FROM sales;

-- Average Order Value (raw, all records)
SELECT AVG(revenue) AS avg_order_value FROM sales;

-- Total Customers (raw, all records, includes unknown customer IDs)
SELECT COUNT(DISTINCT customer_id) AS total_customers FROM sales;

-- Results (raw MySQL source):
-- total_revenue    = 53057.56
-- total_orders     = 493
-- avg_order_value  = 107.62
-- total_customers  = 468

-- Note: Power BI dashboard excludes 10 records with unknown/unidentified
-- customer IDs, resulting in 483 orders, 467 customers, and correspondingly
-- lower revenue and average order value. See README "Data Cleaning & Validation"
-- section for details.