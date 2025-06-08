-- Sales info for a dealer in a date range
-- Replace 2 with DEALERSHIP_ID and adjust dates
SELECT s.*
FROM sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 2
  AND s.sale_date BETWEEN '2024-01-01' AND '2025-12-31';
