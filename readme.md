# Sales Performance Analytics (SQL + Power BI)

A comprehensive sales analytics project that uses SQL to prepare and extract insights from sales data, and Power BI to visualize key performance indicators through an interactive dashboard.

This project demonstrates end-to-end data analysis — from querying and aggregating sales data with SQL, to building a professional dashboard for business intelligence.

---

## 📊 Project Objective

The goal of this project is to analyze sales performance data and provide actionable insights using structured SQL queries and visual dashboards in Power BI.

Key objectives include:

- Cleaning and transforming raw data using SQL
- Calculating key sales metrics (total sales, top products, trends)
- Building interactive visualizations in Power BI
- Enabling decision-making through data storytelling

---

## 🧠 Features & Insights

This repository helps answer important business questions like:

- Which products are top-selling?
- How are sales trending over time?
- What are the regional performances?
- Who are the top customers?
- What are key KPIs like revenue growth and average order value?

---

## 🛠 Technologies Used

| Technology | Purpose |
|------------|---------|
| SQL        | Data extraction, aggregation, transformation |
| Power BI   | Interactive dashboard and visualization |
| PNG/Images | Project previews and documentation |

---

## 📥 Setup Instructions

To use this project locally:

1. **Import database**
   - Load your sales dataset into your SQL engine (MySQL/PostgreSQL/SQL Server)
2. **Run SQL queries**
   - Use the `.sql` scripts to create tables and generate aggregated views
3. **Open Power BI**
   - Open the Power BI report file (in `powerbi/`) for visualization
4. **Connect to Data**
   - Link Power BI to your SQL tables to populate visuals

---

## 🧪 Example SQL Queries

Here are typical queries you might use:

```sql
-- Total sales by year
SELECT YEAR(OrderDate) AS Year,
       SUM(Sales) AS TotalSales
FROM SalesData
GROUP BY YEAR(OrderDate);

-- Top 5 selling products
SELECT ProductName,
       SUM(Sales) AS TotalSales
FROM SalesData
GROUP BY ProductName
ORDER BY TotalSales DESC
LIMIT 5;
