-- Quality and Defects: Average Defect Rates by Supplier
SELECT
  supplier_name,
  AVG(defect_rates) AS avg_defect_rates
FROM
  beauty_supply_chain
GROUP BY
  supplier_name;
