# https://leetcode.com/problems/trips-and-users/discuss/399394/2-Simple-MySQL-Solutions
# -- Method 1: filter with the right conditions and use case condition to do the right aggregations

# Write your MySQL query statement below
SELECT
    Request_at AS 'Day',
    ROUND(SUM(CASE WHEN sub.Status = 'cancelled_by_client' OR sub.Status = 'cancelled_by_driver' THEN 1 ELSE 0 END) / COUNT(*), 2) AS 'Cancellation Rate'
FROM
    (SELECT * FROM Trips
     WHERE Client_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'yes')
     AND Driver_Id NOT IN (SELECT Users_Id FROM Users WHERE Banned = 'yes')
     AND Request_at BETWEEN '2013-10-01' AND '2013-10-03'
    ) AS sub
GROUP BY sub.Request_at;
