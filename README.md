

# Beauty Startup Supply Chain and Sales Analysis

## Project Overview

This repository presents a comprehensive analysis of critical business metrics for a beauty startup, focusing on **supply chain efficiency, sales performance, cost management, and quality control**. The analysis combines **SQL** for robust data extraction with **R** for detailed statistical evaluation and insightful visualizations.

---

## Why This Matters

* **For Business Owners:** Delivers actionable insights into revenue streams, cost drivers, and operational bottlenecks to guide strategic decision-making.
* **For Analysts:** Demonstrates a rigorous methodology combining SQL and R, with clear visualizations to support deeper data-driven investigations.
* **For Suppliers:** Highlights areas requiring improvement, such as lead times and defect rates, fostering stronger supply chain partnerships.

---

## What Was Done

### Data Extraction (SQL)

* Extracted key metrics including total revenue, top-selling products, average inventory levels, lead times, shipping costs, defect rates, manufacturing costs, and revenue by product type.

### Statistical Analysis and Visualization (R)

* Created dynamic visualizations to explore revenue distribution, units sold, operational lead times, cost components, defect rates, and correlations between performance indicators.
* Developed an R Markdown report (`presentation.Rmd`) combining analyses with graphical outputs.

---

## Key Findings

### Revenue Insights

* **Skincare products** lead sales with a total revenue of **\$241,628.17**, followed by Haircare and Cosmetics, each with significant revenue contributions.
* Manufacturing costs align with product category revenue, impacting overall profitability.

### Operational Metrics

* Lead times and shipping costs vary across suppliers and carriers, identifying opportunities for logistical improvements.
* Elevated defect rates with **Supplier 5** indicate a need for targeted quality control interventions.

### Cost Analysis

* Manufacturing costs remain relatively stable as a percentage of revenue, yet their impact grows as revenue scales.

### Correlation Patterns

* Weak to moderate correlations among revenue, units sold, lead times, costs, and defect rates suggest complex interactions warranting further exploration.

---

## How to Use This Analysis

* **Business leaders** can leverage these insights to optimize supply chains, improve product quality, and refine cost structures.
* **Data professionals** can build upon the provided SQL queries and R code to deepen analyses or tailor the approach for other startups.
* **Suppliers** receive actionable feedback on operational performance to enhance collaboration and reduce defects.

---

## Project Files and Access

* **R\_Analysis/**: Contains all analysis scripts and the R Markdown presentation (`presentation.Rmd`).
* **Pic\_Output/**: Stores all visualizations and graphical output used in the presentation.
* **GitHub Repository**:
  [https://github.com/qazifabiahoq/beautystartup\_supplychainanalysis.git](https://github.com/qazifabiahoq/beautystartup_supplychainanalysis.git)

---

## Viewing Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/qazifabiahoq/beautystartup_supplychainanalysis.git
   ```
2. Navigate to the `R_Analysis` folder and open `presentation.Rmd` in RStudio.
3. Ensure the `Pic_Output` folder is in the repository root (required for image rendering).
4. Click the **Knit** button in RStudio to generate the HTML presentation.
5. Verify all images load correctly; if not, confirm the `Pic_Output` folder is correctly placed.

---


