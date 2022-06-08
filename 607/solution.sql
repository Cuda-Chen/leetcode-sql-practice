# CTE + NOT IN + no JOIN + subquery

# Write your MySQL query statement below
WITH Sub AS (
    SELECT
        o.sales_id
    FROM
        Orders o,
        Company c
    WHERE
        o.com_id = (
            SELECT com_id
            FROM Company
            WHERE name = 'RED'
        )
)

SELECT
    name
FROM
    SalesPerson s
WHERE
    s.sales_id NOT IN (SELECT sales_id FROM Sub)
;
