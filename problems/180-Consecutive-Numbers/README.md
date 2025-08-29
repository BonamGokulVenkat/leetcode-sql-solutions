180. Consecutive Numbers

Difficulty: Medium
Source: LeetCode

Problem Statement

You are given a table Logs with the following schema:

Logs(id INT PRIMARY KEY, num VARCHAR)


id is an autoincrement primary key starting from 1.

Each row contains a number stored in the column num.

Your task is to find all numbers that appear at least three times consecutively in the table.
Return the result table with a single column ConsecutiveNums.
The order of the results does not matter.

Example

Input:

id  num
1   1
2   1
3   1
4   2
5   1
6   2
7   2


Output:

ConsecutiveNums
1


Explanation:

The number 1 appears three times consecutively at positions id = 1, 2, 3.

Although 2 appears twice consecutively at the end (id = 6, 7), it does not meet the requirement of at least three times.

Hence, the only valid output is 1.

Approach

Self-Join Technique:

Join the table Logs to itself three times (l1, l2, l3).

Ensure that the same number exists across the three rows (l1.num = l2.num = l3.num).

Verify that their ids are consecutive (l1.id = l2.id - 1 and l2.id = l3.id - 1).

Select Distinct Results:

Since a number may appear in multiple consecutive triplets, use DISTINCT to avoid duplicates.