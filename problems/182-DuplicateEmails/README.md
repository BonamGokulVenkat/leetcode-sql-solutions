182. Duplicate Emails

Difficulty: Easy
Source: LeetCode

Problem Statement

You are given a table Person with the following schema:

Person(id INT PRIMARY KEY, email VARCHAR)


id: Unique identifier for each row.

email: Email address of the person (always lowercase, never NULL).

Write a query to find all duplicate emails in the table.
Return the result table with a single column Email.

Example

Input:

id  email
1   a@b.com
2   c@d.com
3   a@b.com


Output:

Email
a@b.com


Explanation:

The email a@b.com appears twice, so it should be returned.

c@d.com only appears once, so it is not included.

Approach

Group by email

Use GROUP BY email to group identical emails.

Filter duplicates

Apply HAVING COUNT(email) > 1 to keep only those groups that appear more than once.

Return results

Select email as Email in the final result.