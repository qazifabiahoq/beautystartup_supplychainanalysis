SELECT 
  MAX(shipping_costs) AS max_shipping_costs,
  MIN(shipping_costs) AS min_shipping_costs,
  AVG(shipping_costs) AS avg_shipping_costs,
  STDDEV(shipping_costs) AS stddev_shipping_costs
FROM beauty_supply_chain;
