-- Vehicles for a specific dealership
-- Replace 1 with the desired DEALERSHIP_ID
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1;
