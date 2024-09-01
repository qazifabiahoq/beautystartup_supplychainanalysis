SELECT 
  MAX(stock_levels) AS max_stock,
  MIN(stock_levels) AS min_stock,
  AVG(stock_levels) AS avg_stock
FROM beauty_supply_chain;
