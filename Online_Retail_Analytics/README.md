# Online Retail Sales & Customer Analytics

## Project Overview

This project analyzes an online retail dataset to understand sales performance, customer activity, products, countries, and returns using SQL and Power BI.

The project follows an end-to-end data analytics workflow:

- Data cleaning and preparation
- SQL data analysis
- Data modeling
- DAX calculations
- Interactive Power BI dashboard

## Dataset

The project uses the **UCI Online Retail dataset**, containing **541,909 original transaction records**.

The dataset includes:

- Invoice Number
- Stock Code
- Description
- Quantity
- Invoice Date
- Unit Price
- Customer ID
- Country

## Tools Used

- **MySQL** — data storage and SQL analysis
- **Power BI** — dashboard and visualization
- **Power Query** — data cleaning and transformation
- **DAX** — calculated measures and time-based analysis
- **Excel/CSV** — source data handling

## Data Cleaning

Key data-cleaning steps included:

- Removed exact duplicate records
- Identified cancelled invoices
- Identified returned items using negative quantities
- Created Revenue using Quantity × Unit Price
- Created Transaction Type to distinguish sales and cancellations
- Created Return Flag to identify returned items
- Converted Invoice Date into a proper date/time format
- Preserved missing Customer IDs where appropriate

After duplicate removal, the cleaned dataset contained **536,641 records**.

## SQL Analysis

MySQL was used to analyze the cleaned retail data, including:

- Total revenue
- Number of orders
- Number of products
- Number of customers
- Revenue by country
- Revenue by product
- Cancelled transactions
- Returned quantities
- Missing customer IDs
- Duplicate records

## Power BI Dashboard

The dashboard includes:

### Key KPIs

- Total Revenue
- Total Orders
- Total Customers
- Total Quantity Sold
- Average Order Value
- Return Rate

### Visualizations

- Monthly Revenue Trend
- Revenue by Country
- Top 10 Products by Revenue
- Sales by Day of Week
- Sales by Hour
- Sales vs Returns
- Return Rate by Country
- Month-over-Month Revenue %
- Year-over-Year Revenue %
- Year-to-Date Revenue
- Month-to-Date Revenue

## DAX Analysis

DAX measures were created for:

- Total Revenue
- Total Orders
- Total Customers
- Quantity Sold
- Average Order Value
- Returned Units
- Return Rate
- Previous Month Revenue
- MoM Revenue %
- Previous Year Revenue
- YoY Revenue %
- YTD Revenue
- MTD Revenue
- Revenue per Customer
- Orders per Customer

## Skills Demonstrated

- SQL
- MySQL
- Power BI
- Power Query
- DAX
- Data Cleaning
- Data Transformation
- Data Modeling
- Data Visualization
- Time Intelligence
- KPI Development
- Business Analysis

## Project Files

- `README.md` — project documentation
- `Online Retail Sales & Customer Analysis.pbix` — Power BI dashboard
- `dashboard.png` — dashboard screenshot

## Conclusion

This project demonstrates an end-to-end data analytics workflow, starting with raw transactional data and progressing through data cleaning, SQL analysis, DAX calculations, and interactive Power BI visualization.
