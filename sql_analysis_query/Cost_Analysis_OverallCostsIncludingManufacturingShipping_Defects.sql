-- Cost Analysis: Overall Costs Including Manufacturing, Shipping, and Defects
SELECT
  product_type,
  SUM(manufacturing_costs) + SUM(shipping_costs) + SUM(defect_rates * number_of_products_sold) AS total_costs
FROM
  beauty_supply_chain
GROUP BY
  product_type;
