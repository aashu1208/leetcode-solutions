# Write your MySQL query statement below
select c.name as Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId is NULL