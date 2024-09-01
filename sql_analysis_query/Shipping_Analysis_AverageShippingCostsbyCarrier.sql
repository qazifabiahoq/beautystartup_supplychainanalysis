-- Shipping Analysis: Average Shipping Costs by Carrier
SELECT
  shipping_carriers,
  AVG(shipping_costs) AS avg_shipping_costs
FROM
  beauty_supply_chain
GROUP BY
  shipping_carriers;
