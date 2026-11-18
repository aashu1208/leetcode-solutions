# Write your MySQL query statement below
WITH CTE AS (

    SELECT salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) as dr
    from Employee

)

SELECT MAX(salary) AS SecondHighestSalary
FROM CTE
where dr = 2