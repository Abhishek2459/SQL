--- this is a single line comment

/*

 This is a multiline comment

*/
use MyDatabase;

use SalesDB;

SELECT * from orders;


select * from customers;


select * from sales.Employees;


--- chapter SELECT

-- TASKS -> retrieve each customers name,country and score

SELECT 
    first_name,
    country,
    score
FROM customers;



--- retrive customers with score not equal to zero

SELECT * 
FROM
customers 
WHERE
score != 0;


--- retrive customers from germany

SELECT *
FROM customers
WHERE country = 'Germany';


--- retrive all the customers and sort the result by highest score first

SELECT * 
FROM customers
ORDER BY score desc;



--- retrive all the customers and sort the result by lowest score first

SELECT * 
FROM customers
ORDER BY score asc;


--- retrive all customers and sort the results by country and then by highest score

SELECT *
FROM customers
ORDER BY country asc,score desc;



--- find the total score for each country

SELECT country,SUM(score) AS total_score
FROM customers
GROUP BY country;


--- find the total score and total number of customers from each country

select SUM(score) AS total_score, COUNT(id) AS number_of_customers
from customers
GROUP BY country;

--- find the average score for each country considering only customers with a score not equal to zero 
-- and return only those countries with a average score greater than 430

SELECT country,AVG(score)
FROM customers
WHERE score !=0 
GROUP BY country
HAVING AVG(score) > 430;

--- return unique list of all countries

SELECT distinct country 
FROM customers;

--- retrieve only 3 customers

SELECT top 3 * from customers;

--- retrieve the top 3 customers with highest score

SELECT top 3 * from customers ORDER BY score DESC;


--- retrieve the lowest 2 customers based on the score

SELECT top 2 * from customers ORDER BY score asc;


--- get the 2 most recenet orders

select top 2 * from orders ORDER BY order_date desc;






