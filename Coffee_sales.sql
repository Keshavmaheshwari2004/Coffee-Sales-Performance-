SELECT * FROM coffee_sales.coffee_sales;
-- Total revenue
SELECT SUM(money) AS total_revenue FROM coffee_sales.coffee_sales;

-- Revenue per coffee type
SELECT coffee_name, SUM(money) AS revenue
FROM coffee_sales.coffee_sales
GROUP BY coffee_name
ORDER BY revenue DESC;

-- Sales per day
SELECT date, SUM(money) AS daily_sales
FROM coffee_sales.coffee_sales
GROUP BY date
ORDER BY STR_TO_DATE(date, '%d-%b-%y');

-- Peak hour sales
SELECT HOUR(STR_TO_DATE(datetime, '%H:%i:%s')) AS hour, SUM(money) AS total_sales
FROM coffee_sales.coffee_sales
GROUP BY hour
ORDER BY total_sales DESC;
 
 -- Transactions per card
SELECT card, COUNT(*) AS total_transactions
FROM coffee_sales.coffee_sales
GROUP BY card
ORDER BY total_transactions DESC;

-- Top spending card
SELECT card, SUM(money) AS total_spent
FROM coffee_sales.coffee_sales
GROUP BY card
ORDER BY total_spent DESC
LIMIT 1;

-- Revenue by payment type
SELECT cash_type, SUM(money) AS revenue
FROM coffee_sales.coffee_sales
GROUP BY cash_type;



CREATE TABLE coffee_sales (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    payment_type VARCHAR(20),
    card_id VARCHAR(50),
    amount DECIMAL(10,2),
    coffee_name VARCHAR(50)
);
