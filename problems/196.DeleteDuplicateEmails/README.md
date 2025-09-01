# 196. Delete Duplicate Emails

## Problem Description
We are given a table **Person** with the following schema:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key (unique).  
- Each row contains an email address (always lowercase).  
- Some emails may appear more than once.  

The task is to **remove duplicate emails**, keeping only the record with the **smallest id** for each email.

---

## Example

**Input**
+----+------------------+
| id | email |
+----+------------------+
| 1 | john@example.com |
| 2 | bob@example.com |
| 3 | john@example.com |
+----+------------------+



**Output**
+----+------------------+
| id | email |
+----+------------------+
| 1 | john@example.com |
| 2 | bob@example.com |
+----+------------------+


