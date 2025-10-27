SELECT * FROM coffee_sales1.coffee_sales;

-- Total Sales
SELECT SUM(Sales) AS Total_Sales 
FROM coffee_sales1.coffee_sales;


-- Top 5 Coffee Sales
SELECT Product_name, SUM(Sales) AS Sales
FROM coffee_sales1.coffee_sales
GROUP BY Product_name
ORDER BY Sales DESC
limit 5;


-- Total Product Sales 
SELECT Product_name, SUM(Sales) AS Sales
FROM coffee_sales1.coffee_sales
GROUP BY Product_name
ORDER BY Sales ASC;


-- Sales per day
SELECT date, SUM(Sales) AS daily_sales
FROM coffee_sales1.coffee_sales
GROUP BY date
ORDER BY STR_TO_DATE(date, '%d-%b-%y');

 
 -- Transactions per card
SELECT Card_number, COUNT(*) AS Total_transactions
FROM coffee_sales1.coffee_sales
GROUP BY Card_Number
ORDER BY Total_transactions DESC;


-- Top spending card
SELECT Card_number, SUM(Sales) AS Total_spent
FROM coffee_sales1.coffee_sales
GROUP BY Card_Number
ORDER BY Total_spent DESC
LIMIT 1;


-- Sales By Payment type
SELECT Payment_Type, SUM(Sales) AS Sales
FROM coffee_sales1.coffee_sales
GROUP BY Payment_Type;


