-- 177. Nth Highest Salary
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/nth-highest-salary/

-- Schema:
-- Employee(id INT PRIMARY KEY, salary INT)

-- Solution:

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  SET N = N - 1;
  RETURN (
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT N, 1
  );
END
