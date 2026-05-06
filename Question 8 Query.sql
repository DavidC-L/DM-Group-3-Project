SELECT Staff_Name, Role
FROM staff JOIN schedule_has_staff JOIN schedule
ON staff.Employee_ID = schedule_has_staff.Staff_Employee_ID
AND schedule_has_staff.Schedule_Schedule_ID = schedule.Schedule_ID
AND (schedule.Open = 'Yes')
ORDER BY Staff_Name ASC

-- Operational Status: List staff names and their roles who are scheduled to work on days when the restaurant is marked as "Open".