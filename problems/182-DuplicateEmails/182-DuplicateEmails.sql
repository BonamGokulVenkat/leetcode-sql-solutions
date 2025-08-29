-- 182. Duplicate Emails
-- Difficulty: Easy
-- Source: https://leetcode.com/problems/duplicate-emails/

-- Solution:
SELECT email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
