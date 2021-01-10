# CTE

# Write your MySQL query statement below
WITH Sub AS (
    SELECT *
    FROM Trips
    WHERE
        Client_id IN (SELECT Users_id FROM Users WHERE Banned = 'No')
        AND
        Driver_id IN (SELECT Users_id FROM Users WHERE Banned = 'No')
        AND
        Request_at BETWEEN '2013-10-01' AND '2013-10-03'
)

SELECT
    Sub.Request_at AS 'Day',
    ROUND(SUM(CASE WHEN Sub.Status = 'cancelled_by_driver' OR Sub.Status = 'cancelled_by_client' THEN 1 ELSE 0 END) / COUNT(*), 2) AS 'Cancellation Rate'
FROM
    Sub
GROUP BY
    Sub.Request_at
;
