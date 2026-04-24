<img width="685" height="163" alt="image" src="https://github.com/user-attachments/assets/cc1d66d8-afd0-41fd-aa83-d839674bc242" />

# Walmart-Sales-Data-Analysis--Using-SQL
Analyzed Walmart's sales data to identify high-performing branches and products, the sales patterns of various products, and understand customer behavior. The primary objective of the analysis is to enhance and optimize sales strategies.

# 🛒 Walmart Sales Data Analysis

## 📌 Project Purpose
The primary goal of this project is to analyze Walmart's sales data and uncover insights into the factors influencing sales across different branches. This includes understanding product performance, customer behavior, and sales trends.

---

## 📊 About the Dataset
The dataset is sourced from the Kaggle Walmart Sales Forecasting Competition. It includes transactions from three branches:

- Mandalay  
- Yangon  
- Naypyitaw  

**Rows:** 1000  
**Columns:** 17  

---

## 🧾 Data Dictionary

| Column Name        | Description                              | Data Type        |
|-------------------|------------------------------------------|------------------|
| invoice_id        | Invoice of the sales made                | VARCHAR(30)      |
| branch            | Branch where sales occurred              | VARCHAR(5)       |
| city              | Location of the branch                   | VARCHAR(30)      |
| customer_type     | Type of customer                         | VARCHAR(30)      |
| gender            | Customer gender                          | VARCHAR(10)      |
| product_line      | Product category                         | VARCHAR(100)     |
| unit_price        | Price per unit                           | DECIMAL(10,2)    |
| quantity          | Quantity sold                            | INT              |
| VAT               | Tax amount                               | FLOAT(6,4)       |
| total             | Total transaction amount                 | DECIMAL(12,4)    |
| date              | Transaction date                         | DATETIME         |
| time              | Transaction time                         | TIME             |
| payment           | Payment amount                           | DECIMAL(10,2)    |
| cogs              | Cost of goods sold                       | DECIMAL(10,2)    |
| gross_margin_pct  | Gross margin percentage                  | FLOAT(11,9)      |
| gross_income      | Gross income                             | DECIMAL(12,4)    |
| rating            | Customer rating                          | FLOAT(2,1)       |

---

## 🔍 Analysis

### 📦 Product Analysis
- Identify top-performing product lines  
- Analyze sales distribution  
- Detect underperforming products  

---

### 💰 Sales Analysis
- Evaluate sales trends over time  
- Measure effectiveness of strategies  
- Identify revenue patterns  

---

### 👥 Customer Analysis
- Segment customers  
- Analyze purchasing behavior  
- Evaluate profitability  

---

## ⚙️ Approach

### 🧹 Data Wrangling
- Checked for missing values  
- Created database and tables  
- Ensured data consistency  

---

### 🛠️ Feature Engineering
Created new columns:
- `time_of_day` → Morning, Afternoon, Evening  
- `day_name` → Day of week  
- `month_name` → Month  

---

### 📈 Exploratory Data Analysis (EDA)
Performed analysis to answer business questions and extract insights.

---

## ❓ Business Questions

### 🔹 Generic
- How many distinct cities are present in the dataset?

- In which city is each branch situated?

---

### 🔹 Product Analysis
- How many distinct product lines are there in the dataset?
- What is the most common payment method?
- What is the most selling product line?
- What is the total revenue by month?
- Which month recorded the highest Cost of Goods Sold (COGS)?
- Which product line generated the highest revenue?
- Which city has the highest revenue?
- Which product line incurred the highest VAT?
- Retrieve each product line and add a column product_category, indicating 'Good' or 'Bad,' based on whether its sales are above the average.
- Which branch sold more products than average product sold?
- What is the most common product line by gender?
- What is the average rating of each product line?

---

### 🔹 Sales Analysis
- Number of sales made in each time of the day per weekday
- Identify the customer type that generates the highest revenue.
- Which city has the largest tax percent/ VAT (Value Added Tax)?
- Which customer type pays the most VAT? 

---

### 🔹 Customer Analysis
- How many unique customer types does the data have?
- How many unique payment methods does the data have?
- Which is the most common customer type?
- Which customer type buys the most?
- What is the gender of most of the customers?
- What is the gender distribution per branch?
- Which time of the day do customers give most ratings?
- Which time of the day do customers give most ratings per branch?
- Which day of the week has the best avg ratings?
- Which day of the week has the best average ratings per branch?
---

## 🚀 Key Insights
- I
---

