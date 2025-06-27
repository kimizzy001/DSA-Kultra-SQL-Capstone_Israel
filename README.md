# DSA-capstone-kultra-sql-analysis
SQL-based capstone project for DSA, focused on sales and customer insights using Kultra Mega Stores data.

## Kultra Mega Stores Inventory SQL Analysis

This repository contains SQL-based business analysis for **Kultra Mega Stores**, focused on understanding sales performance, customer value, shipping efficiency, and profitability across multiple years (2009–2012).

The data was analyzed using **MySQL**, and includes over a dozen business-driven questions with actionable insights.

---

## Files

- [kms_sales.sql](https://github.com/kimizzy001/kultra-sql-analysis/blob/main/kms_sales.sql): Contains all SQL queries used for analysis, including business questions, insights, and commentary.


---

## Business Questions Solved

 1. Which product category had the highest sales?
 2. What are the Top 3 and Bottom 3 regions in terms of sales?
 3. What were the total sales of appliances in Ontario?
 4. What can KMS do to increase revenue from the bottom 10 customers?
 5. Which shipping method incurred the most cost?
 6. Who are the most valuable customers, and what do they purchase?
 7. Which small business customer had the highest sales?
 8. Which Corporate customer placed the most number of orders (2009–2012)?
 9. Which consumer customer was the most profitable?
 10. Which customer returned items, and what segment do they belong to?
 11. Based on order priority, was shipping method used appropriately?

---

## Sample Insights

  - **Technology** was the highest-grossing product category.
  - Top sales regions: **West**, **Ontario**, and **Prairie**.
  - **Delivery Truck** incurred the most shipping cost but was appropriately used for low-priority orders.
  - The most valuable customer: **Emily Phan** (Consumer segment).
  - Several customers showed negative profit, indicating item returns or refund cases.

---
## Recommendations

- **Target Underperforming Regions:** Focus sales strategies on the bottom 3 regions — Nunavut, Northwest Territories, and Yukon — through localized promotions and regional incentives.
- **Customer Retention:** Engage bottom 10 customers by offering loyalty discounts or personalized packages to increase repeat orders.
- **Optimize Shipping Costs:** Since Delivery Truck is the most used and cost-effective shipping method, continue prioritizing it for low-priority orders. Limit Express Air to only high-priority deliveries.
- **Pay Attention to Returns:** Customers with negative profit may indicate returned or refunded products. Investigate causes to reduce future losses.
- **Product Strategy:** Technology products are the top-performing category — consider expanding this category or bundling it with lower-performing products.
---
## Tools Used

  - **MySQL** – for running and analyzing SQL queries
  - **VS Code / MySQL Workbench** – SQL development environment
  - **Excel** – for validating or importing raw datasets
  - **GitHub** – for version control and sharing the project

---

## How to Use

  1. Open the [`kms_sales.sql`](https://github.com/kimizzy001/kultra-sql-analysis/blob/main/kms_sales.sql) file in your SQL editor (e.g., MySQL Workbench, DBeaver, or VS Code).
  2. Connect to your database and ensure the `kms_sales` table has been imported (from your local CSV or another source).
  3. Copy and run each query to explore business questions and generate insights.
  4. Modify or extend the queries to fit your specific data use cases.


---

>  Want to contribute? Fork the repo and add your own analytical insights or visualizations.

---
