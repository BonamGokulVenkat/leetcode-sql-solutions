-- 184. Department Highest Salary
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/department-highest-salary/

-- Solution:
SELECT d.name AS Department, 
       e.name AS Employee, 
       e.salary AS Salary
FROM Employee e
INNER JOIN Department d 
        ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(salary) 
    FROM Employee 
    WHERE departmentId = e.departmentId
);
