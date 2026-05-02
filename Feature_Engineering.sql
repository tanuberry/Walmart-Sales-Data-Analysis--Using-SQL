------------------- Feature Engineering -----------------------------
-- 1. Time_of_day

SELECT Time,
(CASE 
	WHEN `Time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
	WHEN `Time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
	ELSE "Evening" 
END) AS time_of_day
FROM walmart_sales_data.s;

ALTER TABLE walmart_sales_data.s ADD COLUMN time_of_day VARCHAR(20);

UPDATE walmart_sales_data.s
SET time_of_day = (
	CASE 
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
		WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
		ELSE "Evening" 
	END
);


-- 2.Day_name

SELECT Date,
DAYNAME(Date) AS day_name
FROM walmart_sales_data.s;

ALTER TABLE walmart_sales_data.s ADD COLUMN day_name VARCHAR(10);

UPDATE walmart_sales_data.s
SET day_name = DAYNAME(date);

-- 3.Month_name

SELECT Date,
MONTHNAME(Date) AS month_name
FROM walmart_sales_data.s;

ALTER TABLE walmart_sales_data.s ADD COLUMN month_name VARCHAR(10);

UPDATE walmart_sales_data.s
SET month_name = MONTHNAME(date);
