-- Create a view where the rows are the store types and the columns are the total sales, percentage of total sales and the count of orders
CREATE VIEW "Sale Store" AS
SELECT
    ds.store_type AS "Store Type",
    SUM(dp.sale_price) AS "Total Sales",
    COUNT(o.product_quantity) AS "Order Count",
     (SUM(dp.sale_price) / SUM(SUM(dp.sale_price)) OVER ()) * 100 AS "Percentage  Total Sales"
FROM 
    orders  o
INNER JOIN
    dim_store ds ON o.store_code = ds.store_code
LEFT JOIN
    dim_product dp ON o.product_code = dp.product_code
GROUP BY
    ds.store_type

--  Query the table to see result
SELECT * FROM  "Sale Store"