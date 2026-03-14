-- THIS IS THE DATABASE AND TABLE THAT USED TO FIRE 700 COMMANDS.
-- THIS DATABASE CONTAINS SINGLE TABLE CALLED ecom_data AND ONLY 50 RECORDS.

-- ==================================================================
				-- DATABSE CREATION
CREATE DATABASE IF NOT EXISTS ecom_db ;
USE ecom_db ;

-- ==================================================================
                
                -- TABLE ECOM_DATA
DROP TABLE IF EXISTS ecom_data ;
CREATE TABLE ecom_data (
    customer_id              INT AUTO_INCREMENT PRIMARY KEY,
    age                      INT,
    gender                   ENUM('Male', 'Female', 'Other'),
    city_tier                ENUM('Tier 1', 'Tier 2', 'Tier 3'),
    monthly_income           DECIMAL(10,2),
    monthly_online_orders    INT,
    monthly_store_visits     INT,
    avg_online_spend         DECIMAL(10,2),
    avg_store_spend          DECIMAL(10,2),
    shopping_preference      ENUM('Online', 'Offline', 'Both'),
    tech_savvy_score         INT COMMENT 'Score out of 10',
    brand_loyalty_score      INT COMMENT 'Score out of 10',
    impulse_buying_score     INT COMMENT 'Score out of 10',
    daily_internet_hours     DECIMAL(4,1),
    avg_delivery_days        DECIMAL(4,1),
    delivery_fee_sensitivity ENUM('Low', 'Medium', 'High')
);
                
-- ===============================================================================================================================
                   -- INSERTING DATA
INSERT INTO ecom_data (age, gender, city_tier, monthly_income,
 monthly_online_orders, monthly_store_visits, avg_online_spend, 
 avg_store_spend, shopping_preference, tech_savvy_score, brand_loyalty_score, 
 impulse_buying_score, daily_internet_hours, avg_delivery_days, delivery_fee_sensitivity)
