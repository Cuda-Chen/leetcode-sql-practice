# Use two views with faster result
SELECT
    w2.id
FROM
    Weather w1,
    Weather w2
WHERE
    DATEDIFF(w2.recordDate, w1.recordDate) = 1
    AND w2.Temperature > w1.Temperature;
    
