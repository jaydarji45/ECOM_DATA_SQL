--                                   ==============  (SCENARIO 3 ) ======================

-- COMMAND 93 :  Write a query to display all records from ecom_data. 
SELECT * 
FROM ecom_data ;

-- COMMAND 94 : Find customers where age is greater than a specific value.(AGE > 90)
SELECT *
FROM ecom_data
WHERE age > 90 ;

-- COMMAND 95 : Display customers whose monthly income is greater than a given amount.(GRATYER THEN 100000)
SELECT *
FROM ecom_data
WHERE monthly_income > 100000 ;

-- COMMAND  96 :  Show customers who prefer online shopping. 
SELECT *
FROM ecom_data
WHERE shopping_preference = 'Online' ;

-- COMMAND 97 :  Find customers living in Tier 1 cities.
SELECT *
FROM ecom_data
WHERE city_tier = 'Tier 1' ;

-- COMMAND 98 :  Display customers with monthly_online_orders greater than a given number.(GRATER > 10)
SELECT *
FROM ecom_data
WHERE monthly_online_orders > 10 ;

-- COMMAND 99 : Show customers with monthly_store_visits LESS than a given number.( < 2 )
SELECT *
FROM ecom_data
WHERE monthly_store_visits < 2 ;

-- COMMAND 100 :  Find customers whose avg_online_spend is LESS than avg_store_spend.
SELECT *
FROM ecom_data
WHERE avg_online_spend < avg_store_spend ;

-- COMMAND 101 :  Find customers whose avg_store_spend is LESS than avg_online_spend.
SELECT *
FROM ecom_data
WHERE avg_store_spend < avg_online_spend ;

-- COMMAND 102 :  Display customers with tech_savvy_score BELOW a given value.(5)
SELECT *
FROM ecom_data
WHERE tech_savvy_score < 5 ;

-- COMMAND 103 :  Find customers with brand_loyalty_score BELOW a given value. (BLOW 10 )
SELECT *
FROM ecom_data
WHERE brand_loyalty_score < 10 ;

-- COMMAND 104 : Find customers with impulse_buying_score BELOW a given value.(BELOW < 5)
SELECT *
FROM ecom_data
WHERE impulse_buying_score < 5 ;
 
-- COMMAND 105 :  Display customers with daily_internet_hours LESS than a given number.(LESS 2)
SELECT *
FROM ecom_data
WHERE daily_internet_hours < 2 ;

-- COMMAND 106 : Find customers whose delivery_fee_sensitivity is ABOVE a given value.(MEDIUM)
SELECT *
FROM ecom_data
WHERE delivery_fee_sensitivity = 'Medium' ;

-- COMMAND 107 : Display all female customers.
SELECT *
FROM ecom_data
WHERE gender = 'Female' ;

-- COMMAND 108 :  Display all male customers.
SELECT *
FROM ecom_data
WHERE gender = 'Male' ;

-- COMMAND 109 : Sort customers by monthly_income in descending order.
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC ;

-- COMMAND 110 : Sort customers by age in ascending order.
SELECT *
FROM ecom_data
ORDER BY monthly_income ASC ;

-- COMMAND 111 : Find the top N customers with highest monthly_income.
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC
LIMIT 5 ;

-- COMMAND 112 :  Find the bottom N customers with lowest monthly_income.
SELECT *
FROM ecom_data
ORDER BY monthly_income 
LIMIT 5 ;

-- COMMAND 113 :  Calculate TOTAL monthly_income.(SUM)
SELECT SUM(monthly_income) AS TOTAL_MONTHLY_INCOME
FROM Ecom_data ;

-- COMMAND 114 :  Calculate maximum monthly_income.
SELECT MAX(monthly_income) AS MAXIMUM_MONTHLY_INCOME
FROM Ecom_data ;

-- COMMAND 115 :  Calculate minimum monthly_income.
SELECT MIN(monthly_income) AS MINIMUM_MONTHLY_INCOME
FROM Ecom_data ;

-- COOMAND 116 :  Calculate total avg_online_spend of all customers.
SELECT SUM(avg_online_spend ) 
FROM Ecom_data ;

-- COMMAND 117 :  Calculate average avg_store_spend.
SELECT AVG(avg_store_spend) 
FROM Ecom_data ;

-- COMMAND 118 : Count total customers. 
SELECT COUNT(gender) AS TOTAL_PEOPLE 
FROM Ecom_data ;

-- COMMAND 119 :  Count customers by gender.
SELECT gender ,COUNT(gender)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 120 :  Count customers by city_tier.
SELECT city_tier ,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier;

-- COMMAND 121 : Find average monthly_income by city_tier.
SELECT city_tier ,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier;

-- COMMAND 122 :  Find average avg_online_spend by gender. 
SELECT gender ,AVG(avg_online_spend )
FROM ecom_data
GROUP BY gender ;

-- COMMAND 123 : Find total avg_store_spend by city_tier. 
SELECT  city_tier,SUM(avg_store_spend)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 124 :  Group customers by shopping_preference.
SELECT  shopping_preference
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 125 : Find number of customers per shopping_preference.
SELECT  shopping_preference ,COUNT(customer_id)
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 126 :  Find city tiers having LESS than a given number of customers.(CUSTOMERS < 20)
SELECT city_tier ,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier
HAVING COUNT(customer_id) < 20 ;

-- COMMAND 127 : Find shopping preferences where average online spending LESS a value.
SELECT  shopping_preference,AVG(avg_online_spend)
FROM ecom_data
GROUP BY shopping_preference
HAVING AVG(avg_online_spend) < 15000 ;

-- COMMAND 128 :  Use HAVING to filter groups by average income.
SELECT city_tier,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier 
HAVING AVG(monthly_income) > 50000 ;

-- COMMAND 129 :  Create a subquery to find customers earning LEASS than average income.
SELECT *
FROM ecom_data
WHERE monthly_income < (SELECT AVG(monthly_income) FROM ecom_data) ;

-- COMMAND 130 :  Find customers whose online spend is above average.
SELECT *
FROM ecom_data
WHERE avg_online_spend < (SELECT AVG(avg_online_spend) FROM ecom_data) ;

-- COMMAND 131 :  Find customers whose store spend is ABOVE average.
SELECT *
FROM ecom_data
WHERE avg_store_spend < (SELECT AVG(avg_store_spend) FROM ecom_data) ;

-- COMMAND 132 :  Create a query using CASE to categorize income levels.
SELECT *,
CASE
    WHEN monthly_income < 20000  THEN 'LOW'
    WHEN monthly_income <= 50000 THEN 'MEDIUM'
    WHEN monthly_income > 50000  THEN 'HIGH'
END AS income_levels
FROM ecom_data ;

-- COMMAND 133 : Create a view for high income customers. 
CREATE VIEW high_income AS
SELECT customer_id , monthly_income
FROM ecom_data
WHERE monthly_income > 60000 ;

-- COMMAND 134 : Create an index on monthly_income.
CREATE INDEX index_monthly_income
ON ecom_data (monthly_income) ;

-- COMMAND 135 :  Create a composite index on city_tier and gender.
-- COMMAND 136 : Write a query to drop an index.
DROP INDEX index_monthly_income ON ecom_data ;

-- COMMAND 137 : Explain how indexing affects query performance using an example query.
-- COMMAND 138 : Write a self join style analytical comparison query on spending behavior





SELECT *
FROM ecom_data ;






