SELECT Food_ID, Food_Type
FROM dining_tables JOIN customer_orders JOIN menu_has_order JOIN menu
ON menu.Food_ID = menu_has_order.Menu_Food_ID
AND menu_has_order.Order_Order_ID = customer_orders.Order_ID
AND customer_orders.Table_Table_ID = dining_tables.Table_ID
AND (dining_tables.Location  = 'Patio')

-- Location Analysis: What menu items (ID and Type) were ordered at the "Patio" tables?