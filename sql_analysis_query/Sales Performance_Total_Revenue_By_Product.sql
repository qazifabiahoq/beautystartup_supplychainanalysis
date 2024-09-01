-- Sales Performance: Total Revenue by Product Type
SELECT
  product_type,
  SUM(revenue_generated) AS total_revenue
FROM
  beauty_supply_chain
GROUP BY
  product_type
ORDER BY
  total_revenue DESC;