VALUES
(25, 'Male',   'Tier 1', 45000.00,  8,  2, 3200.00, 800.00,  'Online',  8, 6, 7, 6.5, 2.5, 'Low'),
(32, 'Female', 'Tier 1', 72000.00, 12,  1, 5800.00, 400.00,  'Online',  9, 7, 6, 7.0, 2.0, 'Low'),
(45, 'Male',   'Tier 2', 38000.00,  3,  5, 1200.00, 3500.00, 'Offline', 4, 8, 3, 2.0, 4.0, 'High'),
(28, 'Female', 'Tier 1', 55000.00, 10,  3, 4200.00, 1200.00, 'Online',  8, 5, 8, 5.5, 2.2, 'Low'),
(38, 'Male',   'Tier 3', 22000.00,  2,  6,  600.00, 2800.00, 'Offline', 3, 7, 4, 1.5, 5.5, 'High'),
(22, 'Female', 'Tier 1', 30000.00,  6,  2, 2100.00,  700.00, 'Online',  7, 4, 9, 8.0, 2.8, 'Medium'),
(50, 'Male',   'Tier 2', 60000.00,  4,  4, 1800.00, 2500.00, 'Both',    5, 9, 3, 3.0, 3.5, 'Medium'),
(35, 'Female', 'Tier 1', 85000.00, 15,  1, 7200.00,  300.00, 'Online',  9, 6, 7, 6.0, 1.8, 'Low'),
(29, 'Male',   'Tier 2', 41000.00,  5,  3, 1900.00, 1500.00, 'Both',    6, 6, 6, 4.5, 3.2, 'Medium'),
(42, 'Female', 'Tier 3', 28000.00,  1,  7,  400.00, 3200.00, 'Offline', 2, 8, 2, 1.0, 6.0, 'High'),
(26, 'Male',   'Tier 1', 52000.00,  9,  2, 3800.00,  900.00, 'Online',  8, 5, 8, 7.0, 2.3, 'Low'),
(33, 'Female', 'Tier 2', 47000.00,  6,  3, 2400.00, 1800.00, 'Both',    6, 7, 5, 4.0, 3.0, 'Medium'),
(48, 'Male',   'Tier 1', 95000.00, 11,  2, 6500.00, 1100.00, 'Online',  8, 8, 4, 5.0, 2.0, 'Low'),
(31, 'Female', 'Tier 3', 19000.00,  2,  5,  700.00, 2200.00, 'Offline', 3, 6, 5, 2.0, 5.0, 'High'),
(27, 'Male',   'Tier 1', 63000.00, 13,  1, 5100.00,  500.00, 'Online',  9, 4, 9, 8.5, 1.9, 'Low'),
(40, 'Female', 'Tier 2', 35000.00,  4,  4, 1500.00, 2000.00, 'Both',    5, 7, 4, 3.5, 3.8, 'Medium'),
(23, 'Male',   'Tier 1', 28000.00,  7,  2, 2600.00,  600.00, 'Online',  7, 3, 9, 7.5, 2.6, 'Low'),
(36, 'Female', 'Tier 2', 53000.00,  8,  3, 3300.00, 1400.00, 'Online',  7, 6, 6, 5.0, 2.7, 'Medium'),
(55, 'Male',   'Tier 3', 32000.00,  1,  8,  300.00, 4000.00, 'Offline', 2, 9, 2, 1.0, 6.5, 'High'),
(30, 'Female', 'Tier 1', 78000.00, 14,  1, 6800.00,  200.00, 'Online',  9, 5, 8, 7.0, 1.7, 'Low'),
(44, 'Male',   'Tier 2', 44000.00,  5,  4, 2000.00, 2100.00, 'Both',    5, 8, 4, 3.0, 3.3, 'Medium'),
(24, 'Female', 'Tier 1', 36000.00,  8,  2, 2900.00,  750.00, 'Online',  8, 4, 8, 6.5, 2.4, 'Low'),
(39, 'Male',   'Tier 3', 25000.00,  2,  6,  800.00, 3100.00, 'Offline', 3, 7, 3, 1.5, 5.8, 'High'),
(34, 'Female', 'Tier 1', 67000.00, 11,  2, 4900.00,  850.00, 'Online',  8, 6, 7, 6.0, 2.1, 'Low'),
(47, 'Male',   'Tier 2', 50000.00,  5,  4, 2200.00, 2300.00, 'Both',    5, 8, 3, 3.5, 3.6, 'Medium'),
(21, 'Female', 'Tier 1', 20000.00,  6,  2, 1800.00,  500.00, 'Online',  7, 3, 9, 9.0, 2.9, 'Low'),
(53, 'Male',   'Tier 3', 29000.00,  1,  7,  350.00, 3600.00, 'Offline', 2, 9, 2, 1.0, 6.2, 'High'),
(37, 'Female', 'Tier 2', 43000.00,  6,  3, 2500.00, 1700.00, 'Both',    6, 6, 6, 4.0, 3.1, 'Medium'),
(28, 'Male',   'Tier 1', 58000.00, 10,  2, 4400.00,  950.00, 'Online',  8, 5, 7, 6.5, 2.2, 'Low'),
(41, 'Female', 'Tier 2', 39000.00,  4,  5, 1600.00, 2400.00, 'Both',    5, 7, 4, 3.0, 3.7, 'Medium'),
(26, 'Male',   'Tier 1', 49000.00,  9,  2, 3600.00,  880.00, 'Online',  8, 5, 8, 7.0, 2.3, 'Low'),
(43, 'Female', 'Tier 3', 23000.00,  1,  6,  450.00, 2900.00, 'Offline', 2, 8, 3, 1.5, 5.5, 'High'),
(31, 'Male',   'Tier 1', 71000.00, 12,  1, 5500.00,  420.00, 'Online',  9, 6, 7, 6.5, 2.0, 'Low'),
(35, 'Female', 'Tier 2', 46000.00,  7,  3, 2700.00, 1600.00, 'Both',    6, 7, 5, 4.5, 3.0, 'Medium'),
(49, 'Male',   'Tier 3', 27000.00,  2,  7,  700.00, 3400.00, 'Offline', 3, 8, 3, 1.0, 6.0, 'High'),
(22, 'Female', 'Tier 1', 33000.00,  7,  2, 2400.00,  680.00, 'Online',  7, 4, 9, 8.0, 2.7, 'Low'),
(38, 'Male',   'Tier 2', 55000.00,  7,  3, 2900.00, 1900.00, 'Both',    6, 7, 5, 4.0, 2.9, 'Medium'),
(29, 'Female', 'Tier 1', 62000.00, 11,  2, 4700.00,  780.00, 'Online',  8, 5, 7, 6.0, 2.1, 'Low'),
(52, 'Male',   'Tier 3', 31000.00,  1,  8,  280.00, 3800.00, 'Offline', 2, 9, 2, 1.0, 6.3, 'High'),
(33, 'Female', 'Tier 1', 74000.00, 13,  1, 6100.00,  350.00, 'Online',  9, 6, 6, 7.0, 1.8, 'Low'),
(46, 'Male',   'Tier 2', 42000.00,  5,  4, 1900.00, 2200.00, 'Both',    5, 8, 4, 3.5, 3.5, 'Medium'),
(25, 'Female', 'Tier 1', 38000.00,  8,  2, 3000.00,  720.00, 'Online',  8, 4, 8, 6.5, 2.4, 'Low'),
(40, 'Male',   'Tier 3', 24000.00,  2,  6,  550.00, 3000.00, 'Offline', 3, 7, 3, 1.5, 5.7, 'High'),
(27, 'Female', 'Tier 2', 48000.00,  6,  3, 2300.00, 1750.00, 'Both',    6, 6, 6, 4.0, 3.2, 'Medium'),
(36, 'Male',   'Tier 1', 80000.00, 14,  1, 6600.00,  300.00, 'Online',  9, 5, 8, 7.5, 1.9, 'Low'),
(51, 'Female', 'Tier 3', 26000.00,  1,  7,  400.00, 3300.00, 'Offline', 2, 9, 2, 1.0, 6.1, 'High'),
(30, 'Male',   'Tier 2', 51000.00,  6,  3, 2600.00, 1850.00, 'Both',    6, 7, 5, 4.0, 3.0, 'Medium'),
(23, 'Female', 'Tier 1', 27000.00,  7,  2, 2200.00,  620.00, 'Online',  7, 3, 9, 8.5, 2.6, 'Low'),
(44, 'Male',   'Tier 2', 37000.00,  4,  5, 1400.00, 2600.00, 'Both',    4, 8, 3, 2.5, 4.0, 'High'),
(32, 'Female', 'Tier 1', 69000.00, 12,  1, 5300.00,  380.00, 'Online',  9, 6, 7, 6.5, 2.0, 'Low');

						-- ============STARTING POINT FOR ALL 700 COMMANDS.=================
                        
