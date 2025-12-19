# Sales & Customer Analytics SQL Pipeline

A structured SQL analytics project built using **MS SQL Server** to analyze sales, customers, and products through clean schema design, data cleaning, window functions, and CTE-based analytics.

## Project Objective

To design a normalized sales database and perform end-to-end analytics including data ingestion, data cleaning, revenue analysis, customer ranking, and trend analysis using advanced SQL techniques.

## Tech Stack

- MS SQL Server
- SQL (Joins, Aggregations)
- Window Functions (RANK, DENSE_RANK, ROW_NUMBER)
- Common Table Expressions (CTEs)

## Project Structure


## File Description

- **01_schema.sql** – Creates the database and tables with primary and foreign key relationships  
- **02_insert_data.sql** – Inserts sample transactional and reference data  
- **03_data_cleaning.sql** – Handles missing values and enforces data constraints  
- **04_analytics.sql** – Performs core KPI analysis such as revenue and customer spend  
- **05_window_functions.sql** – Implements ranking and cumulative metrics using window functions  
- **06_cte_deduplication.sql** – Uses CTEs and ROW_NUMBER for deduplication and latest-record logic  

## Key Analytics Performed

- Total revenue by city
- Customer lifetime spend analysis
- Customer ranking using RANK and ROW_NUMBER
- Monthly revenue trends with cumulative totals
- Deduplication to identify the latest order per customer

## How to Run the Project

Execute the SQL files in the following order using **SQL Server Management Studio (SSMS)**:

1. `01_schema.sql`  
2. `02_insert_data.sql`  
3. `03_data_cleaning.sql`  
4. `04_analytics.sql`  
5. `05_window_functions.sql`  
6. `06_cte_deduplication.sql`  

## Outcome

This project demonstrates practical SQL skills including relational modeling, data cleaning, analytical querying, window functions, and CTE-based logic, suitable for Data Analyst and SQL Developer roles.
