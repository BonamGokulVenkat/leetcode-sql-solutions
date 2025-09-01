1757. Recyclable and Low Fat Products
Problem Description

You are given a table Products with the following columns:

product_id (int, primary key) – unique identifier for each product.

low_fats (enum: 'Y' or 'N') – indicates whether the product is low fat.

recyclable (enum: 'Y' or 'N') – indicates whether the product is recyclable.

The task is to find the ids of products that are both low fat and recyclable.

Example

Input:

Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+


Output:

+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+


Explanation:

Product 1 → Low fat = Y and Recyclable = Y ✅

Product 3 → Low fat = Y and Recyclable = Y ✅

All other products don’t satisfy both conditions.