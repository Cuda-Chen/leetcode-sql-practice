# IF statement

# Write your MySQL query statement below
SELECT
    tree.id,
    IF(ISNULL(tree.p_id), 'Root',
       IF(tree.id IN (SELECT p_id FROM Tree), 'Inner', 'Leaf')) Type
FROM
    Tree tree
ORDER BY
    tree.id
;
