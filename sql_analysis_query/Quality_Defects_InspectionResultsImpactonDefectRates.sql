-- Quality and Defects: Inspection Results Impact on Defect Rates
SELECT
  inspection_results,
  AVG(defect_rates) AS avg_defect_rates,
  COUNT(*) AS total_defects_count,
  (SUM(defect_rates) / COUNT(*)) * 100 AS percentage_defective_products
FROM
  beauty_supply_chain
GROUP BY
  inspection_results;
