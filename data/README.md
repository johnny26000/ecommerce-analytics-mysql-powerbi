# Data

## Dataset Source

The dataset used in this project was sourced from Kaggle.

The original dataset was used as the starting point for the analysis. The raw data was subsequently imported into MySQL, where data cleaning and transformation were performed.

### Original Dataset

Source: Kaggle

Dataset name: E-commerce Dataset

Dataset URL: https://www.kaggle.com/datasets/abbas829/ecommerce-sales-dataset/data

### Data Handling

The original dataset was preserved separately from the cleaned data.

The main transformation performed during the MySQL stage was the conversion of the `order_date` field from text in `M/D/Y` format into a proper SQL `DATE` field.
