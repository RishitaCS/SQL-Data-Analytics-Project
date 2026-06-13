/*
===============================================================================
Database Exploration
===============================================================================
Purpose:
    - To explore the structure of the database, including the list of tables and their schemas.
    - To inspect the columns and metadata for specific tables.

Table Used:
    - INFORMATION_SCHEMA.TABLES
    - INFORMATION_SCHEMA.COLUMNS
===============================================================================
*/

-- Explore all objects in the database
Select * from INFORMATION_SCHEMA.TABLES

-- Explore all columns in the database
Select * from INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_products'