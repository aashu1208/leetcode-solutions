# Write your MySQL query statement below
SELECT u.user_id as buyer_id, u.join_date, COUNT(o.buyer_id) as orders_in_2019
from Users u
LEFT JOIN Orders o
ON u.user_id = o.buyer_id
AND order_date BETWEEN '2019-01-01'
AND '2019-12-31'

GROUP BY u.user_id, u.join_date