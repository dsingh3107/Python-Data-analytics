SELECT 
ls.city,
FORMAT(ls.date, 'yyyy-MM') AS month,
ls.store_id,
SUM(ls.bottles_sold) AS total_bottles_sold,
RANK() OVER (
PARTITION BY ls.city, FORMAT(ls.date,'yyyy-MM')
ORDER BY SUM(ls.bottles_sold) DESC
) AS monthly_city_rank
FROM liquor_sale AS ls
JOIN store_info AS si
ON ls.store_id = si.store_id
GROUP BY
ls.store_id,
ls.city,
FORMAT (ls.date,'yyyy-MM');

SELECT * FROM
( SELECT city, store_id, date, bottles_sold,
ROW_NUMBER() OVER (
PARTITION BY city
ORDER  BY date DESC
) AS rn
FROM liquor_sale
)AS sub
WHERE rn=1;


SELECT city, store_id, date, bottles_sold,
RANK() OVER (PARTITION BY city ORDER BY bottles_sold DESC) AS sale
FROM liquor_sale
WHERE city IN ('Cedar Rapids')

SELECT * FROM liquor_sale;
