📌 LeetCode 1581. Customer Who Visited but Did Not Make Any Transactions
📝 Problem Statement

We are given two tables:

Visits Table
Column Name	Type
visit_id	int
customer_id	int

visit_id is the primary key.

This table records customer visits to the mall.

Transactions Table
Column Name	Type
transaction_id	int
visit_id	int
amount	int

transaction_id is the primary key.

This table records transactions made during visits.

👉 We need to find all customers who visited the mall but did not make any transactions, along with the count of such visits.

The result should return:

customer_id

count_no_trans → number of visits without transactions

✅ Example

Input:

Visits

visit_id	customer_id
1	23
2	9
4	30
5	54
6	96
7	54
8	54

Transactions

transaction_id	visit_id	amount
2	5	310
3	5	300
9	5	200
12	1	910
13	2	970

Output:

customer_id	count_no_trans
54	2
30	1
96	1
💡 Approach

Use a LEFT JOIN between Visits and Transactions on visit_id.

This ensures we keep all visit records, even if there’s no transaction.

Filter rows where transaction_id IS NULL → means no transactions happened in that visit.

Group by customer_id and count such visits.