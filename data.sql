-- Insert Restaurants
INSERT INTO Restaurants (Name, Location, Rating) VALUES
('Pizza Hub', 'Delhi', 4.5),
('Burger Town', 'Mumbai', 4.2),
('Curry Palace', 'Bangalore', 4.7);

-- Insert Menu Items
INSERT INTO Menu (RestaurantID, ItemName, Price) VALUES
(1, 'Margherita Pizza', 299.00),
(1, 'Pepperoni Pizza', 399.00),
(2, 'Veg Burger', 149.00),
(2, 'Cheese Burger', 199.00),
(3, 'Butter Chicken', 349.00),
(3, 'Paneer Tikka', 249.00);

-- Insert Customers
INSERT INTO Customers (Name, Email, Phone, Address) VALUES
('Areeba Lone', 'areeba@example.com', '9876543210', 'Delhi'),
('John Doe', 'john@example.com', '9876501234', 'Mumbai'),
('Sara Khan', 'sara@example.com', '9988776655', 'Bangalore');

-- Insert Delivery Agents
INSERT INTO DeliveryAgents (Name, Phone, Rating) VALUES
('Ravi Kumar', '9871112233', 4.6),
('Sita Sharma', '9872223344', 4.3);

-- Insert Orders
INSERT INTO Orders (CustomerID, RestaurantID, AgentID, OrderDate, TotalAmount, Status) VALUES
(1, 1, 1, '2025-09-01 19:30:00', 698.00, 'Delivered'),
(2, 2, 2, '2025-09-02 20:15:00', 149.00, 'Delivered'),
(3, 3, 1, '2025-09-03 21:00:00', 349.00, 'Pending');

-- Insert Order Details
INSERT INTO OrderDetails (OrderID, MenuID, Quantity) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1),
(3, 5, 1);
