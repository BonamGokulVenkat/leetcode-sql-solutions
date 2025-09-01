1661. Average Time of Process per Machine
Problem Statement

You are given a table Activity containing the activities of different machines in a factory. Each machine runs multiple processes, and each process has exactly one start and one end activity.

machine_id: ID of the machine.

process_id: ID of the process running on the machine.

activity_type: Either 'start' or 'end'.

timestamp: Float value representing the time in seconds.

The goal is to calculate the average processing time per machine, where the processing time of a process = end.timestamp - start.timestamp. The result should return each machine_id along with its average processing time rounded to 3 decimal places.

Example
Input:

Activity Table

machine_id	process_id	activity_type	timestamp
0	0	start	0.712
0	0	end	1.520
0	1	start	3.140
0	1	end	4.120
1	0	start	0.550
1	0	end	1.550
1	1	start	0.430
1	1	end	1.420
2	0	start	4.100
2	0	end	4.512
2	1	start	2.500
2	1	end	5.000
Output:
machine_id	processing_time
0	0.894
1	0.995
2	1.456
Approach

Self Join the Activity table on machine_id and process_id to pair each start activity with its corresponding end activity.

Compute the processing time for each process as (end.timestamp - start.timestamp).

Take the average processing time per machine using AVG() and group by machine_id.

Round the result to 3 decimal places.