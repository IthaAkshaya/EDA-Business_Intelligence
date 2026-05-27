-- Top 5 Products by Revenue (Overall)
SELECT Product, SUM(Revenue) AS TotalRevenue
FROM sales_data
GROUP BY Product
ORDER BY TotalRevenue DESC
LIMIT 5;

-- Top 5 Products by Revenue (Last 6 Months)
SELECT Product, SUM(Revenue) AS TotalRevenue
FROM sales_data
WHERE PurchaseDate >= DATE('now','-6 months')
GROUP BY Product
ORDER BY TotalRevenue DESC
LIMIT 5;

-- Monthly User Acquisition Trend
SELECT strftime('%Y-%m', PurchaseDate) AS PurchaseMonth,
       COUNT(DISTINCT CustomerID) AS NewUsers
FROM sales_data
GROUP BY PurchaseMonth
ORDER BY PurchaseMonth;
