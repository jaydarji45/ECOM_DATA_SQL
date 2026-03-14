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







SELECT *
FROM ecom_data ;






