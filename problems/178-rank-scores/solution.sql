-- 178. Rank Scores
-- Difficulty: Medium
-- Source: https://leetcode.com/problems/rank-scores/

-- Schema:
-- Scores(id INT PRIMARY KEY, score DECIMAL(3,2))

-- Solution:

SELECT s1.score,
       (SELECT COUNT(DISTINCT s2.score)
        FROM Scores AS s2
        WHERE s2.score >= s1.score) AS rank
FROM Scores AS s1
ORDER BY s1.score DESC;
