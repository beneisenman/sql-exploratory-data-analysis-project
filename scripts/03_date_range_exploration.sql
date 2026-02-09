/*
===============================================================================
Date Range Exploration 
===============================================================================
Purpose:
    - To determine the temporal boundaries of key data points.
    - To understand the range of historical data.

SQL Functions Used:
    - MIN(), MAX(), DATEDIFF()
===============================================================================
*/

--Find the date of first and last order date
--Find out how many years of sales are available
SELECT 
	MIN(order_date) AS first_order_date, 
	MAX (order_date) AS last_order_date,
	DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years,
	DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales 

--Find youngest and oldest customer
SELECT
	MIN(birthdate) AS oldest_birthdate,
	DATEDIFF(year,MIN(birthdate),GETDATE()) AS oldest_age,
	MAX(birthdate) AS youngest_birthdate,
	DATEDIFF(year,MAX(birthdate),GETDATE()) AS youngest_age
FROM gold.dim_customers 
