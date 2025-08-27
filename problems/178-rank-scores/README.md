# 178. Rank Scores

**Difficulty:** Medium  
**Source:** [LeetCode](https://leetcode.com/problems/rank-scores/)

---

## Schema
```sql
Scores(id INT PRIMARY KEY, score DECIMAL(3,2))

Problem Statement

Write a solution to rank the scores in descending order.

Scores should be ranked from highest to lowest.

If there is a tie, both get the same rank.

After a tie, the next rank should be consecutive (no gaps).

Return the result ordered by score DESC.

Example

Input:
Scores table:

id	score
1	3.50
2	3.65
3	4.00
4	3.85
5	4.00
6	3.65

Output:

score	rank
4.00	1
4.00	1
3.85	2
3.65	3
3.65	3
3.50	4