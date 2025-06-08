-- 01 All Dealerships
SELECT * FROM dealerships;

-- 02 Vehicles For Dealership 1
SELECT v.* 
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1;

-- 03 Vehicle By Vin
SELECT * 
FROM vehicles 
WHERE VIN = '0C8L1S3AB8SAPP6S6';

-- 04 Dealership By Vehicle Vin
SELECT d.* 
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '0C8L1S3AB8SAPP6S6';

-- 05 Dealerships With Specific Vehicle
SELECT d.* 
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Ford' AND v.model = 'Escape' AND v.color = 'Green';

-- 06 Sales In Date Range
SELECT s.* 
FROM sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 2 
  AND s.sale_date BETWEEN '2024-01-01' AND '2025-12-31';