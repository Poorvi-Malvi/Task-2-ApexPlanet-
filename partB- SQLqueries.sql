use apex-planet;

-- 2. Top 5 Products by Total Revenue
SELECT `Product Name`, SUM(Sales) AS Total_Revenue
FROM cleaned_data
GROUP BY `Product Name`
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 3. Top 5 Customers by Total Spending
SELECT `Customer Name`, SUM(Sales) AS Total_Spent
FROM cleaned_data
GROUP BY `Customer Name`
ORDER BY Total_Spent DESC
LIMIT 5;

-- 4. Total Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM cleaned_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Most Popular Shipping Mode
SELECT `Ship Mode`, COUNT(*) AS Total_Orders
FROM cleaned_data
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;

-- 6. Average Sales Value by Category
SELECT Category, AVG(Sales) AS Avg_Sale_Value
FROM cleaned_data
GROUP BY Category;
