  SELECT n, CASE
            WHEN p IS Null THEN "Root"
            WHEN n IN (SELECT DISTINCT(p)
                       FROM bst) THEN "Inner"
            ELSE "Leaf"
            END
    FROM bst
ORDER BY n;
