-- --------------Exploratory Data Analysis (EDA)----------------------

-- 1.How many distinct cities are present in the dataset?
SELECT DISTINCT City 
FROM walmart_sales_data.s;
-- {The dataset consists of 3 distinct cities}

-- 2.In which city is each branch situated?
SELECT DISTINCT city, branch
FROM walmart_sales_data.s;
-- {Branch A is in Yangon, B in Mandalay and C in Naypyitaw}
