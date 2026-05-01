-- --------------Sales Analysis -------------------
-- Number of sales made in each time of the day per weekday
SELECT 
day_name, time_of_day, COUNT(Invoice_ID) AS total_number_of_sales
FROM walmart_sales_data.s 
GROUP BY day_name, time_of_day
HAVING day_name NOT IN ("Saturday", "Sunday")
ORDER BY total_number_of_sales DESC;
-- {The sales is min during the mornings of Monday to Friday and 
-- max is during Tuesday evening and wednesday afternoon and evening}

-- Identify the customer type that generates the highest revenue.
SELECT 
Customer_type, SUM(Total) AS total_revenue
FROM walmart_sales_data.s 
GROUP BY Customer_type
ORDER BY total_revenue DESC
LIMIT 1;
-- {Member customer_type generates the highest revenue}

-- Which city has the largest tax percent/ VAT (Value Added Tax)?
SELECT 
City, MAX(Tax_5_percent) AS largest_VAT
FROM walmart_sales_data.s 
GROUP BY City
ORDER BY largest_VAT DESC
LIMIT 1;
-- {Naypyitaw has the largest_vat}

-- Which customer type pays the most VAT?
SELECT 
Customer_type, SUM(Tax_5_percent) AS total_VAT
FROM walmart_sales_data.s 
GROUP BY Customer_type
ORDER BY total_VAT DESC
LIMIT 1;
-- {Member customer_type pays the most VAT}

-- ---------------------------------ANALYSIS----------------------------------------
-- Customers are less active during work hours and more engaged post-working hours
-- Launch flash sales / discounts during morning low-demand hours
-- Increase staffing & inventory during peak evening slots
-- Members are loyal, high-spending customers
-- Strengthen loyalty programs and Offer exclusive perks / rewards
-- Focus premium product offerings in Naypyitaw
-- Identified peak revenue windows → optimize operations & staffing
-- Discovered high-value customer segment → focus retention strategy
-- Highlighted geographic concentration → scale winning regions
-- Revealed low-demand periods → opportunity for demand generation