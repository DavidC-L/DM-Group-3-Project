SELECT SUM(Food_Price) AS TotalOrderPrice, Customer_Name
FROM customer_orders JOIN menu_has_order JOIN menu
ON customer_orders.Order_ID = menu_has_order.Order_Order_ID
AND menu_has_order.Menu_Food_ID = menu.Food_ID
GROUP BY Customer_Name
HAVING Customer_Name = 'John Doe'

-- What is the total cost of menu items ordered by 'John Doe' based on official menu prices?