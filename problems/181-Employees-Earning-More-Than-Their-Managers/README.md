181. Employees Earning More Than Their Managers

Difficulty: Easy
Source: LeetCode

Problem Statement

You are given a table Employee with the following schema:

Employee(id INT PRIMARY KEY, name VARCHAR, salary INT, managerId INT)


id: Unique identifier for each employee.

name: Name of the employee.

salary: Salary of the employee.

managerId: The id of the employee’s manager (can be NULL if no manager).

Write a query to find all employees who earn more than their managers.
Return the result table with a single column Employee containing the names of such employees.

Example

Input:

id  name   salary   managerId
1   Joe    70000    3
2   Henry  80000    4
3   Sam    60000    NULL
4   Max    90000    NULL


Output:

Employee
Joe


Explanation:

Joe earns 70,000, which is higher than his manager Sam’s salary (60,000).

Henry earns 80,000, but his manager Max earns 90,000, so Henry is excluded.

Employees without managers (Sam, Max) are ignored.

Final result = Joe.

Approach

Correlated Subquery

For each employee e, find the salary of their manager using a subquery (SELECT salary FROM Employee WHERE id = e.managerId).

Compare e.salary with the manager’s salary.

Return Employees

If e.salary > manager.salary, include that employee’s name in the result.