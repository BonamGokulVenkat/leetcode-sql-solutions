-- LeetCode 175: Combine Two Tables
-- Difficulty: Easy
-- Source: https://leetcode.com/problems/combine-two-tables/

-- Schema:
-- Person(personId INT, lastName VARCHAR, firstName VARCHAR)
-- Address(addressId INT, personId INT, city VARCHAR, state VARCHAR)

-- Query:

SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
