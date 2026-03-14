 -- =========================(Scenario variation #2)===================

-- COMMAND 47 :  Write a query to display all records from ecom_data. 
SELECT customer_id,age,gender,city_tier,monthly_income
FROM ecom_data ;


-- COMMAND 48 : Find customers where age is greater than a specific value.(AGE > 20 )
SELECT customer_id,age
FROM ecom_data
WHERE age > 20 ;

-- COMMAND 49 : Display customers whose monthly income is greater than a given amount.(AMOUNT 67000)
SELECT customer_id,gender, monthly_income 
FROM ecom_data
WHERE monthly_income > 67000;

-- COMMAND 50 : Show customers who prefer online shopping. 
SELECT customer_id,shopping_preference
FROM ecom_data
WHERE shopping_preference = 'Online' ;

-- COMMAND 51 :  Find customers living in Tier 1 cities. 
SELECT customer_id,city_tier
FROM ecom_data
WHERE city_tier = 'Tier 1' ;

-- COMMAND 52 :  Display customers with monthly_online_orders greater than a given number.(ABOVE 5)
SELECT customer_id,monthly_online_orders
FROM ecom_data
WHERE monthly_online_orders > 5 ;

-- COMMAND 53 :  Show customers with monthly_store_visits greater than a given number.(ABOVE 7 )
SELECT customer_id,monthly_store_visits
FROM ecom_data
WHERE monthly_store_visit > 7 ;

-- COMMAND 54 :  Find customers whose avg_online_spend is greater than avg_store_spend. 
SELECT customer_id,avg_online_spend,avg_store_spend
FROM ecom_data
WHERE avg_online_spend > avg_store_spend ;

-- COMMAND 55 : Find customers whose avg_store_spend is greater than avg_online_spend. 
SELECT customer_id,avg_store_spend,avg_online_spend
FROM ecom_data
WHERE avg_store_spend >  avg_online_spend ;

-- COMMAND 56 :  Display customers with tech_savvy_score above a given value.(10)
SELECT customer_id,tech_savvy_score
FROM ecom_data
WHERE tech_savvy_scor > 10 ;

-- COMMAND 57 : Find customers with brand_loyalty_score above a given value.(ABOVE 7)
SELECT customer_id , brand_loyalty_score
FROM ecom_data
WHERE brand_loyalty_score > 7 ;

-- COMMAND 58 : Find customers with impulse_buying_score above a given value. (ABOVE 7 )
SELECT customer_id ,impulse_buying_score
FROM ecom_data
WHERE impulse_buying_score > 7 ;

-- COMMAND 59 : Display customers with daily_internet_hours greater than a given number.(GRATER 5 )
SELECT customer_id , daily_internet_hours 
FROM ecom_data
WHERE daily_internet_hours  > 5 ;

-- COMMAND 60 : Find customers whose delivery_fee_sensitivity is above a given value.(LOW)
SELECT customer_id,delivery_fee_sensitivity
FROM ecom_data
WHERE delivery_fee_sensitivity = 'LOW' ;

-- COMMAND 61 : Display all female customers
SELECT cusatomeer_id,genser
FROM ecom_data
WHERE genser = 'Female' ;

-- COMMAND 62 : . Display all male customers.
SELECT cusatomeer_id,genser
FROM ecom_data
WHERE genser = 'Male' ;

-- COMMAND 63 : Sort customers by monthly_income in descending order. 
SELECT cusatomeer_id,monthly_income
FROM ecom_data
ORDER BY monthly_income DESC ;

-- COMMAND 64 :  Sort customers by age in ascending order
SELECT cusatomeer_id,age
FROM ecom_data
ORDER BY age ASC ;

-- COMMAND 65:  Find the top N customers with highest monthly_income. 
SELECT cusatomeer_id,monthly_income
FROM ecom_data
ORDER BY monthly_income DESC
LIMIT 5 ;

-- COMMAND 66 : Find the bottom N customers with lowest monthly_income.
SELECT cusatomeer_id,monthly_income
FROM ecom_data
ORDER BY monthly_income ASC;

-- COMMAND 67 :  Calculate average monthly_income.
SELECT AVG(monthly_income) AS average_income
FROM ecom_data ;

-- COMMAND 68 : Calculate maximum monthly_income.
SELECT MAX(monthly_income) AS maximum_monthly_income
FROM ecom_data ;

-- COMMAND 69 :  Calculate minimum monthly_income. 
SELECT MIN(monthly_income) AS minimum_monthly_income
FROM ecom_data ;

-- COMMAND 70 :  Calculate total avg_online_spend of all customers. 
SELECT SUM(avg_online_spend) 
FROM ecom_data ;

-- COMMAND 71 : Calculate average avg_store_spend. 
SELECT AVG(avg_store_spend) 
FROM ecom_data ;

-- COMMAND 72 : Count total customers
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM ecom_data ;

-- COMMAND 73 : Count customers by gender. 
SELECT gender , COUNT(customer_id)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 74 : Count customers by city_tier. 
SELECT city_tier ,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 75 : Find average monthly_income by city_tier. 
SELECT city_tier ,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 76 : Find average avg_online_spend by gender. 
SELECT gender,AVG(avg_online_spend)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 77 :  Find total avg_store_spend by city_tier.
SELECT city_tier,SUM(avg_store_spend)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 78 : Group customers by shopping_preference. 
SELECT shopping_preference
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 79 : Find number of customers per shopping_preference.
SELECT shopping_preference , COUNT(customer_id)
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 80 :  Find city tiers having more than a given number of customers. (MORE THEN 20)
SELECT city_tier,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier
HAVING COUNT(customer_id) > 20 ;

-- COMMAND 81 :  Find shopping preferences where average online spending exceeds a value.(3200)
SELECT  *
FROM ecom_data
WHERE avg_online_spend > 3200 ;

-- COMMAND 82 :  Use HAVING to filter groups by average income.(HAVING > 50000 )
SELECT city_tier,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier 
HAVING AVG(monthly_income) > 50000 ;

-- COMMAND 83 : Create a subquery to find customers earning more than average income. 
SELECT customer_id ,monthly_income,gender
FROM ecom_data
WHERE monthly_income > (SELECT AVG(monthly_income) FROM ecom_data);

-- COMMAND 84 : Find customers whose online spend is above average. 
SELECT *
FROM ecom_data
WHERE avg_online_spend > (SELECT AVG(avg_online_spend) FROM ecom_data) ;

-- COMMAND 85 : Find customers whose store spend is below average. 
SELECT *
FROM ecom_data
WHERE avg_store_spend > (SELECT AVG(avg_store_spend) FROM ecom_data) ;

-- COMMAND 86 :  Create a query using CASE to categorize income levels.
SELECT *,
 CASE
 WHEN monthly_income > 80000 THEN 'HIGH'
 WHEN monthly_income > 60000 THEN 'MEDIUM'
 WHEN monthly_income > 40000 THEN 'LOW'
 ELSE 'NORMAL'
 END AS INCOME_CATEGORY 
 FROM ecom_data ;
 
 -- COMMAND 87 :  Create a view for high income customers. 
 -- COMMAND 88 :  Create an index on monthly_income.
 -- COMMAND 89 : Create a composite index on city_tier and gender. 
 -- COMMAND 90 : Write a query to drop an index.
 -- COMMAND 91 : Explain how indexing affects query performance using an example query. 
 -- COMMAND 92 :  Write a self join style analytical comparison query on spending behavior. 

SELECT *
FROM ecom_data ;