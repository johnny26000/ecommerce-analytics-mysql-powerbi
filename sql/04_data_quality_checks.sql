USE ecommerce_analytics;

--
-- DATA QUALITY CHECKS
-- 

-- 1. Total number of records

SELECT
    COUNT(*) AS total_rows
FROM ecommerce;


-- 2. Check for duplicate order IDs

SELECT
    order_id,
    COUNT(*) AS occurrences
FROM ecommerce
GROUP BY order_id
HAVING COUNT(*) > 1;


-- 3. Check for missing customer IDs

SELECT COUNT(*) AS missing_customer_ids
FROM ecommerce
WHERE customer_id IS NULL;


-- 4. Check for missing order dates

SELECT COUNT(*) AS missing_order_dates
FROM ecommerce
WHERE order_date IS NULL;


-- 5. Check for missing revenue values

SELECT COUNT(*) AS missing_revenue
FROM ecommerce
WHERE revenue IS NULL;


-- 6. Check for invalid customer ratings

SELECT *
FROM ecommerce
WHERE customer_rating < 1
   OR customer_rating > 5;


-- 7. Check for invalid quantities

SELECT *
FROM ecommerce
WHERE quantity <= 0;


-- 8. Check for invalid delivery values

SELECT *
FROM ecommerce
WHERE delivery_days < 0;


-- 9. Check the final table structure

DESCRIBE ecommerce;
