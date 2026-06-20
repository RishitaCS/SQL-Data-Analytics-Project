# SQL Data Analytics Project

## Overview

This project demonstrates how SQL can be used to perform **Exploratory Data Analysis (EDA)** and generate actionable business insights from a sales data warehouse.

Using Microsoft SQL Server, I analyzed customer behavior, product performance, sales trends, and business KPIs through a collection of analytical SQL queries and reporting views.

---

## Project Objectives

- Explore and understand the dataset
- Generate business KPIs
- Analyze customer and product performance
- Identify sales trends over time
- Perform customer and product segmentation
- Build reusable analytical reports
- Practice advanced SQL techniques for business analytics

---

## Database Schema

The project uses a simple **Star Schema**.

### Fact Table

- `fact_sales`

### Dimension Tables

- `dim_customers`
- `dim_products`
  
---

## Project Structure

```
SQL-Data-Analytics-Project/
│
├── datasets/
│   └── csv-files
│   └── DataWarehouseAnalytics.bak
│
├── scripts/
│   ├── database_setup.sql
│   ├── database_exploration.sql
│   ├── dimensions_exploration.sql
│   ├── date_range_analysis.sql
│   ├── measures_analysis.sql
│   ├── magnitude_analysis.sql
│   ├── ranking_analysis.sql
│   ├── change_over_time_analysis.sql
│   ├── cumulative_analysis.sql
│   ├── performance_analysis.sql
│   ├── segmentation_analysis.sql
│   ├── part_to_whole_analysis.sql
│   ├── customer_report.sql
│   └── product_report.sql
│
└── README.md
```

---

## Analysis Performed

### Database Exploration

- Explored tables and metadata
- Validated table structures
- Inspected column information

### Dimension Exploration

- Customer distribution by country
- Product categories and subcategories

### Date Range Analysis

- First and last order dates
- Historical sales coverage
- Youngest and oldest customers

### Business KPIs

Calculated key metrics including:

- Total Sales
- Total Orders
- Total Customers
- Total Products
- Total Quantity Sold
- Average Selling Price

### Magnitude Analysis

Analyzed:

- Revenue by category
- Revenue by customer
- Products by category
- Customer distribution by country
- Average product cost

### Ranking Analysis

Identified:

- Top 5 revenue-generating products
- Bottom 5 products
- Top customers
- Customers with the fewest orders

### Change Over Time Analysis

Analyzed monthly and yearly trends using:

- `YEAR()`
- `MONTH()`
- `DATETRUNC()`
- `FORMAT()`

Metrics included:

- Monthly Sales
- Monthly Customers
- Monthly Quantity Sold

### Cumulative Analysis

Calculated:

- Running Total Sales
- Moving Average Price

Using SQL window functions.

### Performance Analysis

Compared yearly product performance using:

- Year-over-Year (YoY) Growth
- Previous Year Sales
- Average Product Sales
- Growth Classification

### Data Segmentation

Created business segments for:

**Customers**

- VIP
- Regular
- New

**Products**

- Below 100
- 100–500
- 500–1000
- Above 1000

### Part-to-Whole Analysis

Measured each product category's contribution to overall sales using percentage-of-total calculations.

---

## Business Reports

### Customer Report

Created a reusable customer report containing:

- Customer Profile
- Age Group
- Customer Segment
- Total Orders
- Total Sales
- Total Quantity Purchased
- Products Purchased
- Customer Lifespan
- Recency
- Average Order Value
- Average Monthly Spend

### Product Report

Created a reusable product report including:

- Product Information
- Product Segment
- Total Orders
- Total Sales
- Quantity Sold
- Unique Customers
- Average Selling Price
- Average Order Revenue
- Average Monthly Revenue
- Product Recency

---

## SQL Concepts Used

### Aggregation

- SUM()
- AVG()
- MIN()
- MAX()
- COUNT()

### Window Functions

- ROW_NUMBER()
- RANK()
- LAG()
- SUM() OVER()
- AVG() OVER()

### Date Functions

- YEAR()
- MONTH()
- DATEDIFF()
- DATETRUNC()
- FORMAT()

### Other SQL Features

- Common Table Expressions (CTEs)
- CASE Statements
- LEFT JOIN
- GROUP BY
- ORDER BY
- UNION ALL
- Views

---

## Technologies Used

- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- T-SQL
- CSV Files

---

## Key Learning Outcomes

Through this project I gained hands-on experience in:

- SQL Data Analysis
- Exploratory Data Analysis (EDA)
- Business KPI Reporting
- Time Series Analysis
- Customer Analytics
- Product Analytics
- Window Functions
- Analytical SQL Query Design
- Report Development using SQL Views

---

## Future Improvements

- Build an interactive Power BI dashboard
- Automate report generation
- Add advanced customer cohort analysis
- Implement RFM analysis
- Perform forecasting using SQL/Python
