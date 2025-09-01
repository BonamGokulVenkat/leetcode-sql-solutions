511. Game Play Analysis I
Problem Description

The Activity table tracks the gameplay activity of players. Each row contains:

player_id: Unique identifier of the player.

device_id: Device used by the player.

event_date: Date when the activity occurred.

games_played: Number of games played on that date.

The primary key is (player_id, event_date), ensuring uniqueness per player per day.

The task is to find the first login date for each player (the earliest event_date per player_id).

Example

Input:

Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+


Output:

+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+


Explanation:

Player 1’s earliest login is 2016-03-01.

Player 2’s earliest login is 2017-06-25.

Player 3’s earliest login is 2016-03-02.