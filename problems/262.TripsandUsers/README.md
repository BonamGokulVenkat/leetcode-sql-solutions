Problem Statement

We are given two tables: Trips and Users. Each trip involves a client and a driver, both of whom are users. Some users may be banned.

We need to calculate the cancellation rate of requests made between 2013-10-01 and 2013-10-03, considering only trips where both the client and the driver are not banned.

The cancellation rate for a day is:

Cancellation Rate
=
Number of Cancelled Trips
Total Trips
Cancellation Rate=
Total Trips
Number of Cancelled Trips
	​


where "Cancelled Trips" are those with status cancelled_by_driver or cancelled_by_client.

The result should show Day and Cancellation Rate, rounded to two decimal places.

Example

Input:

Trips Table

id	client_id	driver_id	city_id	status	request_at
1	1	10	1	completed	2013-10-01
2	2	11	1	cancelled_by_driver	2013-10-01
3	3	12	6	completed	2013-10-01
4	4	13	6	cancelled_by_client	2013-10-01
5	1	10	1	completed	2013-10-02
6	2	11	6	completed	2013-10-02
7	3	12	6	completed	2013-10-02
8	2	12	12	completed	2013-10-03
9	3	10	12	completed	2013-10-03
10	4	13	12	cancelled_by_driver	2013-10-03

Users Table

users_id	banned	role
1	No	client
2	Yes	client
3	No	client
4	No	client
10	No	driver
11	No	driver
12	No	driver
13	No	driver

Output:

Day	Cancellation Rate
2013-10-01	0.33
2013-10-02	0.00
2013-10-03	0.50