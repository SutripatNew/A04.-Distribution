-- Condition from STG to Target table
 
-- 4.) FTD0002


-- Step 1: Delete Data in Actual table -- that have in STG table -- 
DELETE FROM [dbo].[FTD0002]
WHERE Deliv_date_From_to IN (SELECT distinct Deliv_date_From_to FROM [dbo].[STG_FTD0002])


-- Step 2: Insert Daily Data to update in Actual table
INSERT INTO [dbo].[FTD0002]
SELECT *
FROM [dbo].[STG_FTD0002]

-- Step 3: We only collect data 1 year
-- Ex. (Today) 2024-12-13 => collect data 2023-12-01 onwards
DELETE FROM [dbo].[FTD0002]
WHERE CAST(Deliv_date_From_to AS DATE) < DATEFROMPARTS(YEAR(GETDATE()) - 1, 1, 1)
-- CAST(DATEADD(YEAR, -1, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)) AS DATE)