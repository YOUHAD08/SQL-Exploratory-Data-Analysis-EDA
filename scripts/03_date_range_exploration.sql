

-- Determine the first and last order date and the total duration in months
SELECT 
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;

-- Find the youngest and oldest customer based on birthdate
SELECT
   MIN(birthday) AS oldest_birthdate,
   DATEDIFF(YEAR,MIN(birthday),GETDATE())  AS oldest_age,
   MAX(birthday) AS youngest_birthdate,
   DATEDIFF(YEAR, MAX(birthday), GETDATE()) AS youngest_age
FROM gold.dim_customers