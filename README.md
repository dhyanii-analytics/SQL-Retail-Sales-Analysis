# 🛒 TechTrends: Retail Sales SQL Analysis

## 📌 Project Overview
This project simulates a real-world data analysis workflow for a fictional electronics retailer, "TechTrends." The goal was to transform raw sales data into actionable business insights using SQL.

**Key Objectives:**
* **Revenue Analysis:** Determine which product categories drive the most sales.
* **Customer Segmentation:** Identify VIP clients based on spending thresholds.
* **Trend Analysis:** Track sales volume over time (monthly trends).

## 🛠️ Tools & Skills
* **SQL Dialect:** MySQL / PostgreSQL
* **Key Skills:** `JOINS`, `Aggregate Functions`, `CASE Statements`, `Date Extraction`, `Normalization`.

---

## 📸 Project Execution Gallery

### Phase 1: Database Setup
*First, I designed a normalized schema with three tables: Customers, Products, and Sales.*
![Schema Creation](1%20create.png)
![Inserting Mock Data](2%20insert.png)

### Phase 2: The "Master" View (Complex Joins)
*I joined all three tables to create a comprehensive view of every transaction, calculating the total cost dynamically.*
![Master Join Query](15%20master%20join.png)
**Result:**
![Master Join Result](16%20m.png)

### Phase 3: Aggregation & Revenue Analysis
*Here, I grouped sales by customer to calculate the total lifetime value (LTV) of each client.*
![Group By Customer Query](17%20group.png)
**Result:**
![Group By Customer Result](18%20g.png)

### Phase 4: Time-Series Analysis
*I extracted the month from the transaction timestamp to track sales volume trends over time.*
![Monthly Trend Query](23%20month.png)
**Result:**
![Monthly Trend Result](24%20m.png)

### Phase 5: Advanced Business Logic (Customer Segmentation)
*Using `CASE` statements, I automatically labeled customers as "VIP" or "Standard" based on their spending history ($500 threshold).*
![Case Statement Query](25%20case.png)
**Result:**
![Case Statement Result](26%20case.png)

---

## 🚀 Conclusion
This project demonstrates the ability to take raw, scattered data and turn it into clear business metrics. By using advanced SQL techniques like `CASE` logic and multi-table `JOINs`, I was able to identify that **Electronics** are our primary revenue driver and successfully segment our high-value customers.

## 📂 How to Run
1.  Clone this repository.
2.  Open the `tech_trends_analysis.sql` file in any SQL environment.
3.  Run the script to generate the database and view the insights.
