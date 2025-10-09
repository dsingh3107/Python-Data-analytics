SELECT *,
  ROW_NUMBER() OVER (ORDER BY date) AS row_num
FROM liquor_sale;
SELECT 
store_id,
date,
bottles_sold,
LAG(bottles_sold) OVER (PARTITION BY store_id ORDER BY date) AS previous_day_sold
FROM liquor_sale;

SELECT 
store_id,
date,
item,
bottles_sold,
LAG(bottles_sold) OVER (PARTITION BY store_id ORDER BY date) AS prev_day_sold,
bottles_sold - LAG(bottles_sold) OVER (PARTITION BY store_id ORDER BY date) AS change_in_sales
FROM liquor_sale

SELECT
store_id,
date,
item,
bottles_sold,
LEAD(bottles_sold) OVER (PARTITION BY store_id ORDER BY date) AS next_day_sold
FROM liquor_sale;

SELECT 
invoice_no,
store_id,
date,
bottles_sold,
NTILE(3) OVER (ORDER BY bottles_sold DESC) sales_tier
FROM liquor_sale;