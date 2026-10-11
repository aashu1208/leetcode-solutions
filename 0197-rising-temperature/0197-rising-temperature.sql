# Write your MySQL query statement below
SELECT w2.id AS Id
FROM Weather w1
join Weather w2
on DATEDIFF(w2.recordDate, w1.recordDate) = 1
WHERE w1.temperature < w2.temperature