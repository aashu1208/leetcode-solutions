# Write your MySQL query statement below
SELECT employee_id as employee_id
from Employees
WHERE employee_id not in (SELECT employee_id
                          FROM Salaries)

UNION ALL


SELECT employee_id as employee_id
FROM Salaries
WHERE employee_id not in (SELECT employee_id
FROM Employees)


ORDER BY employee_id