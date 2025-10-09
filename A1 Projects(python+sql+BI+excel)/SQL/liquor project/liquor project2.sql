insert into dbo.liquor_sale(
invoice_no	,date,store_id,store_name,city
,category,item,bottle_volume_ml,bottle_price,
bottles_sold,sale_dollars
)
values
('INV001', '2023-01-03', 101, 'Hy-Vee #1', 'Des Moines', 'Whiskey', 'Jameson', 750, 19.99, 12, 239.88),
('INV002', '2023-01-04', 102, 'Fareway #4', 'Cedar Rapids', 'Vodka', 'Tito Handmade', 750, 18.49, 20, 369.80),
('INV003', '2023-01-05', 103, 'Kum & Go #3', 'Iowa City', 'Rum', 'Bacardi Gold', 750, 14.99, 10, 149.90);
select * from liquor_sale

/* TOP ITEMS/LIQOUR*/
select top 2 item, SUM(sale_dollars) AS total_sales
FROM liquor_sale
GROUP BY item
ORDER BY total_sales DESC;

/*STORE RANKING*/
SELECT store_name, city, SUM(sale_dollars) AS store_revenue
from liquor_sale
GROUP BY store_name,city
order by store_revenue DESC;

/*LIQUOR CATEGORY*/
select category, SUM(bottles_sold) AS total_bottles
FROM liquor_sale
group by category
order by total_bottles DESC;

/*AVERAGE BOTTLE PRICE BY CITY*/
 select city, AVG(bottle_price) AS avg_price
 FROM liquor_sale
 group by city
 order by avg_price DESC;

 /*highest price per bottle*/
SELECT item, bottle_price
FROM liquor_sale
order by bottle_price DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;


/*monthly revenue*/
select FORMAT(date, 'MM-yyyy') AS MONTH, SUM(sale_dollars) AS monthly_sales
FROM liquor_sale
group by FORMAT(date, 'MM-yyyy')
order by month;