-- COMMAND 1  : Write a query to display all records from ecom_data. 
SELECT * 
FROM ecom_data ;

-- COMMAND 2 :. Find customers where age is greater than a specific value.(AGE > 50)
SELECT *
FROM ecom_data
WHERE age > 50 ;

-- COMMAND 3 :Display customers whose monthly income is greater than a given amount. (AMOUNT 500000)
SELECT *
FROM ecom_data
WHERE monthly_income > 50000 ;

-- COMAND 4 : Show customers who prefer online shopping. 
SELECT *
FROM ecom_data
WHERE shopping_preference = "online" ;

-- COMMAND 5 :  Find customers living in Tier 1 cities.
SELECT *
FROM ecom_data
WHERE city_tier = "Tier 1";

-- COMMAND 6 : Display customers with monthly_online_orders greater than a given number.(GRATER > 10)
SELECT *
FROM ecom_data
WHERE monthly_online_orders > 10 ;

-- COMMAND 7 :  Show customers with monthly_store_visits greater than a given number. (GREATER > 2)
SELECT *
FROM ecom_data
WHERE monthly_store_visits > 2 ;

-- COMMAND 8 : Find customers whose avg_online_spend is greater than avg_store_spend.
SELECT *
FROM ecom_data
WHERE avg_online_spend > avg_store_spend ;

-- COMMAND 9 :  Find customers whose avg_store_spend is greater than avg_online_spend.
SELECT *
FROM ecom_data
WHERE avg_store_spend > avg_online_spend ;

-- COMMAND 10 : Display customers with tech_savvy_score above a given value. (ABOVE > 5)
SELECT *
FROM ecom_data
WHERE tech_savvy_score > 5 ;

-- COMMAND 11 : Find customers with brand_loyalty_score above a given value. (ABOVE > 3)
SELECT *
FROM ecom_data
WHERE brand_loyalty_score ; 

-- COMMAND 12 : Find customers with impulse_buying_score above a given value. (ABOVE > 8)
SELECT *
FROM ecom_data
WHERE impulse_buying_score > 8;

-- COMMAND 13 : Display customers with daily_internet_hours greater than a given number.(GRATER > 5)
SELECT *
FROM ecom_data
WHERE daily_internet_hours > 5;

-- COMAND 14 : Find customers whose delivery_fee_sensitivity is above a given value.(LOW)
SELECT *
FROM ecom_data 
WHERE delivery_fee_sensitivity = "low" ;

-- COMMAND 15 : Display all female customers.
SELECT * 
FROM ecom_data
WHERE gender = 'Female' ;

-- COMMAND 16 : Display all male customers. 
SELECT *
FROM ecom_data
WHERE gender = 'Male' ;

-- COMMAND 17 : Sort customers by monthly_income in descending order.
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC ;

-- COMMAND 18 : Sort customers by age in ascending order.
SELECT *
FROM ecom_data
ORDER BY age ASC ;

