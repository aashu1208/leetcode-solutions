SELECT (
    SELECT Max(salary)
    FROM (
        SELECT salary,
               DENSE_RANK() OVER (ORDER BY salary desc) AS rnk
        FROM Employee
    ) t
    WHERE rnk = 2
) AS SecondHighestSalary;