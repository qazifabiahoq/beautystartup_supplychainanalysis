# Beauty and Startup Analysis

## Overview

This repository contains a comprehensive analysis of key metrics for a beauty startup, focusing on supply chain efficiency, sales performance, cost management, and quality control. The analysis utilizes SQL for data extraction and R for detailed statistical evaluation and visualization.

## What I Did

#### Data Extraction with SQL:

Analyzed total revenue, top-selling products, average stock levels, lead times, shipping costs, and defect rates.
Calculated manufacturing costs and revenues by product type.

#### Statistical Analysis with R:

Generated visualizations and insights for total revenue, units sold, lead times, manufacturing costs, shipping costs, and defect rates.
Analyzed correlations between key metrics like revenue, number of products sold, manufacturing costs, lead time, and defect rates.
How It Was Done

#### SQL Queries:
Extracted data on revenue, sales, stock levels, lead times, shipping costs, and defect rates.

#### R Analysis:
Created visualizations using R Markdown to illustrate revenue distribution, proportions of units sold, lead times, manufacturing costs, shipping costs, defect rates, and correlations between metrics.
The R Markdown file, named presentation.Rmd, includes all analyses and visual outputs.

## Results

#### Revenue Insights:

Skincare products lead with the highest total revenue of $241,628.17.
Haircare and Cosmetics follow with notable revenues and respective manufacturing costs.

#### Operational Metrics:

Average lead times and shipping costs vary by supplier and carrier.
Defect rates highlight the need for quality improvements, particularly with Supplier 5.

#### Cost Analysis:

Manufacturing costs as a percentage of revenue remain steady, but their impact grows with higher revenues.

#### Correlation Analysis:

Weak to moderate relationships observed between key metrics, suggesting areas for further investigation.

## How It Benefits
For Business Owners: Provides insights into revenue performance, cost management, and operational efficiency.
For Analysts: Offers a detailed methodology and data visualizations to guide decision-making and strategic improvements.
For Suppliers: Identifies potential areas for improvement in lead times and defect rates.

## Files and Output
The analysis is contained in the R_Analysis directory.
All visual outputs and figures are located in the Pic_Output folder.
The R Markdown file used for the analysis is presentation.Rmd.

## How to View the Presentation
1. Clone the repository: git clone https://github.com/qazifabiahoq/beautystartup_supplychainanalysis.git
2. Navigate to the folder R_Analysis to locate the presentation.Rmd file.
3. Open presentation.Rmd in RStudio.
4. Ensure the Pic_Output folder with all the images is present in the repository root, as the presentation relies on these images for visual content.
5. Render the document by clicking the "Knit" button in RStudio to generate the HTML output.
6. If any images are missing, double-check that the Pic_Output folder is correctly placed relative to the presentation.Rmd file.
