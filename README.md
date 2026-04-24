# Walmart-Sales-Data-Analysis--Using-SQL
Analyzed Walmart's sales data to identify high-performing branches and products, the sales patterns of various products, and understand customer behavior. The primary objective of the analysis is to enhance and optimize sales strategies.

🛒 Walmart Sales Data Analysis
📌 Project Purpose

The primary goal of this project is to analyze Walmart's sales data and uncover insights into the factors influencing sales across different branches. This includes understanding product performance, customer behavior, and overall sales trends.

📊 About the Dataset

The dataset is sourced from the Kaggle Walmart Sales Forecasting Competition. It includes sales transactions from three Walmart branches located in:

Mandalay
Yangon
Naypyitaw
📁 Dataset Overview
Rows: 1000
Columns: 17
🧾 Data Dictionary
Column Name	Description	Data Type
invoice_id	Invoice of the sales made	VARCHAR(30)
branch	Branch where sales occurred	VARCHAR(5)
city	Location of the branch	VARCHAR(30)
customer_type	Type of customer	VARCHAR(30)
gender	Customer gender	VARCHAR(10)
product_line	Product category	VARCHAR(100)
unit_price	Price per unit	DECIMAL(10,2)
quantity	Quantity sold	INT
VAT	Tax amount	FLOAT(6,4)
total	Total transaction amount	DECIMAL(12,4)
date	Transaction date	DATETIME
time	Transaction time	TIME
payment	Payment amount	DECIMAL(10,2)
cogs	Cost of goods sold	DECIMAL(10,2)
gross_margin_pct	Gross margin percentage	FLOAT(11,9)
gross_income	Gross income	DECIMAL(12,4)
rating	Customer rating	FLOAT(2,1)
🔍 Analysis Performed
📦 Product Analysis
Identify top-performing product lines
Analyze sales distribution across product categories
Detect underperforming product segments
💰 Sales Analysis
Evaluate sales trends over time
Measure effectiveness of sales strategies
Identify revenue patterns and growth opportunities
👥 Customer Analysis
Segment customers by type and behavior
Analyze purchasing patterns
Evaluate profitability by customer segment
⚙️ Approach
1. 🧹 Data Wrangling
Checked for missing/null values
Ensured data consistency
Created database and tables
Applied NOT NULL constraints to maintain data quality
2. 🛠️ Feature Engineering

New features were created to enhance analysis:

time_of_day → Morning, Afternoon, Evening
day_name → Day of the week (Mon–Sun)
month_name → Month (Jan, Feb, Mar)

These features help analyze:

Peak sales time
Busiest days
Monthly performance trends
3. 📈 Exploratory Data Analysis (EDA)

EDA was performed to answer key business questions and extract meaningful insights from the data.

❓ Business Questions
🔹 Generic
How many distinct cities are present?
Which city corresponds to each branch?
🔹 Product Analysis
Number of unique product lines
Most common payment method
Best-selling product line
Total revenue by month
Month with highest COGS
Product line with highest revenue
City with highest revenue
Product line with highest VAT
Product category classification (Good/Bad based on avg sales)
Branch selling above average products
Most common product line by gender
Average rating per product line
🔹 Sales Analysis
Sales distribution across time of day and weekdays
Customer type generating highest revenue
City with highest VAT percentage
Customer type paying most VAT
🔹 Customer Analysis
Number of unique customer types
Number of payment methods
Most common customer type
Customer type with highest purchases
Gender distribution
Gender distribution per branch
Peak rating times (overall & per branch)
Best rating days (overall & per branch)
🚀 Key Outcomes
Identified top-performing products and branches
Discovered peak sales periods
Gained insights into customer behavior and preferences
Built a strong foundation for data-driven decision-making
🛠️ Tools & Skills Used
SQL (Data querying & analysis)
Data Cleaning & Wrangling
Feature Engineering
Exploratory Data Analysis
📌 Conclusion

This project demonstrates how raw transactional data can be transformed into actionable business insights using structured analysis and SQL techniques.
