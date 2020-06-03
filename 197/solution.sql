# Write your MySQL query statement below
SELECT
    Weather.Id AS 'ID'
FROM
    Weather
        JOIN
    Weather w1 ON DATEDIFF(Weather.RecordDate, w1.RecordDate) = 1
        AND Weather.Temperature > w1.Temperature;
