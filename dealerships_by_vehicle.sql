-- Dealerships with a specific vehicle
-- Replace 'Ford', 'Mustang', 'Red' as needed
SELECT DISTINCT d.*
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.make = 'Ford'
  AND v.model = 'Mustang'
  AND v.color = 'White';
