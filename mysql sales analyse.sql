-- question 1
SELECT 
    COALESCE(Product_Name, 'Unknown Product') AS Product_Name,
    ROUND(SUM(COALESCE(Sales, 0)), 2) AS Total_Revenue
FROM (
    SELECT DISTINCT *
    FROM superstore_sales
) AS cleaned_data
GROUP BY Product_Name
ORDER BY Total_Revenue DESC
LIMIT 3;

-- question 2
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month_Number,
    MONTHNAME(Order_Date) AS Month_Name,
    ROUND(SUM(COALESCE(Sales, 0)), 2) AS Total_Sales
FROM (
    SELECT DISTINCT *
    FROM superstore_sales
) AS cleaned_data
WHERE Order_Date IS NOT NULL
GROUP BY 
    YEAR(Order_Date),
    MONTH(Order_Date),
    MONTHNAME(Order_Date)
ORDER BY 
    Year,
    Month_Number;
    
-- question 3
SELECT *
FROM superstore_sales
WHERE 
    Product_Name IS NULL
    OR Sales IS NULL
    OR Order_Date IS NULL;

-- ---------- UPDATE NULL VALUES ----------
UPDATE superstore_sales
SET 
    Product_Name = COALESCE(Product_Name, 'Unknown Product'),
    Sales = COALESCE(Sales, 0)
WHERE 
    Product_Name IS NULL
    OR Sales IS NULL;

-- ---------- FIND DUPLICATES ----------
SELECT 
    Order_ID,
    Product_Name,
    COUNT(*) AS Duplicate_Count
FROM superstore_sales
GROUP BY Order_ID, Product_Name
HAVING COUNT(*) > 1;

-- ---------- REMOVE DUPLICATES ----------
DELETE t1
FROM superstore_sales t1
INNER JOIN superstore_sales t2
ON 
    t1.Order_ID = t2.Order_ID
    AND t1.Product_Name = t2.Product_Name
    AND t1.Row_ID > t2.Row_ID;