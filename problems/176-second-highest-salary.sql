-- 176. Second Highest Salary
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/second-highest-salary/

-- Schema:
-- Employee(id INT PRIMARY KEY, salary INT)

-- Solution:

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);