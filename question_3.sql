-- Which German store type had the highest total revenue for 2022?
SELECT 
    dd.year,
    cr.country,
    SUM(cr.sale_price * cr.product_quantity) AS "Total Revenue",
    ds.store_type
FROM 
    dim_date dd
INNER JOIN 
    country_region cr ON dd.date = cr.dates
INNER JOIN
    dim_store ds ON cr.country = ds.country
WHERE
    cr.country = 'Germany' AND
    dd.year = 2022
GROUP BY
    dd.year, cr.country, ds.store_type
ORDER BY
    "Total Revenue" DESC
LIMIT 1;

