-- --------------Customer Analysis -------------------
-- How many unique customer types does the data have?
SELECT
COUNT(DISTINCT Customer_type) AS unique_customer_type
FROM walmart_sales_data.s;
-- {There are 2 unique types of customer}

-- How many unique payment methods does the data have?
SELECT
COUNT(DISTINCT Payment) AS unique_Payment_type
FROM walmart_sales_data.s;
-- {There are 3 unique types of Payment methods}

-- Which is the most common customer type?
SELECT
Customer_type, COUNT(Customer_type) AS Total_customer_type
FROM walmart_sales_data.s
GROUP BY Customer_type
ORDER BY Total_customer_type DESC;
-- {Member is the most common customer type}

-- Which customer type buys the most?
SELECT
Customer_type, SUM(Total) AS Total_revenue
FROM walmart_sales_data.s
GROUP BY Customer_type
ORDER BY Total_revenue DESC
LIMIT 1;
-- {Member is the customer type that buys the most}

-- What is the gender of most of the customers?
SELECT
Gender, COUNT(Gender) AS Total_Gender_Count
FROM walmart_sales_data.s
GROUP BY Gender
ORDER BY Total_Gender_Count DESC
LIMIT 1;
-- {Female is the gender of most of the customers}

-- What is the gender distribution per branch?
SELECT
Branch, Gender, COUNT(Gender) AS Total_Per_Branch_Gender_Count
FROM walmart_sales_data.s
GROUP BY Branch, Gender
ORDER BY Branch ASC;
-- {Branch C has the highest number of females and Branch A has the lowest
-- Branch A has the highest number of males and Branch C has the lowest}

-- Which time of the day do customers give most ratings?
SELECT
time_of_day, AVG(Rating) AS Average_Rating
FROM walmart_sales_data.s
GROUP BY time_of_day
ORDER BY Average_Rating DESC;
-- {Customers give most ratings during Afternoon time_of_day}

-- Which time of the day do customers give most ratings per branch?
SELECT
Branch, time_of_day,
AVG(Rating) AS Average_Rating
FROM walmart_sales_data.s
GROUP BY Branch, time_of_day
ORDER BY Average_Rating DESC;
-- {Customers give most ratings during Afternoon time_of_day at Branch A}
-- {Customers give most ratings during Evening time_of_day at Branch C}
-- {Customers give most ratings during Morning time_of_day at Branch B}

-- Which day of the week has the best avg ratings?
SELECT
day_name,
AVG(Rating) AS Average_Rating
FROM walmart_sales_data.s
GROUP BY day_name
ORDER BY Average_Rating DESC
LIMIT 1;
-- {Monday has the best avg ratings}

-- Which day of the week has the best average ratings per branch?
SELECT
Branch, day_name,
AVG(Rating) AS Average_Rating
FROM walmart_sales_data.s
GROUP BY day_name, Branch
ORDER BY Average_Rating DESC;
-- {Branch B has best avg rating on Monday}
-- {Branch A has best avg rating on Friday}
-- {Branch C has best avg rating on Friday}


-- ---------------------------------ANALYSIS----------------------------------------
-- Business is heavily driven by loyal, repeat customers
-- Convert Normal customers → Members through incentives
-- Customers prefer digital, convenient transactions
-- Offer cashbacks on e-wallet
-- Identified loyal high-value customer segment (Members)
-- Discovered branch-level customer differences → need for localization
-- Found optimal engagement times → improve feedback & marketing timing
-- Highlighted gender-based demand → personalize strategy
-- Uncovered customer satisfaction trends → improve service consistency