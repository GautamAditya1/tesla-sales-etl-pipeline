USE TESLA_SALES;

select * from sales;

-- 1️ Total revenue generated
select sum(Revenue_Million_USD) as Total_Revenue_Million_USD
from sales;

-- 2️ Year-wise revenue trend
select Year, sum(Revenue_Million_USD) as Yearly_Revenue
from sales
GROUP BY Year
Order BY Year;

-- 3️ Model-wise total deliveries
select Model, sum(Estimated_Deliveries) as Total_Deliveries
from sales
GROUP BY Model
ORDER BY Total_Deliveries;
-- 4️ Region-wise revenue distribution
select Region, sum(Revenue_Million_USD) as Region_Wise_Revenue
from sales
GROUP BY Region
ORDER BY Region_Wise_Revenue;
-- 5️ Average price by model
select Model, round(avg(Avg_Price_USD), 2) as Average_Price_By_Model
from sales
GROUP BY Model
ORDER BY Average_Price_By_Model;

-- 6️ Production vs deliveries gap
select Year, Model, sum(Production_Units)-sum(Estimated_Deliveries) as Production_Delivery_Gap
from sales
GROUP BY Year, Model
ORDER BY Year;

-- 7️ Top 5 revenue-generating records
select Year, Model, Region, Revenue_Million_USD 
from sales
ORDER BY Revenue_Million_USD
LIMIT 5;

-- 8️ CO2 savings by year
select Year, sum(CO2_Saved_tons) as CO2_Saved_By_Year
from sales
GROUP BY year
ORDER BY Year;

-- 9️ Charging infrastructure growth
select Year, sum(Charging_Stations) as Total_Charging_Stations
from sales
GROUP BY Year
ORDER BY Year;

-- 10 Monthly revenue trend (across all years)
select Month, sum(Revenue_Million_USD) as Monthly_Revenue
from sales
GROUP BY Month
ORDER BY Month;

