WITH sub_query AS (
  SELECT lat_n, ROW_NUMBER() OVER (ORDER BY lat_n) AS row_num)
    FROM station)

SELECT ROUND(AVG(lat_n), 4)
  FROM sub_query
 WHERE row_num = (SELECT CEIL((COUNT(*) + 1) / 2) FROM station)
    OR row_num = (SELECT FLOOR((COUNT(*) + 1) / 2) FROM station);
