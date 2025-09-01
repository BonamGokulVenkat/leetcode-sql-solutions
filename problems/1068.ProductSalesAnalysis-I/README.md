📊 1068. Product Sales Analysis I
Problem Description

We are given two tables:

Sales

Contains sales data for different products across years.

Includes fields: sale_id, product_id, year, quantity, and price.

Product

Contains product details.

Includes fields: product_id (primary key) and product_name.

The task is to report the product name, year, and price for each sale record in the Sales table.

Example

Input

Sales

sale_id	product_id	year	quantity	price
1	    100	        2008	10	        5000
2	    100	        2009	12	        5000
7	    200	        2011	15	        9000

Product

product_id	product_name
100	        Nokia
200	        Apple
300	        Samsung

Output

product_name	year	price
Nokia	        2008	5000
Nokia	        2009	5000
Apple	        2011	9000