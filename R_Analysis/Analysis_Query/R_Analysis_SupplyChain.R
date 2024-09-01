# What is the total revenue by product type?
# Load necessary libraries
library(ggplot2)
library(dplyr)

# Summarize the data to get total revenue by product type
revenue_by_product <- supply_chain_data %>%
  group_by(`Product type`) %>%
  summarize(`Total Revenue` = sum(`Revenue generated`))

# Bar plot for total revenue by product type
ggplot(revenue_by_product, aes(x = `Product type`, y = `Total Revenue`, fill = `Product type`)) +
  geom_bar(stat = "identity", color = "black") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Total Revenue by Product Type",
       x = "Product Type",
       y = "Revenue Generated",
       fill = "Product Type") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))




# What is the proportion of units sold by product type?
# Summarize data to get total units sold by product type
units_sold_summary <- supply_chain_data %>%
  group_by(`Product type`) %>%
  summarize(`Total Units Sold` = sum(`Number of products sold`))

# Convert to percentage
units_sold_summary <- units_sold_summary %>%
  mutate(Percentage = `Total Units Sold` / sum(`Total Units Sold`) * 100)

# Plot pie chart for proportion of units sold by product type
ggplot(units_sold_summary, aes(x = "", y = Percentage, fill = `Product type`)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar(theta = "y") +
  theme_void() +
  scale_fill_brewer(palette = "Pastel1") +
  labs(title = "Proportion of Units Sold by Product Type") +
  geom_text(aes(label = paste0(round(Percentage, 1), "%")), position = position_stack(vjust = 0.5), color = "white")



#What are the average lead times from different suppliers?
# Summarize data to get average lead time by supplier
average_lead_time <- supply_chain_data %>%
  group_by(`Supplier name`) %>%
  summarize(`Average Lead Time` = mean(`Lead time`))

# Line plot for average lead time by supplier
ggplot(average_lead_time, aes(x = `Supplier name`, y = `Average Lead Time`, group = 1)) +
  geom_line() +
  geom_point() +
  theme_minimal() +
  labs(title = "Average Lead Time by Supplier",
       x = "Supplier Name",
       y = "Average Lead Time (Days)")


# What is the distribution of manufacturing costs by product type? 
# Box plot for manufacturing costs by product type
ggplot(supply_chain_data, aes(x = `Product type`, y = `Manufacturing costs`, fill = `Product type`)) +
  geom_boxplot() +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Manufacturing Costs by Product Type",
       x = "Product Type",
       y = "Manufacturing Costs")



# What are the average shipping costs by carrier? 
# Summarize data to get average shipping costs by carrier
average_shipping_costs <- supply_chain_data %>%
  group_by(`Shipping carriers`) %>%
  summarize(`Average Shipping Costs` = mean(`Shipping costs`))

# Bar plot for average shipping costs by carrier
ggplot(average_shipping_costs, aes(x = `Shipping carriers`, y = `Average Shipping Costs`, fill = `Shipping carriers`)) +
  geom_bar(stat = "identity", color = "black") +
  geom_text(aes(label = sprintf("%.2f", `Average Shipping Costs`)), vjust = -0.5, color = "black") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set2") +
  labs(title = "Average Shipping Costs by Carrier",
       x = "Shipping Carrier",
       y = "Average Shipping Costs")

# What are the defect rates by supplier? 
# Ensure defect rates are numeric
supply_chain_data <- supply_chain_data %>%
  mutate(`Defect rates` = as.numeric(`Defect rates`))

# Summarize the data to get defect rates by supplier
defect_rates_by_supplier <- supply_chain_data %>%
  group_by(`Supplier name`) %>%
  summarize(`Average Defect Rate` = mean(`Defect rates`, na.rm = TRUE), .groups = 'drop')

# Bar plot for defect rates by supplier
ggplot(defect_rates_by_supplier, aes(x = `Supplier name`, y = `Average Defect Rate`, fill = `Supplier name`)) +
  geom_bar(stat = "identity", color = "black") +
  geom_text(aes(label = sprintf("%.2f", `Average Defect Rate`)), vjust = -0.3, color = "black") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set1") +
  labs(title = "Defect Rates by Supplier",
       x = "Supplier Name",
       y = "Defect Rate",
       fill = "Supplier Name") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
        axis.title.x = element_text(size = 12),
        axis.title.y = element_text(size = 12),
        plot.title = element_text(size = 14, face = "bold"))

                                  
# What is the relationship between revenue and manufacturing costs by product type?
# Summarize data to get total revenue and manufacturing costs by product type
cost_revenue_summary <- supply_chain_data %>%
  group_by(`Product type`) %>%
  summarize(`Total Revenue` = sum(`Revenue generated`),
            `Total Manufacturing Costs` = sum(`Manufacturing costs`))

# Dual-axis bar and line plot
ggplot(cost_revenue_summary, aes(x = `Product type`)) +
  geom_bar(aes(y = `Total Revenue`), stat = "identity", fill = "skyblue") +
  geom_line(aes(y = `Total Manufacturing Costs` * 10, group = 1), color = "red", size = 1) +
  scale_y_continuous(sec.axis = sec_axis(~./10, name = "Total Manufacturing Costs")) +
  theme_minimal() +
  labs(title = "Revenue and Manufacturing Costs by Product Type",
       x = "Product Type",
       y = "Total Revenue") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


#What are the correlations between key metrics such as revenue, number of products sold, manufacturing costs, lead time, and defect rates?
# Select numeric variables for correlation analysis
numeric_vars <- supply_chain_data %>%
  select(`Revenue generated`, `Number of products sold`, `Manufacturing costs`, `Lead time`, `Defect rates`)

# Compute correlation matrix
correlation_matrix <- cor(numeric_vars, use = "complete.obs")

# Plot heatmap
ggcorrplot(correlation_matrix, 
           hc.order = TRUE, 
           type = "lower", 
           lab = TRUE, 
           colors = c("red", "white", "blue"), 
           title = "Correlation Heatmap of Key Metrics")

























