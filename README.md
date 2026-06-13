# SQL-Data-Analytics-Project

## Overview

This project demonstrates an end-to-end SQL-based Data Analytics workflow using a Data Warehouse model. The project focuses on data exploration, business analysis, and generating actionable insights from sales, customer, and product datasets.

The database is built using Microsoft SQL Server and follows a dimensional modeling approach with:

* **Dimension Tables**

  * `dim_customers`
  * `dim_products`

* **Fact Table**

  * `fact_sales`

The project covers data loading, exploratory data analysis (EDA), aggregation, ranking analysis, and business performance reporting using SQL queries.

---

## Project Objectives

The main objectives of this project are:

* Build a structured Data Warehouse database.
* Load data from CSV files into SQL Server tables.
* Explore and understand the dataset structure.
* Analyze customers, products, and sales performance.
* Generate key business metrics.
* Perform ranking and magnitude analysis.
* Demonstrate practical SQL skills used in Data Analytics.

---

## Database Schema

### Database

`DataWarehouseAnalytics`

### Tables

#### 1. dim_customers

Stores customer information.

| Column          | Description           |
| --------------- | --------------------- |
| customer_key    | Surrogate key         |
| customer_id     | Customer ID           |
| customer_number | Customer Number       |
| first_name      | First Name            |
| last_name       | Last Name             |
| country         | Country               |
| marital_status  | Marital Status        |
| gender          | Gender                |
| birthdate       | Birth Date            |
| create_date     | Account Creation Date |

---

#### 2. dim_products

Stores product information.

| Column         | Description         |
| -------------- | ------------------- |
| product_key    | Surrogate key       |
| product_id     | Product ID          |
| product_number | Product Number      |
| product_name   | Product Name        |
| category_id    | Category ID         |
| category       | Product Category    |
| subcategory    | Product Subcategory |
| maintenance    | Maintenance Type    |
| cost           | Product Cost        |
| product_line   | Product Line        |
| start_date     | Product Start Date  |

---

#### 3. fact_sales

Stores transactional sales data.

| Column        | Description   |
| ------------- | ------------- |
| order_number  | Order Number  |
| product_key   | Product Key   |
| customer_key  | Customer Key  |
| order_date    | Order Date    |
| shipping_date | Shipping Date |
| due_date      | Due Date      |
| sales_amount  | Sales Revenue |
| quantity      | Quantity Sold |
| price         | Unit Price    |

---

## Data Loading Process

The project uses SQL Server's `BULK INSERT` command to import data from CSV files.

### Process

1. Create database.
2. Create schema.
3. Create dimension and fact tables.
4. Truncate existing data.
5. Load fresh data using BULK INSERT.

---

## Exploratory Data Analysis (EDA)

### Database Exploration

Performed metadata analysis using:

```sql
INFORMATION_SCHEMA.TABLES
INFORMATION_SCHEMA.COLUMNS
```

Used to:

* View all database objects
* Inspect table structures
* Validate column definitions

---

### Dimensions Exploration

Analyzed:

#### Customer Countries

```sql
SELECT DISTINCT country
FROM gold.dim_customers;
```

#### Product Categories

```sql
SELECT DISTINCT category, subcategory, product_name
FROM gold.dim_products;
```

Insights:

* Understand customer distribution by country.
* Explore product hierarchy.

---

### Date Range Analysis

Determined:

* First order date
* Last order date
* Historical sales coverage
* Youngest customer
* Oldest customer

Functions used:

```sql
MIN()
MAX()
DATEDIFF()
```

---

### Measures Analysis

Generated key business metrics:

| Metric                |
| --------------------- |
| Total Sales           |
| Total Quantity Sold   |
| Average Selling Price |
| Total Orders          |
| Total Products        |
| Total Customers       |

Functions used:

```sql
SUM()
AVG()
COUNT()
COUNT(DISTINCT)
```

---

## Magnitude Analysis

Analyzed data distributions across business dimensions.

### Customer Analysis

* Customers by Country
* Customers by Gender

### Product Analysis

* Products by Category
* Average Product Cost by Category

### Revenue Analysis

* Revenue by Category
* Revenue by Customer

### Sales Distribution

* Quantity Sold by Country

Functions used:

```sql
GROUP BY
SUM()
COUNT()
AVG()
ORDER BY
```

---

## Ranking Analysis

Identified top and bottom performers.

### Top Revenue Generating Products

Top 5 products by sales revenue.

### Lowest Revenue Products

Bottom 5 products by sales revenue.

### Top Customers

Top 10 customers generating highest revenue.

### Customers with Fewest Orders

Bottom 3 customers based on order count.

Functions used:

```sql
TOP
RANK()
ROW_NUMBER()
DENSE_RANK()
```

---

## SQL Concepts Demonstrated

### Data Definition Language (DDL)

* CREATE DATABASE
* CREATE SCHEMA
* CREATE TABLE
* DROP DATABASE

### Data Loading

* BULK INSERT
* TRUNCATE TABLE

### Data Exploration

* INFORMATION_SCHEMA

### Aggregations

* SUM()
* COUNT()
* AVG()
* MIN()
* MAX()

### Date Functions

* DATEDIFF()
* GETDATE()

### Joins

* LEFT JOIN

### Ranking Functions

* RANK()
* ROW_NUMBER()
* DENSE_RANK()

### Reporting

* UNION ALL
* GROUP BY
* ORDER BY

---

## Key Business Questions Answered

### Customers

* How many customers exist?
* Which countries have the most customers?
* What is the gender distribution?

### Products

* Which categories contain the most products?
* What is the average cost by category?

### Sales

* What are the total sales?
* How many products were sold?
* What is the average selling price?

### Performance

* Which products generate the highest revenue?
* Which customers contribute the most revenue?
* Which products perform poorly?

---

## Project Structure

```text
SQL-Data-Analytics-Project/
│
├── datasets/
│   └── csv-files
│   └── DataWarehouseAnalytics.bak
│
├── scripts/
│   ├── 00_init_database.sql
│   ├── 01_database_exploration.sql
│   ├── 02_dimensions_exploration.sql
│   ├── 03_date_range_exploration.sql
│   ├── 04_measures_exploration.sql
│   ├── 05_magnitude_analysis.sql
│   ├── 06_ranking_analysis.sql
│
└── README.md
```

---

## Technologies Used

* Microsoft SQL Server
* T-SQL
* SQL Server Management Studio (SSMS)
* CSV Files

---

## Learning Outcomes

Through this project, I gained hands-on experience in:

* Data Warehouse Design
* Dimensional Modeling
* SQL Data Loading Techniques
* Exploratory Data Analysis (EDA)
* Business Metrics Reporting
* Customer Analytics
* Product Analytics
* Sales Analytics
* SQL Window Functions
* Query Optimization Concepts

---
