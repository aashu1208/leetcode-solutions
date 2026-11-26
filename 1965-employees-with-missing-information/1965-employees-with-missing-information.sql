# Write your MySQL query statement below
SELECT e.employee_id as employee_id
FROM Employees e
LEFT JOIN Salaries s
ON e.employee_id = s.employee_id
WHERE s.employee_id is NULL

UNION 

SELECT s.employee_id as employee_id
FROM Salaries s
LEFT JOIN Employees e
ON e.employee_id = s.employee_id
WHERE e.employee_id is NULL

ORDER BY employee_id 

