-- Shipping Analysis: Average Shipping Times by Carrier
SELECT
  shipping_carriers,
  AVG(shipping_times) AS avg_shipping_times
FROM
  beauty_supply_chain
GROUP BY
  shipping_carriers;
