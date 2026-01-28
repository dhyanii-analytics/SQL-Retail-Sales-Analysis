-- =======================================================
-- PROJECT: TechTrends Sales Analysis
-- AUTHOR: Dhyanii Patel
-- DESCRIPTION:
--    This SQL script simulates a real-world data analysis workflow.
--    It covers:
--    1. Database Creation (DDL)
--    2. Data Insertion (DML)
--    3. Exploratory Data Analysis (EDA)
--    4. Complex Joins & Business Logic
-- =======================================================


-- ==========================================
-- 1. SETUP: Create the Database Structure
-- ==========================================

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    sale_date DATE
);


-- ==========================================
-- 2. DATA: Insert Mock Records
-- ==========================================

-- Insert Customers
INSERT INTO Customers (customer_id, name, city, signup_date) VALUES
(1, 'Alice Smith', 'New York', '2023-01-15'),
(2, 'Bob Jones', 'Los Angeles', '2023-02-10'),
(3, 'Charlie Brown', 'Chicago', '2023-03-05');

-- Insert Products
INSERT INTO Products (product_id, product_name, category, price) VALUES
(101, 'Gaming Laptop', 'Electronics', 1200.00),
(102, 'Wireless Mouse', 'Accessories', 25.50),
(103, 'Mechanical Keyboard', 'Accessories', 80.00),
(104, 'Smartphone', 'Electronics', 800.00);

-- Insert Sales (Transactions)
INSERT INTO Sales (sale_id, customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 101, 1, '2023-06-01'),  -- Alice bought 1 Laptop
(2, 2, 102, 2, '2023-06-02'),  -- Bob bought 2 Mice
(3, 1, 103, 1, '2023-06-05'),  -- Alice bought 1 Keyboard
(4, 3, 101, 1, '2023-06-10');  -- Charlie bought 1 Laptop


-- ==========================================
-- 3. EXPLORATION: Basic Views
-- ==========================================

-- View all customers
SELECT * FROM Customers;

-- Find "High Ticket" items