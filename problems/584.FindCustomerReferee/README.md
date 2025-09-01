584. Find Customer Referee
Problem Description

You are given a table Customer with the following columns:

id (int, primary key) – unique identifier of each customer.

name (varchar) – customer’s name.

referee_id (int) – the ID of the customer who referred this customer. Can be NULL if not referred by anyone.

You need to find the names of customers who are:

Not referred by any customer (referee_id IS NULL), OR

Referred by a customer with id != 2.

Example

Input:

Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+


Output:

+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+


Explanation:

Will, Jane, and Bill → have referee_id = NULL.

Zack → referred by customer 1, which is not 2.

Alex and Mark → excluded because they are referred by customer 2.