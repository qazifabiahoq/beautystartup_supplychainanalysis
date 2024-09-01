SELECT 
  inspection_results,
  COUNT(*) AS count
FROM beauty_supply_chain
GROUP BY inspection_results;
