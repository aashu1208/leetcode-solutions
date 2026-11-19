# Write your MySQL query statement below
SELECT id, COUNT(*) AS num

from (

SELECT requester_id as id
FROM RequestAccepted

UNION ALL

SELECT accepter_id as id
FROM RequestAccepted

) as t

GROUP BY id
ORDER BY num DESC
LIMIT 1