-- COMMAND 19 :  Find the top N customers with highest monthly_income. 
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC
LIMIT 5 ;


-- COMMAND 20 : Find the bottom N customers with lowest monthly_income.
SELECT *
FROM ecom_data
ORDER BY monthly_income ASC
LIMIT 5 ;

-- COMMAND 21 :  Calculate average monthly_income.
SELECT AVG(monthly_income) AS average_monthly_income
FROM ecom_data ;

-- COMMAND 22 :  Calculate maximum monthly_income.
SELECT MAX(monthly_income) AS maximum_monthly_income
FROM ecom_data ;

-- COMMAND 23 : Calculate minimum monthly_income.
SELECT MIN(monthly_income)
FROM ecom_data ;
SELECT * 
FROM ecom_data ;


-- COMMAND 24 :  Calculate total avg_online_spend of all customers.
SELECT AVG(avg_online_spend) AS average_online_spend
FROM ecom_data ;

-- COMMAND 25 :Calculate average avg_store_spend.
SELECT AVG(avg_store_spend) 
FROM ecom_data ;

-- COMMAND 26 :  Count total customers.
SELECT COUNT(*)
FROM ecom_data ;

-- COMMAND 27 :  Count customers by gender.
SELECT gender ,COUNT(gender) AS count_gender
FROM ecom_data 
GROUP BY gender;

-- COMMAND 28 : Count customers by city_tier. 
SELECT city_tier,COUNT(city_tier) AS NUMBER_OF_CUSTEMBERS
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 29 :  Find average monthly_income by city_tier.
SELECT  city_tier,AVG(monthly_income)
FROM ecom_data
GROUP BY  city_tier ;

-- COMMAND 30 : Find average avg_online_spend by gender.
SELECT gender ,AVG(avg_online_spend)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 31 : Find total avg_store_spend by city_tier.
SELECT city_tier ,SUM(avg_store_spend)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 32 :  Group customers by shopping_preference.
SELECT shopping_preference
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 33 : Find number of customers per shopping_preference.
SELECT shopping_preference,COUNT(customer_id)
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 34 : Find city tiers having more than a given number of customers.(MORTHEN 20 CUSTOMERS)
SELECT city_tier,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier 
HAVING COUNT(customer_id) > 20 ;

-- COMMAND 35 : Find shopping preferences where average online spending exceeds a value.(VALUE > 1000)
SELECT shopping_preference , AVG(avg_online_spend)
FROM ecom_data
GROUP BY shopping_preference
HAVING AVG(avg_online_spend) > 1000 ;

-- COMMAND 36 : Use HAVING to filter groups by average income. 
SELECT  city_tier,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier 
HAVING AVG(monthly_income) > 10000 ;

-- COMMAND 37 :  Create a subquery to find customers earning more than average income. 
SELECT customer_id,monthly_income
FROM ecom_data
WHERE monthly_income > (SELECT AVG(monthly_income) FROM ecom_data) ;

-- COOMAND 38 :  Find customers whose store spend is below average.
SELECT customer_id,avg_store_spend
FROM ecom_data
WHERE avg_store_spend < (SELECT AVG(avg_store_spend) FROM ecom_data) ;

-- COMMAND 39 : Find customers whose online spend is above average.
SELECT customer_id,avg_online_spend
FROM ecom_data
WHERE avg_online_spend > (SELECT AVG(avg_online_spend) FROM ecom_data) ;

-- COMMAND 40 : Create a query using CASE to categorize income levels.
SELECT customer_id,monthly_income,
CASE
WHEN monthly_income <= '20000' THEN 'LOW'
WHEN monthly_income <= '50000' THEN 'MEDIM'
WHEN monthly_income >= '50000' THEN 'HIGH'
END AS income_levels
FROM ecom_data ;

-- COMMAND 41 :  Create a view for high income customers. 
CREATE VIEW high_income AS
SELECT customer_id , monthly_income
FROM ecom_data
WHERE monthly_income > 50000 ;

SELECT * FROM high_income ;

-- COMMAND 42 :  Create an index on monthly_income. 
CREATE INDEX index_monthly_income
ON ecom_data (monthly_income) ;
-- COMMAND 43 :  Create a composite index on city_tier and gender.
-- COMMAND 44 :  Write a query to drop an index. 
DROP INDEX index_monthly_income 
ON ecom_data ;
-- COMAND 45 : Explain how indexing affects query performance using an example query.
-- COMMAND 46 :  Write a self join style analytical comparison query on spending behavior.

                                       












 


























                      
