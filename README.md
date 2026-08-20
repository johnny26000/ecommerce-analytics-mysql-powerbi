# E-commerce Sales & Customer Analytics

## Project Overview

This project is an end-to-end data analytics project based on an e-commerce dataset sourced from Kaggle.

The project demonstrates the process of taking raw transactional data, cleaning and analysing it using MySQL, and then developing an interactive Power BI dashboard to communicate business insights.

The analysis focuses on sales performance, product categories, regional performance, customer satisfaction, delivery performance, discounts, and payment methods.

### Analytics Workflow

Kaggle Dataset → MySQL → Data Cleaning → SQL Analysis → Power BI → Business Insights

---

## Business Questions

The project aims to answer the following questions:

1. Which product categories generate the most revenue?
2. Which regions generate the most revenue?
3. How does revenue change over time?
4. Which product categories have the highest sales volume?
5. What is the distribution of customer ratings?
6. How does customer satisfaction differ across product categories and regions?
7. Is there an association between delivery time and customer ratings?
8. How does discount level relate to revenue?
9. Which payment methods are most frequently used?
10. Which regions show the strongest overall operational performance?

---

## Dataset

The dataset was sourced from Kaggle and contains 5,000 e-commerce transactions.

The dataset contains information relating to:

- Orders
- Customers
- Order dates
- Product categories
- Regions
- Quantity
- Unit price
- Discounts
- Payment methods
- Delivery days
- Customer ratings
- Revenue

The original dataset is not modified. Data cleaning and transformation were performed during the MySQL stage of the project.

---

## Data Cleaning

One of the main data-quality issues identified during the project involved the `order_date` column.

The original dates were stored as text using the `M/D/Y` format.

For example: `1/15/2025`

During the initial preparation process, the date values were not consistently recognised as dates because of the difference between the source format and the expected date format.

The date values were therefore converted in MySQL using `STR_TO_DATE()` and stored as a proper `DATE` field.

Example: ```sql
STR_TO_DATE(order_date, '%m/%d/%Y')

Additional data-quality checks were performed for missing values, duplicate order IDs, invalid ratings, negative values, and other potentially inconsistent records.

---

SQL Analysis

MySQL was used for:

Database creation
Table creation
Data import
Data cleaning
Data-quality checks
Aggregations
GROUP BY analysis
Common Table Expressions (CTEs)
Window functions
Ranking


The cleaned MySQL dataset was connected to Power BI to create an interactive four-page dashboard.

Page 1 — Executive Overview

The executive overview contains:

Total Revenue
Total Orders
Total Customers
Average Order Value
Average Customer Rating
Revenue by Year
Revenue by Product Category
Revenue by Region

<img width="2767" height="1600" alt="Executive Overview" src="https://github.com/user-attachments/assets/6165e4dc-7827-4040-ad3a-a7529cb8c66d" />

Page 2 — Sales & Product Performance

This page analyses:

Revenue by Product Category
Quantity by Product Category
Monthly Revenue
Average Order Value by Category
Category Performance

<img width="2767" height="1600" alt="Sales   Product Performance" src="https://github.com/user-attachments/assets/a4bac5fe-5523-4057-b208-6f6c83deb222" />


Page 3 — Customer & Satisfaction

This page analyses:

Customer Rating Distribution
Average Rating by Category
Average Rating by Region
Delivery Days vs Customer Rating
Top Customers by Revenue

<img width="2767" height="1600" alt="Customer   Satisfaction" src="https://github.com/user-attachments/assets/f2a4316d-a2c6-4845-98fd-7b2b2d2d4a64" />

Page 4 — Operations & Recommendations

This page analyses:

Delivery Performance
Average Delivery Days by Region
Discount vs Revenue
Payment Methods
Regional Performance
Key Business Findings
Recommendations
Key Results

<img width="1599" height="944" alt="Operations   Recommendations" src="https://github.com/user-attachments/assets/1166ad77-4805-4dc8-ae5a-0428337f204d" />

The analysis identified several notable results.

Total revenue was approximately €5.11 million.
The dataset contains 5,000 orders.
The dataset contains 989 unique customers.
Average customer rating was approximately 2.97 out of 5.
Electronics generated the highest revenue among the product categories.
Delivery performance varied across regions.
Customer ratings showed variation across categories and regions.

Further interpretation and recommendations are presented in the Power BI dashboard

---

Tools & Technologies
MySQL
SQL
Power BI
Power Query
DAX

---

This project demonstrates an end-to-end approach to data analytics, starting with raw transactional data and progressing through data cleaning, SQL analysis, data visualization, and business interpretation.

The project focuses not only on producing visualisations, but also on using data to identify patterns and support business decision-making.
