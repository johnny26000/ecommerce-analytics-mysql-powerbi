USE ecommerce_analytics;

-- 
-- DATA CLEANING
--
-- 1. Inspect the original date values

SELECT
    order_date
FROM ecommerce;


-- 2. Test conversion from M/D/Y text to a proper DATE

SELECT
    order_date,
    STR_TO_DATE(order_date, '%m/%d/%Y') AS converted_date
FROM ecommerce;


-- 3. Add a cleaned DATE column

ALTER TABLE ecommerce
ADD COLUMN order_date_new DATE;


-- 4. Convert the original M/D/Y text values

UPDATE ecommerce
SET order_date_new =
    STR_TO_DATE(order_date, '%m/%d/%Y');


-- 5. Check for dates that failed conversion

SELECT COUNT(*) AS invalid_dates
FROM ecommerce
WHERE order_date IS NOT NULL
  AND order_date_new IS NULL;


-- 6. Review the original and cleaned values

SELECT
    order_date,
    order_date_clean
FROM ecommerce;

-- 7. Replace the original text column with the cleaned DATE column

ALTER TABLE ecommerce
DROP COLUMN order_date;

ALTER TABLE ecommerce
RENAME COLUMN order_date_new TO order_date;
