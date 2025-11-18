-- Condition from STG to Target table

-- 1.) Job Grade

-- Step 1: Delete Data yesterday
DELETE FROM [dbo].[JobGradeDailyReport]
WHERE CONVERT(VARCHAR(10), CAST(ReportDate AS DATE), 120) IN (SELECT distinct CONVERT(VARCHAR(10), CAST(ReportDate AS DATE), 120) FROM [dbo].[STG_JobGradeDailyReport])

-- Step 2: Insert Dailry Data
INSERT INTO [dbo].[JobGradeDailyReport]
SELECT *
FROM [dbo].[STG_JobGradeDailyReport]

-- Step 3: We only collect data 2 years
DELETE FROM [dbo].[JobGradeDailyReport]
WHERE CONVERT(VARCHAR(10), CAST(ReportDate AS DATE), 120) < DATEFROMPARTS(YEAR(GETDATE()) - 2, 1, 1)
-- CAST(DATEADD(YEAR, -2, DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0)) AS DATE)