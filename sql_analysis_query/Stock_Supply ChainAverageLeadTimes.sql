-- Stock and Supply Chain: Average Lead Times
SELECT
  AVG(lead_time) AS avg_supplier_lead_time,
  AVG(manufacturing_lead_time) AS avg_manufacturing_lead_time
FROM
  beauty_supply_chain;