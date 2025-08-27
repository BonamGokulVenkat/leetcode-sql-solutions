# 177. Nth Highest Salary

**Difficulty:** Medium  
**Source:** [LeetCode](https://leetcode.com/problems/nth-highest-salary/)

---

## Schema

```sql
Employee(id INT PRIMARY KEY, salary INT)


Problem Statement

Write a solution to find the Nth highest distinct salary from the Employee table.
If there are less than N distinct salaries, return null.

Example 1

Input:

Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
n = 2


Output:

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+

Example 2

Input:

Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
n = 2


Output:

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| null                   |
+------------------------+

Solution
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


---

### 🔗 Root `README.md` (append this line)

```markdown
- [177. Nth Highest Salary](problems/177-nth-highest-salary/) — SQL solution
