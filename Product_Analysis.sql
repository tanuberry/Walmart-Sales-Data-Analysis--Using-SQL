-- --------------Product Analysis -------------------
-- How many distinct product lines are there in the dataset?
SELECT COUNT(DISTINCT Product_line) FROM walmart_sales_data.s;
-- {The analysis is done on 6 unique product_lines}

-- What is the most common payment method?
SELECT Payment, COUNT(Invoice_ID) AS common_payment_method
FROM walmart_sales_data.s 
GROUP BY Payment 
ORDER BY common_payment_method DESC
LIMIT 1;
-- {Ewallet is the most common payment method}

-- What is the most selling product line?
SELECT Product_line, COUNT(Invoice_ID) AS most_selling_product
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY most_selling_product DESC
LIMIT 1;
-- {Fashion Accessories is the most selling product}

-- What is the total revenue by month?
SELECT month_name, SUM(Total) AS Total_Revenue 
FROM walmart_sales_data.s 
GROUP BY month_name
ORDER BY Total_Revenue DESC;
-- {Out of the months of quarter 1, Jan has the highest revenue and Feb has the lowest}

-- Which month recorded the highest Cost of Goods Sold (COGS)?
SELECT month_name, SUM(cogs) AS Total_cogs 
FROM walmart_sales_data.s 
GROUP BY month_name
ORDER BY Total_cogs  DESC;
-- {Jan has highest cogs and Feb has the least}

-- Which product line generated the highest revenue?
SELECT Product_line, SUM(Total) AS Total_Product_Line_Revenue
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY Total_Product_Line_Revenue DESC
LIMIT 1;
-- {Food and beverages product line generated the highest revenue}

-- Which city has the highest revenue?
SELECT City, SUM(Total) AS Total_City_Revenue
FROM walmart_sales_data.s 
GROUP BY City
ORDER BY Total_City_Revenue DESC
LIMIT 1;
-- {Naypyitaw has generated the highest revenue}

-- Which product line incurred the highest VAT?
SELECT Product_line, SUM(Tax_5_percent) AS Total_VAT
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY Total_VAT DESC
LIMIT 1;
-- {Food and beverages product line generated the highest VAT}

-- Retrieve each product line and add a column product_category, 
-- indicating 'Good' or 'Bad,' based on whether its sales are above the average.
ALTER TABLE walmart_sales_data.s 
ADD COLUMN product_category VARCHAR(20);

UPDATE walmart_sales_data.s 
SET product_category = 
CASE 
    WHEN total >= (SELECT AVG(total) FROM walmart_sales_data.s) THEN 'Good'
    ELSE 'Bad'
END;

-- Which branch sold more products than average product sold?
SELECT
Branch, SUM(Quantity) AS quantity
FROM walmart_sales_data.s
GROUP BY Branch
HAVING SUM(Quantity) > AVG(Quantity)
ORDER BY quantity DESC;
-- {Branch A sold the maximum and Branch B sold the minimum Quantity}

-- What is the most common product line by gender?
SELECT gender, product_line, COUNT(gender) AS total_count
FROM walmart_sales_data.s
GROUP BY gender, product_line ORDER BY total_count DESC;
-- To rank them use below code
SELECT
Product_line, Gender
FROM (
SELECT Gender, Product_line,
DENSE_RANK()OVER(PARTITION BY gender ORDER BY COUNT(*) DESC) AS rnk
FROM walmart_sales_data.s
GROUP BY Gender, Product_Line) AS t
WHERE rnk = 1;
-- {Fashion accessories is the most common product line for Female}
-- {Health and Beauty is the most common product line for Male}

-- What is the average rating of each product line?
SELECT
Product_line, AVG(Rating) AS avg_rating
FROM walmart_sales_data.s
GROUP BY Product_Line
ORDER BY avg_rating DESC;
-- {Food and beverages has the highest average rating and Home and lifestyle has the lowest}


-- --------------ANALYSIS-------------
-- High Demand - Fashion accessories
-- High Value -  Food And Beverages - High Rating
-- Increase Inventory for above 2 product lines
-- Use Fashion accessories for customer acquisition, Food for profit maximization
-- Introduce cashback / discounts on e-wallet payments
-- Increase stock & marketing spend before January as that has max sales
-- Run promotions in February to boost low demand
-- Audit Branch B and replicate Branch A's practices there
-- Run gender-targeted marketing campaigns


