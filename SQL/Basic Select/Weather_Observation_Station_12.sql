SELECT DISTINCT(city)
  FROM station
 WHERE NOT LOWER(LEFT(city, 1)) IN ("a", "e", "i", "o", "u")
   AND NOT LOWER(RIGHT(city, 1)) IN ("a", "e", "i", "o", "u");
