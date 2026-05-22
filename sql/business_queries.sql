----Category-wise Sales Analysis
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

----Which sub-categories are loss-making?
SELECT "Sub-Category",
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Sub-Category"
ORDER BY Total_Profit ASC;

----Top 10 Customers by Sales
SELECT "Customer Name",
ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore
GROUP BY "Customer Name"
ORDER BY Total_Sales DESC
LIMIT 10;

----Which products/sub-categories are causing losses?
SELECT "Sub-Category",
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Sub-Category"
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;

---Does discount actually hurt profit?
SELECT Discount,
ROUND(AVG(Profit),2) AS Avg_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;

----Top 5 most profitable products
SELECT "Product Name",
ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY "Product Name"
ORDER BY Total_Profit DESC
LIMIT 5;