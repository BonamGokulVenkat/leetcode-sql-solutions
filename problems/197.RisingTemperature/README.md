# 197. Rising Temperature

## Problem Statement
We are given a table **Weather**:

| Column Name  | Type |
|--------------|------|
| id           | int  |
| recordDate   | date |
| temperature  | int  |

- `id` is the unique key for this table.  
- Each row records the temperature on a specific date.  
- There are no duplicate `recordDate` entries.  

We need to **find the IDs of days where the temperature was higher than the previous day (yesterday).**

The result can be returned in any order.

---

## Example

**Input**
+----+------------+-------------+
| id | recordDate | temperature |
+----+------------+-------------+
| 1 | 2015-01-01 | 10 |
| 2 | 2015-01-02 | 25 |
| 3 | 2015-01-03 | 20 |
| 4 | 2015-01-04 | 30 |
+----+------------+-------------+

markdown
Copy code

**Output**
+----+
| id |
+----+
| 2 |
| 4 |
