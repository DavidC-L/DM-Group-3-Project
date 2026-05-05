SELECT Food_Type, Staff_Name
FROM staff JOIN dining_tables JOIN customer_orders JOIN menu_has_order JOIN menu
ON staff.Table_Table_ID = dining_tables.Table_ID
AND dining_tables.Table_ID = customer_orders.Table_Table_ID
AND customer_orders.Order_ID = menu_has_order.Order_Order_ID 
AND menu_has_order.Menu_Food_ID = menu.Food_ID
WHERE Staff_Name = 'Bob Johnson'

-- Staff Performance: Which specific food types were served by waiter 'Bob Johnson'?