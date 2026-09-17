-- Create the database
CREATE DATABASE retail_sales;

USE retail_sales;

-- Create the sales table
CREATE TABLE sales (
    invoice_no VARCHAR(20),
    stock_code VARCHAR(20),
    description VARCHAR(255),
    quantity INT,
    invoice_date DATETIME,
    unit_price DECIMAL(10,2),
    customer_id VARCHAR(20),
    country VARCHAR(50),
    revenue DECIMAL(10,2)
);

-- Verify record count after loading cleaned data via Python
SELECT COUNT(*) FROM sales;

-- Preview a sample of loaded rows
SELECT * FROM sales LIMIT 5;