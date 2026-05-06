SELECT T1.Location, S1.Staff_Name AS Employee1, S1.Salary AS Salary1,
    S2.Staff_Name AS Employee1, S2.Salary AS Salary1
FROM staff S1 JOIN staff S2 JOIN dining_tables T1 JOIN dining_tables T2
ON S1.Table_Table_ID = T1.Table_ID
AND S2.Table_Table_ID = T2.Table_ID
WHERE T1.Location = T2.Location 
AND S1.Salary != S2.Salary
AND S1.Employee_ID < S2.Employee_ID;