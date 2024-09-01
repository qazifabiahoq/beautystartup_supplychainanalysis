SELECT product_type, COUNT(*) AS count
FROM beauty_supply_chain
GROUP BY product_type
ORDER BY count DESC;
