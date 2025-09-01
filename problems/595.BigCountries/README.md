595. Big Countries
Problem Description

You are given a table World with the following columns:

name (varchar, primary key) – the name of the country.

continent (varchar) – the continent the country belongs to.

area (int) – the total area of the country (in km²).

population (int) – the population of the country.

gdp (bigint) – the GDP value of the country.

A country is considered big if:

Its area is at least 3,000,000 km², OR

Its population is at least 25,000,000.

You need to return the name, population, and area of all the big countries.

Example

Input:

World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+


Output:

+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+


Explanation:

Afghanistan qualifies because population = 25,500,100 ≥ 25,000,000.

Algeria qualifies because population = 37,100,000 ≥ 25,000,000.

Countries like Albania, Andorra, and Angola don’t meet either threshold.