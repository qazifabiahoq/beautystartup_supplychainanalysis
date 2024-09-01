-- Stock and Supply Chain: Average Stock Levels by Product Type
SELECT
  product_type,
  AVG(stock_levels) AS avg_stock_levels
FROM
  beauty_supply_chain
GROUP BY
  product_type;
