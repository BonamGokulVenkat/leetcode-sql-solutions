1148. Article Views I
Problem Statement

You are given a table Views with the following schema:

Column Name	Type
article_id	int
author_id	int
viewer_id	int
view_date	date

There is no primary key, and the table may contain duplicate rows.

Each row represents that a viewer viewed an article written by an author on a specific date.

If author_id = viewer_id, it means the author viewed their own article.

Task:
Write a query to find all the authors who have viewed at least one of their own articles. Return the result sorted by id (author_id) in ascending order.

Example
Input:

Views table:

article_id	author_id	viewer_id	view_date
1	3	5	2019-08-01
1	3	6	2019-08-02
2	7	7	2019-08-01
2	7	6	2019-08-02
4	7	1	2019-07-22
3	4	4	2019-07-21
3	4	4	2019-07-21
Output:
id
4
7