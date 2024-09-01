-- Sales Performance: Top Selling Products by Product Type
SELECT
  product_type,
  sku,
  SUM(number_of_products_sold) AS total_units_sold
FROM
  beauty_supply_chain
GROUP BY
  product_type,
  sku
ORDER BY
  total_units_sold DESC;
