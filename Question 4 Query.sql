SELECT Order_ID, Allergy_Warning
FROM customer_orders JOIN menu_has_order JOIN menu 
ON customer_orders.Order_ID = menu_has_order.Order_Order_ID
AND menu_has_order.Menu_Food_ID = menu.Food_ID
AND Order_ID = 105;

-- Food Safety: What are the allergy warnings for all menu items included in a specific Order ID 105?