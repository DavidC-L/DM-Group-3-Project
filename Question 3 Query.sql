SELECT Employee_ID, Staff_Name, Role, location
FROM staff, dining_tables
WHERE staff.Table_Table_ID = dining_tables.Table_ID
AND location = 'Window'

-- Which staff members(Name and Role) are currently assigned to "Window"
-- table locations