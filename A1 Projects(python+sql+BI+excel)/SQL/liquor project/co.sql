CREATE TABLE store_info(
store_id INT PRIMARY KEY,
manager_name VARCHAR(100),
open_year INT
); 


INSERT INTO store_info (store_id, manager_name, open_year)
VALUES
(101, 'Alice Smith', 2018),
(102, 'John Doe', 2020),
(103, 'Priya Sharma', 2019),
(104, 'Rahul Mehta', 2021),
(105, 'Emily Chen', 2022),
(106, 'David Kim', 2017),
(107, 'Anita Rao', 2019),
(108, 'Raj Verma', 2020),
(109, 'Zoe Lee', 2021),
(110, 'Mark Wilson', 2023);

 SELECT 
 ls.invoice_no,
 ls.store_id,
 ls.store_name,
 si.manager_name,
 si.open_year
 FROM liquor_sale AS ls
 INNER JOIN store_info AS si
 ON ls.store_id= si.store_id;

 SELECT * FROM liquor_sale;