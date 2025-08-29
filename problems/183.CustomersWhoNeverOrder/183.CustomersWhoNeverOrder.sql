-- 183. Customers Who Never Order
-- Difficulty: Easy
-- Source: https://leetcode.com/problems/customers-who-never-order/

-- Solution:
SELECT c.name AS Customers
FROM Customers c
WHERE c.id NOT IN (SELECT customerId FROM Orders);
