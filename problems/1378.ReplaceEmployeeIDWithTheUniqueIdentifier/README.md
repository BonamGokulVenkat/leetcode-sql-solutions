📌 1378. Replace Employee ID With The Unique Identifier
Problem Statement

We are given two tables:

Employees

Column Name	Type
id	int
name	varchar

id is the primary key.

Each row contains the id and name of an employee.

EmployeeUNI

Column Name	Type
id	int
unique_id	int

(id, unique_id) is the primary key.

Each row contains the employee’s id and their corresponding unique_id.

We need to show the unique ID of each employee. If an employee does not have a unique ID, the result should display NULL.

Return the result in any order.

Example
Input

Employees table:

id	name
1	Alice
7	Bob
11	Meir
90	Winston
3	Jonathan

EmployeeUNI table:

id	unique_id
3	1
11	2
90	3
Output
unique_id	name
null	Alice
null	Bob
2	Meir
3	Winston
1	Jonathan
💡 Approach

We must join Employees with EmployeeUNI on id.

Since not all employees have a unique_id, use a LEFT JOIN.

Select unique_id from EmployeeUNI and name from Employees.

If no match exists in EmployeeUNI, SQL automatically returns NULL for unique_id.