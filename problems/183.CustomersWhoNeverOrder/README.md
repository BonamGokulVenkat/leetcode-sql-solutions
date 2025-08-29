183. Customers Who Never Order

Difficulty: Easy
Source: LeetCode

Problem Statement

You are given two tables:

Customers

Customers(id INT PRIMARY KEY, name VARCHAR)


Orders

Orders(id INT PRIMARY KEY, customerId INT)


Customers: contains customer IDs and names.

Orders: contains order IDs and the customer ID of the person who placed the order.

customerId in Orders is a foreign key referencing Customers.id.

Write a query to find all customers who never placed any orders.
Return the result table with a single column Customers containing the names of such customers.

Example

Input:

Customers table:

id  name
1   Joe
2   Henry
3   Sam
4   Max


Orders table:

id  customerId
1   3
2   1


Output:

Customers
Henry
Max


Explanation:

Joe has orders → excluded.

Sam has orders → excluded.

Henry has no orders → included.

Max has no orders → included.

Approach

Subquery Filtering:

Use a subquery to select all customerId values from Orders.

Check which customers from Customers do not exist in this subquery.

Return Results:

Select the names of such customers as Customers.