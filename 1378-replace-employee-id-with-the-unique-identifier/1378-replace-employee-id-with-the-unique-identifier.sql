# Write your MySQL query statement below
SELECT COALESCE(unique_id, null) as unique_id,
name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id

