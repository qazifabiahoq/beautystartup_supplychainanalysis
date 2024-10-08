SELECT
  COUNT(*) AS total_rows,
  COUNT(product_type) AS non_null_product_type,
  COUNT(sku) AS non_null_sku,
  COUNT(price) AS non_null_price,
  COUNT(availability) AS non_null_availability,
  COUNT(number_of_products_sold) AS non_null_number_of_products_sold,
  COUNT(revenue_generated) AS non_null_revenue_generated,
  COUNT(customer_demographics) AS non_null_customer_demographics,
  COUNT(stock_levels) AS non_null_stock_levels,
  COUNT(lead_times) AS non_null_lead_times,
  COUNT(order_quantities) AS non_null_order_quantities,
  COUNT(shipping_times) AS non_null_shipping_times,
  COUNT(shipping_carriers) AS non_null_shipping_carriers,
  COUNT(shipping_costs) AS non_null_shipping_costs,
  COUNT(supplier_name) AS non_null_supplier_name,
  COUNT(location) AS non_null_location,
  COUNT(lead_time) AS non_null_lead_time,
  COUNT(production_volumes) AS non_null_production_volumes,
  COUNT(manufacturing_lead_time) AS non_null_manufacturing_lead_time,
  COUNT(manufacturing_costs) AS non_null_manufacturing_costs,
  COUNT(inspection_results) AS non_null_inspection_results,
  COUNT(defect_rates) AS non_null_defect_rates,
  COUNT(transportation_modes) AS non_null_transportation_modes,
  COUNT(routes) AS non_null_routes,
  COUNT(costs) AS non_null_costs
FROM
  beauty_supply_chain;
