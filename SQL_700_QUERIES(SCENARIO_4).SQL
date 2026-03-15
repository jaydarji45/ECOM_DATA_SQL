 -- =========================(Scenario variation #4)===================

-- COMMAND 139 : Write a query to display all records from ecom_data.
SELECT *
FROM ecom_data ;

-- COMMAND 140 : Find customers where age is greater than a specific value.(AGE > 50 )
SELECT customer_id,age
FROM ecom_data
WHERE age > 50 ;

-- COMMAND 141 : Display customers whose monthly income is greater than a given amount.(AMOUNT 100000)
SELECT customer_id,gender, monthly_income 
FROM ecom_data
WHERE monthly_income > 100000;

-- COMMAND 142 : Show customers who prefer ofline shopping. 
SELECT customer_id,shopping_preference
FROM ecom_data
WHERE shopping_preference = 'Oline' ;

-- COMMAND 143 :  Find customers living in Tier 2 cities. 
SELECT customer_id,city_tier
FROM ecom_data
WHERE city_tier = 'Tier 2' ;

-- COMMAND 144 :  Display customers with monthly_online_orders LESS than a given number.(LESS 2)
SELECT customer_id,monthly_online_orders
FROM ecom_data
WHERE monthly_online_orders < 2 ;

-- COMMAND 145 :  Show customers with monthly_store_visits EQUAL  a given number.(= 10)
SELECT customer_id,monthly_store_visits
FROM ecom_data
WHERE monthly_store_visit = 10;

-- COMMAND 146 :  Find customers whose avg_online_spend is EQUAL  avg_store_spend. 
SELECT customer_id,avg_online_spend,avg_store_spend
FROM ecom_data
WHERE avg_online_spend = avg_store_spend ;

-- COMMAND 147 : Find customers whose avg_store_spend is EQUAL avg_online_spend. 
SELECT customer_id,avg_store_spend,avg_online_spend
FROM ecom_data
WHERE avg_store_spend =  avg_online_spend ;

-- COMMAND 148 :  Display customers with tech_savvy_score EQUAL given value.(3)
SELECT customer_id,tech_savvy_score
FROM ecom_data
WHERE tech_savvy_scor > 3 ;

-- COMMAND 149 : Find customers with brand_loyalty_score EQUALE a given value.( = 7)
SELECT customer_id , brand_loyalty_score
FROM ecom_data
WHERE brand_loyalty_score = 7 ;

-- COMMAND 150 : Find customers with impulse_buying_score EQUALE a given value. (= 20)
SELECT customer_id ,impulse_buying_score
FROM ecom_data
WHERE impulse_buying_score = 20 ;

-- COMMAND 151 : Display customers with daily_internet_hours EQUALE a given number.(= 1)
SELECT customer_id , daily_internet_hours 
FROM ecom_data
WHERE daily_internet_hours  = 1 ;

-- COMMAND 152 : Find customers whose delivery_fee_sensitivity is EQUALE a given value.(= HIGHT)
SELECT customer_id,delivery_fee_sensitivity
FROM ecom_data
WHERE delivery_fee_sensitivity = 'HIGH' ;

-- COMMAND 153 : Display all female customers
SELECT *
FROM ecom_data
WHERE genser = 'Female' ;

-- COMMAND 154 : Display all male customers.
SELECT cusatomeer_id,genser
FROM ecom_data
WHERE genser = 'Male' ;

-- COMMAND 155 : Sort customers by monthly_income in descending order. 
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC ;

-- COMMAND 156 :  Sort customers by age in ascending order
SELECT cusatomeer_id,age
FROM ecom_data
ORDER BY age ASC ;

-- COMMAND 157 :  Find the top N customers with highest monthly_income. 
SELECT *
FROM ecom_data
ORDER BY monthly_income DESC
LIMIT 5 ;

-- COMMAND 158 : Find the bottom N customers with lowest monthly_income.
SELECT *
FROM ecom_data
ORDER BY monthly_income ASC;
USE ecom_db ;

-- COMMAND 159 :  Calculate TOATL monthly_income.
SELECT SUM(monthly_income) AS average_income
FROM ecom_data ;

-- COMMAND 160 : Calculate SUM customer_id.
SELECT SUM(customer_id) AS SUM_customer_id
FROM ecom_data ;

-- COMMAND 161 : Calculate MAX customer_id. 
SELECT MAX(customer_id) AS LAST_CUSTOMER
FROM ecom_data ;

-- COMMAND 162 : Calculate total avg_online_spend of all customers. 
SELECT SUM(avg_online_spend) 
FROM ecom_data ;

-- COMMAND 163 : Calculate average avg_store_spend. 
SELECT AVG(avg_store_spend) 
FROM ecom_data ;

-- COMMAND 164 : Count total customers
SELECT COUNT(*) AS TOTAL_CUSTOMERS
FROM ecom_data ;

-- COMMAND 165 : Count customers by gender. 
SELECT gender , COUNT(customer_id)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 166 : Count customers by city_tier. 
SELECT city_tier ,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 167 : Find average monthly_income by city_tier. 
SELECT city_tier ,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 168 : Find average avg_online_spend by gender. 
SELECT gender,AVG(avg_online_spend)
FROM ecom_data
GROUP BY gender ;

-- COMMAND 169 : Find total avg_store_spend by city_tier.
SELECT city_tier,SUM(avg_store_spend)
FROM ecom_data
GROUP BY city_tier ;

-- COMMAND 170 : Group customers by shopping_preference. 
SELECT shopping_preference
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 171 : Find number of customers per shopping_preference.
SELECT shopping_preference , COUNT(customer_id)
FROM ecom_data
GROUP BY shopping_preference ;

-- COMMAND 172 :  Find city tiers having more than a given number of customers. (MORE THEN 20)
SELECT city_tier,COUNT(customer_id)
FROM ecom_data
GROUP BY city_tier
HAVING COUNT(customer_id) > 20 ;

-- COMMAND 173 :  Find shopping preferences where average online spending exceeds a value.(3200)
SELECT  *
FROM ecom_data
WHERE avg_online_spend > 3200 ;

-- COMMAND 174  :  Use HAVING to filter groups by average income.(HAVING > 50000 )
SELECT city_tier,AVG(monthly_income)
FROM ecom_data
GROUP BY city_tier 
HAVING AVG(monthly_income) > 50000 ;

-- COMMAND 175 : Create a subquery to find customers earning more than average income. 
SELECT customer_id ,monthly_income,gender
FROM ecom_data
WHERE monthly_income > (SELECT AVG(monthly_income) FROM ecom_data);

-- COMMAND 176 : Find customers whose online spend is above average. 
SELECT *
FROM ecom_data
WHERE avg_online_spend > (SELECT AVG(avg_online_spend) FROM ecom_data) ;

-- COMMAND 177 : Find customers whose store spend is below average. 
SELECT *
FROM ecom_data
WHERE avg_store_spend > (SELECT AVG(avg_store_spend) FROM ecom_data) ;

-- COMMAND 178 :  Create a query using CASE to categorize income levels.
SELECT *,
 CASE
 WHEN monthly_income >=80000  THEN 'HIGH'
 WHEN monthly_income >= 60000 THEN 'MEDIUM'
 WHEN monthly_income < 50000 THEN 'LOW'
 ELSE 'NORMAL'
 END AS INCOME_CATEGORY 
 FROM ecom_data ;
 
 -- COMMAND 179 :  Create a view for LOW income customers. 
 CREATE VIEW low_income AS
SELECT customer_id , monthly_income
FROM ecom_data
WHERE monthly_income <= 50000 ;

 -- COMMAND 180:  Create an index on monthly_online_order.
 CREATE INDEX index_monthly_online_order
ON ecom_data (monthly_online_order) ;

 -- COMMAND 181: Create a composite index on city_tier and gender. 
 
 
 -- COMMAND 182: Write a query to drop an index.
 DROP INDEX index_monthly_online_order ON ecom_data ;

 
 -- COMMAND 183: Explain how indexing affects query performance using an example query. 
 -- COMMAND 184:  Write a self join style analytical comparison query on spending behavior. 

SELECT *
FROM ecom_data ;