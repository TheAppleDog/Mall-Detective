# Mall Detective: Where Are the Visitors—and the Money?

## Project Overview

**Mall Detective** is a beginner-friendly retail and mall operations analytics project designed to explore sales performance, transaction behaviour, tenant categories, and visitor footfall.

The goal is to turn raw operational data into useful business insights using Excel, SQL, Statistics, and Power BI.

**Dataset note:** This project uses a simulated dataset created for learning and portfolio demonstration. It does not represent actual data from a real mall or business.

## Business Questions

This project explores the following questions:

1. How much net sales revenue was recorded across the dataset?
2. Which mall zones generate the highest sales?
3. Which tenant categories perform best by sales and transaction count?
4. Which payment methods are used most frequently?
5. How do recorded visitors vary across mall entrances?
6. How do weekday and weekend sales compare?
7. How are transaction values distributed, and are there unusually high or low transactions?

## Tools Used

- **Microsoft Excel:** Data exploration, calculated columns, PivotTables, and charts.
- **SQL (SQLite):** Aggregation, filtering, joins, grouping, and sorting.
- **Statistics:** Mean, median, standard deviation, quartiles, IQR, and outlier identification.
- **Power BI:** KPI cards, sales trend analysis, zone comparisons, and interactive filtering.

## Dataset

The project workbook contains five sheets:

- `transactions` — transaction-level sales and purchase information.
- `footfall` — visitor counts recorded by entrance and time period.
- `tenants` — tenant information, zones, and categories.
- `campaigns` — campaign-related information.
- `data_dictionary` — descriptions of the dataset fields.

The dataset contains 3,200 transaction records, 720 footfall records, 30 tenant records, and 4 campaign records.

## Methodology

### 1. Excel Analysis

- Explored and structured the dataset.
- Added tenant-related lookup information to transaction records.
- Created PivotTables for monthly sales, zone performance, category performance, payment methods, and discounts.
- Analysed recorded footfall by entrance.
- Created charts to compare sales trends and operational performance.

### 2. SQL Analysis

Used SQL queries to calculate key metrics and analyse:

- Overall transaction count, sales, average basket value, items sold, and average discount.
- Net sales by mall zone.
- Net sales by tenant category.
- Payment method usage and associated sales.
- Recorded visitors by entrance.
- Sales and transaction patterns across different discount bands.

Text-formatted currency and percentage values were cleaned and converted for numeric analysis where necessary.

### 3. Statistical Analysis

- Compared mean and median transaction values.
- Measured transaction-value variation using standard deviation.
- Calculated quartiles and the interquartile range (IQR).
- Identified potential outliers using the 1.5 × IQR rule.
- Compared weekday and weekend sales patterns.

Outliers were treated as observations for investigation, not automatically classified as errors.

### 4. Power BI Dashboard

Created a dashboard to present key sales metrics and make the analysis easier to explore visually.

Dashboard components include:

- Net Sales KPI
- Transaction Count KPI
- Average Basket Value KPI
- Monthly Net Sales trend
- Net Sales by Mall Zone
- Mall Zone slicer

## Key Findings

*Replace these placeholders with findings verified from the completed dashboard and analysis.*

- **Sales performance:** [Identify the highest-performing mall zone and its sales.]
- **Category performance:** [Identify the highest-selling tenant category.]
- **Customer spending:** [Compare the mean and median transaction values.]
- **Footfall:** [Identify the entrance with the highest recorded visitor count.]
- **Weekday vs weekend:** [Summarise the observed sales pattern.]
- **Outliers:** [Describe any notable high- or low-value transactions, if found.]

## Business Recommendations

Recommendations should follow the actual results. Potential areas to investigate include:

- Reviewing the performance of lower-sales zones and categories.
- Understanding differences in average basket value across categories.
- Aligning staffing or promotional planning with observed visitor patterns.
- Investigating unusual transactions before deciding whether they represent errors or legitimate purchases.

These are possible actions for further investigation, not proven outcomes from the simulated dataset.

## Limitations

- The dataset is simulated and does not represent actual mall operations.
- Recorded footfall and transaction data do not establish a reliable customer-level link, so a defensible conversion rate cannot be calculated.
- Tenant operating costs are not provided, so profit and profitability cannot be calculated reliably.
- Observed patterns do not establish causation.
- Campaign effectiveness cannot be established without a suitable evaluation design and supporting data.

## Project Outcome

This project demonstrates an end-to-end beginner analytics workflow: structuring data, calculating metrics, querying relational tables, applying descriptive statistics, and presenting findings in an interactive business dashboard.

## Repository Structure

```text
Mall-Detective/
├── README.md
├── Mall_Detective_Analysis.xlsx
├── Mall_Detective_SQL_Queries.sql
├── Mall_Detective_PowerBI.pbix
└── screenshots/
    └── mall_overview.png
```

*Keep only files that you actually add to the repository. The screenshot folder is optional.*

