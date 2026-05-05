SELECT menu.Food_ID, customer_orders.Customer_Name, staff.Employee_ID, staff.Staff_Name AS "Server"
FROM customer_orders JOIN mydb.menu_has_order JOIN dining_tables JOIN mydb.menu JOIN mydb.staff
ON menu.Food_ID = menu_has_order.Menu_Food_ID
AND menu_has_order.Order_Order_ID = customer_orders.Order_ID
AND customer_orders.Table_Table_ID = dining_tables.Table_ID
AND dining_tables.Table_ID = Staff.Table_Table_ID
WHERE Food_Type = 'Main Dish'; 

-- Which customers ordered "Main Dish" items and which staff members served them?