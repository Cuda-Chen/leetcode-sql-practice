# https://leetcode.com/problems/exchange-seats/discuss/393915/MySQL-SOLUTION-%2B-EXPLANATION

# Write your MySQL query statement below
SELECT
    CASE
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 = 1 AND id != (SELECT COUNT(*) FROM seat) THEN id + 1
        ELSE id
    END
    AS id, student
FROM
    seat
ORDER BY id;
