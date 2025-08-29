-- 181. Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Source: https://leetcode.com/problems/employees-earning-more-than-their-managers/

-- Solution:
SELECT e.name AS Employee
FROM Employee e
WHERE e.salary > (SELECT m.salary 
                  FROM Employee m 
                  WHERE m.id = e.managerId);
