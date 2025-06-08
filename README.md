
#  Interesting discovery


One interesting discovery I made during this project was how helpful JOIN queries are when working with related tables. I created a query to find which dealerships had a specific type of vehicle a Ford Mustang in White. At first, it seemed like a basic filter, but it actually required pulling data from three different tables: vehicles, inventory, and dealerships. Writing that query helped me understand how the data is connected and how powerful SQL can be when it comes to exploring those relationships. It also made me realize how important it is to design the database structure clearly from the start, especially when you're going to ask very specific questions later.

 
 ```SELECT DISTINCT d.* FROM dealerships d JOIN inventory i ON d.dealership_id = i.dealership_id JOIN vehicles v ON i.VIN = v.VIN WHERE v.make = 'Ford' AND v.model = 'Mustang' AND v.color = 'White'; ```
