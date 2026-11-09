with result as (
    SELECT num FROM MyNumbers
    GROUP BY num
    HAVING count(num) = 1
)
SELECT MAX(num) as num FROM result