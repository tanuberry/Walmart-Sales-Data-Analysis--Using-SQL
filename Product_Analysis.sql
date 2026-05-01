-- --------------Product Analysis -------------------
-- How many distinct product lines are there in the dataset?
SELECT COUNT(DISTINCT Product_line) FROM walmart_sales_data.s;

-- What is the most common payment method?
SELECT Payment, COUNT(Invoice_ID) AS common_payment_method
FROM walmart_sales_data.s 
GROUP BY Payment 
ORDER BY common_payment_method DESC
LIMIT 1;

-- What is the most selling product line?
SELECT Product_line, COUNT(Invoice_ID) AS most_selling_product
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY most_selling_product DESC
LIMIT 1;

-- What is the total revenue by month?
SELECT month_name, SUM(Total) AS Total_Revenue 
FROM walmart_sales_data.s 
GROUP BY month_name
ORDER BY Total_Revenue DESC;

-- Which month recorded the highest Cost of Goods Sold (COGS)?
SELECT month_name, SUM(cogs) AS Total_cogs 
FROM walmart_sales_data.s 
GROUP BY month_name
ORDER BY cogs DESC;

-- Which product line generated the highest revenue?
SELECT Product_line, SUM(Total) AS Total_Product_Line_Revenue
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY Total_Product_Line_Revenue DESC
LIMIT 1;

-- Which city has the highest revenue?
SELECT City, SUM(Total) AS Total_City_Revenue
FROM walmart_sales_data.s 
GROUP BY City
ORDER BY Total_City_Revenue DESC
LIMIT 1;

-- Which product line incurred the highest VAT?
SELECT Product_line, SUM(Tax_5_percent) AS Total_VAT
FROM walmart_sales_data.s 
GROUP BY Product_line
ORDER BY Total_VAT DESC
LIMIT 1;

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
Branch, AVG(Quantity)
FROM walmart_sales_data.s
GROUP BY Branch
HAVING SUM(Quantity) > AVG(Quantity)
ORDER BY Quantity DESC

-- What is the most common product line by gender?
-- What is the average rating of each product line?
