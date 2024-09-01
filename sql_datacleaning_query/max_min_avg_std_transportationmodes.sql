SELECT 
  transportation_modes,
  COUNT(*) AS count
FROM beauty_supply_chain
GROUP BY transportation_modes;
