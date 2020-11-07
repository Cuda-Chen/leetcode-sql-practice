# https://leetcode.com/problems/reformat-department-table/discuss/376241/MySQL-Solution-with-381-ms-faster-than-100.00

# Write your MySQL query statement below
SELECT
    id,
    SUM(IF(month = 'Jan', Revenue, NULL)) AS Jan_Revenue,
    SUM(IF(month = 'Feb', Revenue, NULL)) AS Feb_Revenue,
    SUM(IF(month = 'Mar', Revenue, NULL)) AS Mar_Revenue,
    SUM(IF(month = 'Apr', Revenue, NULL)) AS Apr_Revenue,
    SUM(IF(month = 'May', Revenue, NULL)) AS May_Revenue,
    SUM(IF(month = 'Jun', Revenue, NULL)) AS Jun_Revenue,
    SUM(IF(month = 'Jul', Revenue, NULL)) AS Jul_Revenue,
    SUM(IF(month = 'Aug', Revenue, NULL)) AS Aug_Revenue,
    SUM(IF(month = 'Sep', Revenue, NULL)) AS Sep_Revenue,
    SUM(IF(month = 'Oct', Revenue, NULL)) AS Oct_Revenue,
    SUM(IF(month = 'Nov', Revenue, NULL)) AS Nov_Revenue,
    SUM(IF(month = 'Dec', Revenue, NULL)) AS Dec_Revenue
FROM
    Department
GROUP BY 
    id;
