SELECT Customer_Name, Order_Time
FROM customer_orders JOIN dining_tables
ON customer_orders.Table_Table_ID = dining_tables.Table_ID
WHERE Num_Of_Seats > 4

-- Capacity Management: Show all customer names and order times for orders processed at tables with more than 4 seats.