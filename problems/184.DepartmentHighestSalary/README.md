184. Department Highest Salary

Difficulty: Medium
Source: LeetCode

Problem Statement

You are given two tables:

Employee

Employee(id INT PRIMARY KEY, name VARCHAR, salary INT, departmentId INT)


Department

Department(id INT PRIMARY KEY, name VARCHAR)


Employee: Contains employee ID, name, salary, and department ID.

Department: Contains department ID and department name.

departmentId in Employee is a foreign key referencing Department.id.

Write a SQL query to find employees who have the highest salary in each department.
Return the result table with columns:

Department (department name)

Employee (employee name)

Salary (highest salary in that department)

Example

Input:

Employee table:

id  name   salary   departmentId
1   Joe    70000    1
2   Jim    90000    1
3   Henry  80000    2
4   Sam    60000    2
5   Max    90000    1


Department table:

id  name
1   IT
2   Sales


Output:

Department   Employee   Salary
IT           Jim        90000
Sales        Henry      80000
IT           Max        90000


Explanation:

The highest salary in IT is 90000, earned by both Jim and Max.

The highest salary in Sales is 80000, earned by Henry.

Therefore, the result contains all these employees.

Approach

Join Employee and Department

Use an INNER JOIN to link each employee with their department.

Find Maximum Salary per Department

For each department, find the maximum salary using a correlated subquery:

(SELECT MAX(salary) FROM Employee WHERE departmentId = e.departmentId)


Filter Employees Matching Maximum Salary

Select only employees whose salary equals the maximum salary of their department.