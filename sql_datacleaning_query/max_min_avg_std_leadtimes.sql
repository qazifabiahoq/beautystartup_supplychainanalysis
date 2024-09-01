SELECT 
  MAX(lead_times) AS max_lead_times,
  MIN(lead_times) AS min_lead_times,
  AVG(lead_times) AS avg_lead_times,
  STDDEV(lead_times) AS stddev_lead_times
FROM beauty_supply_chain;
