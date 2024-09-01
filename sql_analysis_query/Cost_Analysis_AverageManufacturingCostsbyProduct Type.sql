-- Cost Analysis: Average Manufacturing Costs by Product Type
SELECT
  product_type,
  AVG(manufacturing_costs) AS avg_manufacturing_costs
FROM
  beauty_supply_chain
GROUP BY
  product_type;
