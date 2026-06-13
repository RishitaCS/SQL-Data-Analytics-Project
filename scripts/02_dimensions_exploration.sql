/*
===============================================================================
Dimensions Exploration
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
	
SQL Functions Used:
    - DISTINCT
    - ORDER BY
===============================================================================
*/

-- Explore all countries our customers come from
Select DISTINCT country FROM gold.dim_customers

-- Explore all product categories "The Major Divisions"
Select DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1,2,3
