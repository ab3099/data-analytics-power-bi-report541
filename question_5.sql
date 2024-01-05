--Which product category generated the most profit for the "Wiltshire, UK" region in 2021?
SELECT
    dp.category,
    ds.full_region,
    dim_date.year,
    SUM(cr.product_quantity * (cr.sale_price - cr.cost_price)) AS TotalProfit
FROM
    country_region cr
INNER JOIN
    dim_product dp ON cr.sale_price = dp.sale_price  
INNER JOIN
    dim_store ds ON cr.country = ds.country
INNER JOIN
    dim_date ON cr.dates = dim_date.date
WHERE
    ds.full_region = 'Wiltshire, UK' AND
    dim_date.year = 2021
GROUP BY
    dp.category, ds.full_region, dim_date.year
ORDER BY
    TotalProfit DESC
LIMIT 1;
