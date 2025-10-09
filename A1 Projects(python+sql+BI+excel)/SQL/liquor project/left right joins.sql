SELECT 
ls.invoice_no,
ls.store_id,
ls.store_name,
si.manager_name,
si.open_year
FROM liquor_sale AS ls
LEFT JOIN store_info AS si
ON ls.store_id = si.store_id;

SELECT 
ls.invoice_no,
ls.store_name,
ls.store_id,
si.open_year,
si.manager_name
FROM liquor_sale AS ls
RIGHT JOIN store_info AS si
ON ls.store_id=si.store_id;

SELECT 
ls.store_id AS liquor_store,
si.store_id AS info_store,
ls.invoice_no,
si.manager_name

FROM liquor_sale AS ls
FULL OUTER JOIN store_info AS si
ON ls.store_id = si.store_id;

SELECT * FROM liquor_sale;
SELECT * FROM store_info;

SELECT 
ls.store_id,
ls.bottles_sold,
si.manager_name,
si.open_year
FROM liquor_sale AS ls
LEFT JOIN store_info AS si
ON ls.store_id= si.store_id;

SELECT 
si.manager_name,
SUM(ls.bottles_sold) AS total_bottles_sold
FROM liquor_sale AS ls
JOIN store_info AS si
ON ls.store_id = si.store_id
WHERE ls.date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY si.manager_name;

select * from liquor_sale;
select * from store_info;
