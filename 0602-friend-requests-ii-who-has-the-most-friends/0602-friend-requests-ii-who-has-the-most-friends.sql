# Write your MySQL query statement below
SELECT id , SUM(num) as num
FROM (


    SELECT requester_id as id, COUNT(*) as num
    FROM RequestAccepted
    GROUP BY requester_id

    UNION ALL

    SELECT accepter_id as id, COUNT(*) as num
    FROM RequestAccepted
    GROUP BY accepter_id
) AS COMBINED
GROUP BY id
ORDER BY num DESC
LIMIT 1