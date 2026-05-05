SELECT Opening_Time, Closing_Time, Staff_Name
FROM staff, schedule_has_staff, schedule
WHERE staff.Employee_ID = schedule_has_staff.Staff_Employee_ID
AND schedule_has_staff.Schedule_Schedule_ID = schedule.Schedule_ID
AND Staff_Name = 'Alice Smith'

-- Employee Scheduling: What are the opening and closing times for the schedule assigned to staff member 'Alice Smith'?