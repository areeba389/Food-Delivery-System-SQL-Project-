-- List all restaurants with rating above 4.5
SELECT * FROM Restaurants WHERE Rating > 4.5;

-- Show menu of a specific restaurant (Pizza Hub)
SELECT r.Name AS Restaurant, m.ItemName, m.Price
FROM Menu m
JOIN Restaurants r ON m.RestaurantID = r.RestaurantID
WHERE r.Name = 'Pizza Hub';

-- Find orders placed by a customer
SELECT c.Name, o.OrderID, o.OrderDate, o.TotalAmount, o.Status
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Name = 'Areeba Lone';

-- Find most popular food items (ordered the most)
SELECT m.ItemName, COUNT(od.MenuID) AS TimesOrdered
FROM OrderDetails od
JOIN Menu m ON od.MenuID = m.MenuID
GROUP BY m.ItemName
ORDER BY TimesOrdered DESC;

-- Calculate total revenue for each restaurant
SELECT r.Name AS Restaurant, SUM(o.TotalAmount) AS Revenue
FROM Orders o
JOIN Restaurants r ON o.RestaurantID = r.RestaurantID
GROUP BY r.Name
ORDER BY Revenue DESC;

-- Find average delivery rating
SELECT AVG(Rating) AS AvgAgentRating FROM DeliveryAgents;
