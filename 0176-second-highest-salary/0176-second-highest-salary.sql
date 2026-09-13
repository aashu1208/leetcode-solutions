SELECT (
    SELECT MAX(salary)
    FROM (
        SELECT salary,
               DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
        FROM Employee
    ) t
    WHERE rnk = 2
) AS SecondHighestSalary;