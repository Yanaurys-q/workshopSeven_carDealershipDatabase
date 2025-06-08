-- Dealership for a given VIN
-- Replace '0C8L1S3AB8SAPP6S6' with the target VIN
SELECT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = '0C8L1S3AB8SAPP6S6';
