# Retail & Customer Insights

An end-to-end data analysis project focused on understanding customer
behavior, sales trends, product performance, and payment methods.

## 📌 Project Overview

This project was completed as part of my Data Analysis course and covers
the full data analysis workflow, from relational database design and SQL
analysis to Python-based data analysis and Power BI visualization.

## 🛠️ Tools & Technologies

- SQL Server
- Python
- Pandas
- Matplotlib
- Power BI
- Power Query

## 🗄️ Phase 1 — SQL Database

Designed a normalized relational database consisting of four tables:

- **Customers** — customer information
- **Products** — product and pricing information
- **Sales** — sales transactions, quantities, and discounts
- **Payments** — payment information linked to sales

### Database Relationships

- Customers → Sales
- Products → Sales
- Sales → Payments

An ER diagram is included in the project files.

## 🔎 Phase 2 — SQL Views

Created SQL views to support analysis:

### `vw_SalesSummary`

Combines customer, product, and sales information to calculate
the total amount after discounts.

### `vw_RecentSales`

Identifies recent sales where a discount was applied.

## 🐍 Phase 3 — Python Analysis

Used Pandas and Matplotlib to clean, transform, analyze, and visualize
the exported data.

### Data transformations

- Calculated `FinalPrice`
- Created customer `AgeGroup` categories
- Prepared data for analysis

### Visualizations

- Sales trends over time
- Top 5 products by revenue
- Sales by customer age group

## 📊 Phase 4 — Power BI Dashboard

Connected Power BI to SQL Server and transformed the relational data
into a Star Schema using Power Query.

The dashboard contains three pages:

### Sales Overview
Provides an overview of sales performance and trends.

### Customer Insights
Explores customer characteristics and purchasing behavior.

### Product Trends
Analyzes product and category performance.

## 📷 Dashboard Preview


Uploading Screen Recording 2026-09-25 130433.mp4…



## 📁 Project Structure

```text
Retail-Customer-Insights/
│
├── Data Generation/
│   ├── Customers.xls
│   ├── Payments.xls
│   ├── Products.xls
│   └── Sales.xls
│
├── Power BI/
│   └── Project.pbix
│
├── Python/
│   └── Project Code.ipynb
│
├── SQL/
│   ├── SQL Views Export/
│   │   ├── RecentSalescsv.csv
│   │   └── SalesSummary.csv
│   ├── Bulk Insert.sql
│   ├── Database & Table Creation.sql
│   └── Views.sql
│
└── README.md
