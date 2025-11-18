-- Condition from STG to Target table

-- 3.) By Customer

-- Step 1: Delete Data yesterday
DELETE FROM [dbo].[FTD1413_By_Customer]
WHERE CONVERT(VARCHAR(10), CAST(Delivery_Date AS DATE), 120) IN (SELECT distinct CONVERT(VARCHAR(10), CAST(Delivery_Date AS DATE), 120) FROM [dbo].[STG_FTD1413_By_Customer])

-- Step 2: Insert Dailry Data
INSERT INTO [dbo].[FTD1413_By_Customer]
SELECT *
FROM [dbo].[STG_FTD1413_By_Customer]

-- Step 3: We only collect data 2 years
DELETE FROM [dbo].[FTD1413_By_Customer]
WHERE CONVERT(VARCHAR(10), CAST(Delivery_Date AS DATE), 120) < DATEFROMPARTS(YEAR(GETDATE()) - 2, 1, 1)
-- CAST(DATEADD(YEAR, -2, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)) AS DATE)
