1683. Invalid Tweets
Problem Statement

You are given a table Tweets with the following schema:

Column Name	Type
tweet_id	int
content	varchar

tweet_id is the primary key.

content contains alphanumeric characters, '!', or ' ' only.

A tweet is invalid if the number of characters in its content is strictly greater than 15.

Task:
Write a query to return the tweet_id of all invalid tweets.
The result can be returned in any order.

Example
Input:

Tweets table:

tweet_id	content
1	Let us Code
2	More than fifteen chars are here!
Output:
tweet_id
2

Explanation:

Tweet 1 has length = 11 → valid.

Tweet 2 has length = 33 → invalid.