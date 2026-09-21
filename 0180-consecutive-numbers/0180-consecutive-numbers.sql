# Write your MySQL query statement below
SELECT DISTINCT num AS ConsecutiveNums
FROM (



    SELECT num,
    LAG(num, 1) OVER(ORDER BY id) as prev_num,
    LEAD(num, 1) OVER(ORDER BY id) as next_num

    FROM Logs
) as t
WHERE num = prev_num 
AND 
num = next_num