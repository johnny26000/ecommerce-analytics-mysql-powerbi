USE ecommerce_analytics;

--
-- E-COMMERCE BUSINESS ANALYSIS
-- 


-- 1. Overall performance

SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(revenue) AS total_revenue,
    ROUND(AVG(customer_rating), 2) AS avg_rating,
    ROUND(AVG(revenue), 2) AS avg_order_value
FROM ecommerce;


-- 2. Revenue by product category

SELECT
    product_category,
    SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY product_category
ORDER BY total_revenue DESC;


-- 3. Revenue by region

SELECT
    region,
    SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY region
ORDER BY total_revenue DESC;


-- 4. Revenue by year

SELECT
    YEAR(order_date) AS order_year,
    SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY YEAR(order_date)
ORDER BY order_year;


-- 5. Category performance

SELECT
    product_category,
    SUM(quantity) AS total_quantity,
    ROUND(AVG(customer_rating), 2) AS avg_rating,
    ROUND(AVG(revenue), 2) AS avg_revenue,
    SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY product_category
ORDER BY total_revenue DESC;


-- 6. Regional performance

SELECT
    region,
    SUM(revenue) AS total_revenue,
    COUNT(*) AS total_orders,
    ROUND(AVG(customer_rating), 2) AS avg_rating,
    ROUND(AVG(delivery_days), 2) AS avg_delivery_days,
    ROUND(AVG(discount), 2) AS avg_discount
FROM ecommerce
GROUP BY region
ORDER BY total_revenue DESC;


-- 7. Customer rating distribution

SELECT
    customer_rating,
    COUNT(*) AS number_of_orders
FROM ecommerce
GROUP BY customer_rating
ORDER BY customer_rating;


-- 8. Delivery performance

SELECT
    delivery_days,
    COUNT(*) AS number_of_orders,
    ROUND(AVG(customer_rating), 2) AS avg_rating
FROM ecommerce
GROUP BY delivery_days
ORDER BY delivery_days;


-- 9. Revenue by payment method

SELECT
    payment_method,
    COUNT(*) AS total_orders,
    SUM(revenue) AS total_revenue
FROM ecommerce
GROUP BY payment_method
ORDER BY total_revenue DESC;


-- 10. Rank product categories by revenue

WITH category_performance AS (
    SELECT
        product_category,
        SUM(revenue) AS total_revenue
    FROM ecommerce
    GROUP BY product_category
)

SELECT
    product_category,
    total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM category_performance;
