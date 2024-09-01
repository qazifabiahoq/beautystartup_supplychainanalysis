SELECT 
  MAX(defect_rates) AS max_defect_rates,
  MIN(defect_rates) AS min_defect_rates,
  AVG(defect_rates) AS avg_defect_rates,
  STDDEV(defect_rates) AS stddev_defect_rates
FROM beauty_supply_chain;
