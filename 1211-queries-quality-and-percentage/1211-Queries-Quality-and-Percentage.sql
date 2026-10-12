SELECT query_name
, ROUND(AVG(rating / position), 2) as quality
, ROUND(SUM(case WHEN rating < 3 THEN 1 ELSE 0 END) *100 / COUNT(*), 2)
-- ROUND( SUM( rating < 3) *100 / COUNT(query_name), 2)
AS poor_query_percentage
FROM Queries
GROUP BY query_name