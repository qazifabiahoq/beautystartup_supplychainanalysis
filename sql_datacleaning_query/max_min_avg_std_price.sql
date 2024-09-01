SELECT 
  MAX(price) AS max_price,
  MIN(price) AS min_price,
  AVG(price) AS avg_price,
  STDDEV(price) AS stddev_price
FROM beauty_supply_chain;
