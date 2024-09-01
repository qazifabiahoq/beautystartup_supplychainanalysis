SELECT 
  MAX(manufacturing_costs) AS max_manufacturing_costs,
  MIN(manufacturing_costs) AS min_manufacturing_costs,
  AVG(manufacturing_costs) AS avg_manufacturing_costs,
  STDDEV(manufacturing_costs) AS stddev_manufacturing_costs
FROM beauty_supply_chain;
