# Write your MySQL query statement below
SELECT id,
       CASE
           WHEN p_id IS null THEN 'Root'
           WHEN id NOT IN (SELECT DISTINCT p_id 
                           FROM tree 
                           WHERE p_id IS NOT NULL) THEN 'Leaf'
           ELSE 'Inner'
        END AS type
FROM Tree
ORDER BY id
