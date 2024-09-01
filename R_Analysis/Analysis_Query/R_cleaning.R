# Check for missing values in the dataset
summary(supply_chain_data)
# Check for missing values in the dataset
colSums(is.na(supply_chain_data))
str(supply_chain_data)
# Check for duplicate rows
duplicates <- sum(duplicated(supply_chain_data))
duplicates
# Check unique values in categorical columns
unique(supply_chain_data$`Product type`)
unique(supply_chain_data$`Shipping carriers`)
unique(supply_chain_data$`Customer demographics`)
unique(supply_chain_data$`Inspection results`)
unique(supply_chain_data$`Transportation modes`)
unique(supply_chain_data$`Routes`)
unique(supply_chain_data$`Supplier name`)
unique(supply_chain_data$`Location`)




