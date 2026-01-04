


-- Find the youngest and oldest customer based on birthdate
SELECT
   MIN(birthday) AS oldest_birthdate,
   DATEDIFF(YEAR,MIN(birthday),GETDATE())  AS oldest_age,
   MAX(birthday) AS youngest_birthdate,
   DATEDIFF(YEAR, MAX(birthday), GETDATE()) AS youngest_age
FROM gold.dim_customers