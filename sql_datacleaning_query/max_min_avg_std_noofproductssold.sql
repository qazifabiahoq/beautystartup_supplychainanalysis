SELECT 
  MAX(number_of_products_sold) AS max_sold,
  MIN(number_of_products_sold) AS min_sold,
  AVG(number_of_products_sold) AS avg_sold
FROM beauty_supply_chain;
