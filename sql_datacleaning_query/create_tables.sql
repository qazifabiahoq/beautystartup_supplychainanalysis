CREATE TABLE beauty_supply_chain (
    product_type VARCHAR(50),
    sku VARCHAR(50) PRIMARY KEY,
    price NUMERIC(10, 2),
    availability INT,
    number_of_products_sold INT,
    revenue_generated NUMERIC(15, 2),
    customer_demographics VARCHAR(50),
    stock_levels INT,
    lead_times INT,
    order_quantities INT,
    shipping_times INT,
    shipping_carriers VARCHAR(50),
    shipping_costs NUMERIC(10, 2),
    supplier_name VARCHAR(50),
    location VARCHAR(50),
    lead_time INT,
    production_volumes INT,
    manufacturing_lead_time INT,
    manufacturing_costs NUMERIC(15, 2),
    inspection_results VARCHAR(50),
    defect_rates NUMERIC(5, 2),
    transportation_modes VARCHAR(50),
    routes VARCHAR(50),
    costs NUMERIC(15, 2)
);
