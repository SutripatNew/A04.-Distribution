-- QUERY CHECK

-- Code

SELECT MAX(Delivery_Date) -- LEFT(Delivery_Date,6) AS [ปี เดือน],count(*) AS [จำนวนแถวข้อมูล]
FROM [SupplyChain].[VW_FTD1413_By_Customer]
--GROUP BY LEFT(Delivery_Date,6)
--ORDER BY LEFT(Delivery_Date,6)

--SELECT LEFT(Delivery_Date,6),count(*)
--FROM [FTD1413_By_Customer_Hist]
--GROUP BY LEFT(Delivery_Date,6)
--ORDER BY LEFT(Delivery_Date,6)


SELECT MAX(Del_Date) -- LEFT(Del_Date,6) AS [ปี เดือน],count(*) AS [จำนวนแถวข้อมูล]
FROM [SupplyChain].[VW_FTD1413_By_Shipment]
--GROUP BY LEFT(Del_Date,6)
--ORDER BY LEFT(Del_Date,6)

--SELECT LEFT(Del_Date,6),count(*)
--FROM [FTD1413_By_Shipment_Hist]
--GROUP BY LEFT(Del_Date,6)
--ORDER BY LEFT(Del_Date,6)


SELECT MAX(ReportDate) -- LEFT(ReportDate,7) AS [ปี เดือน],count(*) AS [จำนวนแถวข้อมูล]
FROM [SupplyChain].[VW_JobGradeDailyReport]
--GROUP BY LEFT(ReportDate,7)
--ORDER BY LEFT(ReportDate,7)

--SELECT LEFT(ReportDate,7),count(*)
--FROM [dbo].[JobGradeDailyReport_Hist]
--GROUP BY LEFT(ReportDate,7)
--ORDER BY LEFT(ReportDate,7)


SELECT MAX(Deliv_date_From_to) -- LEFT(Deliv_date_From_to,6) AS [ปี เดือน],count(*) AS [จำนวนแถวข้อมูล]
FROM [SupplyChain].[VW_FTD0002]
--GROUP BY LEFT(Deliv_date_From_to,6)
--ORDER BY LEFT(Deliv_date_From_to,6)

-- ********************************************************************************************************************************************* --

-- C_FTD1413_By_Shipment
SELECT	LEFT(Del_Date,6)								AS Dates,
		count(*) AS countt,
		SUM(CAST(Delloc AS decimal(20,10)))				AS Delloc						,
		SUM(CAST(Shipment_Number AS decimal(20,10)))	AS Shipment_Number				,
		SUM(CAST(Plan_Driver_ID AS decimal(20,10)))		AS Plan_Driver_ID				,
		SUM(CAST(Driver_No AS decimal(20,10)))			AS Driver_No					,
		SUM(Cap_Cube_Plan)								AS Cap_Cube_Plan				,
		SUM(Cap_Cube)									AS Cap_Cube						,
		SUM(No_of_helper_plan)							AS No_of_helper_plan			,
		SUM(Total_Helper)								AS Total_Helper					,
		SUM(Distance_Plan)								AS Distance_Plan				,
		SUM(Distance_Actual)							AS Distance_Actual				,
		SUM(Fuel)										AS Fuel							,
		SUM(Rate_KM_L)									AS Rate_KM_L					,
		SUM(Total_Case)									AS Total_Case					,
		SUM(Total_Case_Success)							AS Total_Case_Success			,
		SUM(Unsuccess_Case)								AS Unsuccess_Case				,
		SUM(PercentPCs_Success)							AS PercentPCs_Success			,
		SUM(PercentPCs_Unsuccess)						AS PercentPCs_Unsuccess			,
		SUM(Cube_use_by_Shipment)						AS Cube_use_by_Shipment			,
		SUM(Cube_Use_Success)							AS Cube_Use_Success				,
		SUM(Cube_Use_Unsuccess)							AS Cube_Use_Unsuccess			,
		SUM(Unit_Case)									AS Unit_Case					,
		SUM(Unit_Case_Success)							AS Unit_Case_Success			,
		SUM(Unit_Case_Unsuccess)						AS Unit_Case_Unsuccess			,
		SUM(Standard_Case_Assigned)						AS Standard_Case_Assigned		,
		SUM(Standard_Case_Sucess)						AS Standard_Case_Sucess			,
		SUM(Standard_Case_Unsuccess)					AS Standard_Case_Unsuccess		,
		SUM(Total_Weight)								AS Total_Weight					,
		SUM([Weight])									AS [Weight]						,
		SUM(No_Customer_per_ship)						AS No_Customer_per_ship			,
		SUM(Total_DO_per_shipment)						AS Total_DO_per_shipment		,
		SUM(Success_Del__Doc)							AS Success_Del__Doc				,
		SUM(Unsccess_Del__Doc)							AS Unsccess_Del__Doc			,
		SUM(PercentDoc_Success)							AS PercentDoc_Success			,
		SUM(Total_RGB)									AS Total_RGB					,
		SUM(Total_NRB)									AS Total_NRB					,
		SUM(Total_Can)									AS Total_Can					,
		SUM(Total_Namthip)								AS Total_Namthip				,
		SUM(Total_Still)								AS Total_Still					,
		SUM(Total_Postmix)								AS Total_Postmix				,
		SUM(Pick_up_RBG)								AS Pick_up_RBG					,
		SUM(Other)										AS Other						,
		SUM(Truck_Occupancy)							AS Truck_Occupancy				,
		SUM(Truck_Occupancy_Actual)						AS Truck_Occupancy_Actual		,
		SUM(No__of_Pallet)								AS No__of_Pallet				,
		SUM(Bay)										AS Bay							,
		SUM(D_Pallets)									AS D_Pallets					,
		SUM(Pallets_Assigned)							AS Pallets_Assigned				,
		SUM(Full_Pallets)								AS Full_Pallets					,
		SUM(Mix_Pallets)								AS Mix_Pallets					,
		SUM(Trip)										AS Trip							,
		SUM(E1)											AS E1							,
		SUM(E2)											AS E2							,
		SUM(E3)											AS E3							,
		SUM(E4)											AS E4							,
		SUM(E5)											AS E5							,
		SUM(E9)											AS E9							,
		SUM(OTHER2)										AS OTHER2						,
		SUM(OTHER_HB)									AS OTHER_HB						,
		SUM(CAST(CASE WHEN Start_odometer = '' THEN 0 ELSE Start_odometer	END AS decimal(20,10)))		AS Start_odometer	,		
		SUM(CAST(CASE WHEN End_odometer = '' THEN 0 ELSE End_odometer	END AS decimal(20,10)))			AS End_odometer		,			
		SUM(CAST(Shipment_by AS decimal(20,10)))		AS Shipment_by					,
		SUM(CAST(Plan_Board_no AS decimal(20,10)))		AS Plan_Board_no				,
		SUM(CAST(Helper_1 AS decimal(20,10)))			AS Helper_1						,
		SUM(CAST(Helper_2 AS decimal(20,10)))			AS Helper_2						,
		SUM(CAST(Helper_3 AS decimal(20,10)))			AS Helper_3						,
		SUM(CAST(Shipping_Point_Receiving_Point AS decimal(20,10)))	AS Shipping_Point_Receiving_Point,
		SUM(CAST(Report_Version AS decimal(20,10)))					AS Report_Version				,
		SUM(CAST(Max_load_weight AS decimal(20,10)))				AS Max_load_weight				,
		SUM(CAST(CASE WHEN Violation_Code is null or Violation_Code = '' THEN 0 ELSE Violation_Code END AS decimal(20,10)))					AS Violation_Code
FROM [dbo].[FTD1413_By_Shipment]
GROUP BY LEFT(Del_Date,6)
ORDER BY LEFT(Del_Date,6)
--WHERE Del_Date like '202409%'

-- ********************************************************************************************************************************************* --

-- C_FTD1413_By_Customer
SELECT	LEFT(Delivery_Date,6)									AS Dates,
		COUNT(*) AS Countt,
		SUM(CAST(Delloc AS decimal(20,10)))						AS Delloc,
		SUM(CAST(Ship_to_party AS decimal(20,10)))				AS Ship_to_party,
		SUM(CAST(CASE WHEN Customer_group = '' THEN 0 ELSE Customer_group END AS decimal(20,10)))	AS Customer_group,
		SUM(CAST(Sales_Document AS decimal(20,10)))				AS Sales_Document,
		SUM(CAST(Delivery_Document AS decimal(20,10)))			AS Delivery_Document,
		SUM(No_of_SKU_per_DO)									AS No_of_SKU_per_DO,
		SUM(Total_Case)											AS Total_Case,
		SUM(CAST(Shipment_Number AS decimal(20,10)))			AS Shipment_Number,
		SUM(CAST(SO_Document_Date AS decimal(20,10)))			AS SO_Document_Date,
		SUM(CAST(Delivery_Date AS decimal(20,10)))				AS Delivery_Date,
		SUM(CAST(Sales_Office AS decimal(20,10)))				AS Sales_Office,
		---- SUM(CAST(Sales_Representative AS decimal(20,10)))		AS Sales_Representative,
		SUM(CASE WHEN Sales_Representative = 's' OR Sales_Representative = '' THEN 0 ELSE CAST(Sales_Representative AS decimal(20,10)) END) AS Sales_Representative,
		SUM(Gross_weight)										AS Gross_weight,
		SUM(CAST(Shipping_Point AS decimal(20,10)))				AS Shipping_Point,
		SUM(CAST(CASE WHEN Violation_Code is null or LTRIM(RTRIM(Violation_Code)) = '' THEN 0 ELSE Violation_Code END AS decimal(20,10)))					AS Violation_Code
FROM [dbo].[FTD1413_By_Customer]
GROUP BY LEFT(Delivery_Date,6)
ORDER BY LEFT(Delivery_Date,6)
--WHERE Delivery_Date like '202312%'

-- ********************************************************************************************************************************************* --

-- C_JobGrade
SELECT	LEFT(ReportDate,7)										AS Dates,
		count(*)												AS countt,
		SUM(CAST(ShipmentNumber AS decimal(30,10)))				AS ShipmentNumber,
		SUM(CAST(CASE WHEN LEFT(DMANID,1) LIKE '[A-Z]' THEN 0 ELSE  DMANID END AS decimal(30,10)))	AS DMANID, -- R15101375 R39030135 กำหนดเป็น 0
		SUM(CAST(DMANIDRef AS decimal(30,10)))					AS DMANIDRef,
		SUM(CAST(Helper1 AS decimal(30,10)))					AS Helper1,
		SUM(CAST(CASE WHEN ISNULL(Helper2,0) = ' ' THEN 0 ELSE Helper2 END AS decimal(30,10)))	AS Helper2,
		SUM(CAST(CASE WHEN ISNULL(Helper3,0) = ' ' THEN 0 ELSE Helper3 END AS decimal(30,10)))	AS Helper3,
		SUM(Start_Mileage)										AS Start_Mileage,
		SUM(End_Mileage)										AS End_Mileage,
		SUM(PlanJGCustService)									AS PlanJGCustService,
		SUM(ActJGCustService)									AS ActJGCustService,
		SUM(PlanOutlet)											AS PlanOutlet,
		SUM(ActOutlet)											AS ActOutlet,
		SUM(GradeOutlet)										AS GradeOutlet,
		SUM(PlanJGOutlet)										AS PlanJGOutlet,
		SUM(ActJGOutlet)										AS ActJGOutlet,
		SUM(PlanCase)											AS PlanCase,
		SUM(ActCase)											AS ActCase,
		SUM(GradeCase)											AS GradeCase,
		SUM(PlanJGCase)											AS PlanJGCase,
		SUM(ActJGCase)											AS ActJGCase,
		SUM(PlanJGTimePerf)										AS PlanJGTimePerf,
		SUM(ActJGTimePerf)										AS ActJGTimePerf,
		SUM(GradeStartTime)										AS GradeStartTime,
		SUM(PlanJGStartTime)									AS PlanJGStartTime,
		SUM(ActJGStartTime)										AS ActJGStartTime,
		SUM(PlanUsedTime)										AS PlanUsedTime,
		SUM(ActUsedTime)										AS ActUsedTime,
		SUM(GradeUsedTime)										AS GradeUsedTime,
		SUM(PlanJGUsedTime)										AS PlanJGUsedTime,
		SUM(ActJGUsedTime)										AS ActJGUsedTime,
		SUM(PlanJGDistancePerf)									AS PlanJGDistancePerf,
		SUM(ActJGDistancePerf)									AS ActJGDistancePerf,
		SUM(PlanDistance)										AS PlanDistance,
		SUM(ActDistance)										AS ActDistance,
		SUM(GradeDistance)										AS GradeDistance,
		SUM(PlanJGDistance)										AS PlanJGDistance,
		SUM(ActJGDistance)										AS ActJGDistance,
		SUM(PlanFuelRate)										AS PlanFuelRate,
		SUM(ActFuelRate)										AS ActFuelRate,
		SUM(GradeFuelRate)										AS GradeFuelRate,
		SUM(PlanJGFuelRate)										AS PlanJGFuelRate,
		SUM(ActJGFuelRate)										AS ActJGFuelRate,
		SUM(PlanProdPerf)										AS PlanProdPerf,
		SUM(ActProdPerf)										AS ActProdPerf,
		SUM(GradeProdPerf)										AS GradeProdPerf,
		SUM(PlanJGProdPerf)										AS PlanJGProdPerf,
		SUM(ActJGProdPerf)										AS ActJGProdPerf,
		SUM(PlanInRange)										AS PlanInRange,
		SUM(ActInRange)											AS ActInRange,
		SUM(GradeInRange)										AS GradeInRange,
		SUM(PlanJGSysPerf)										AS PlanJGSysPerf,
		SUM(ActJGSysPerf)										AS ActJGSysPerf,
		SUM(PerfSummary)										AS PerfSummary,
		SUM(FinalFuelRatePlan)									AS FinalFuelRatePlan,
		SUM(FinalFuelRateActual)								AS FinalFuelRateActual,
		SUM(FinalGradeFuelRate)									AS FinalGradeFuelRate,
		SUM(MaxSpeed)											AS MaxSpeed,
		SUM(MinSpeed)											AS MinSpeed,
		SUM(AvgSpeed)											AS AvgSpeed,
		SUM(StemOut_KM)											AS StemOut_KM,
		SUM(StemIn_KM)											AS StemIn_KM,
		SUM(SequencePlan_Sum)									AS SequencePlan_Sum,
		SUM(DiffSequence_Sum)									AS DiffSequence_Sum,
		SUM(SequenceAccuracy)									AS SequenceAccuracy,
		SUM(SystemRecieveRadius)								AS SystemRecieveRadius,
		SUM(CAST(HoldCode AS decimal(30,10)))					AS HoldCode,
		SUM(CAST(CancelCode AS decimal(30,10)))					AS CancelCode,
		SUM(Distance_Tracking)									AS Distance_Tracking,
		SUM(Distance_Telematic)									AS Distance_Telematic,
		SUM(Usage_oil_Tracking)									AS Usage_oil_Tracking,
		SUM(Usage_oil_Telematic)								AS Usage_oil_Telematic,
		SUM(Usage_oil_rate_Tracking)							AS Usage_oil_rate_Tracking,
		SUM(Usage_oil_rate_Telematic)							AS Usage_oil_rate_Telematic,
		SUM(Total)												AS Total,
		SUM([Safety])											AS [Safety],
		SUM(ActSafety)											AS ActSafety,
		SUM(Speed)												AS Speed,
		SUM(ActSpeed)											AS ActSpeed,
		SUM(WeightSpeed)										AS WeightSpeed,
		SUM(GradeSpeed)											AS GradeSpeed,
		SUM(Speed_Time)											AS Speed_Time,
		SUM(SeatBelt)											AS SeatBelt,
		SUM(ActSeatBelt)										AS ActSeatBelt,
		SUM(WeightSeatBelt)										AS WeightSeatBelt,
		SUM(GradeSeatBelt)										AS GradeSeatBelt,
		SUM(SeatBelt_Time)										AS SeatBelt_Time,
		SUM(Turn)												AS Turn,
		SUM(ActTurn)											AS ActTurn,
		SUM(WeightTurn)											AS WeightTurn,
		SUM(GradeTurn)											AS GradeTurn,
		SUM(Turn_Times)											AS Turn_Times,
		SUM(SpeedBump)											AS SpeedBump,
		SUM(ActSpeedBump)										AS ActSpeedBump,
		SUM(WeightSpeedBump)									AS WeightSpeedBump,
		SUM(GradeSpeedBump)										AS GradeSpeedBump,
		SUM(SpeedBump_Times)									AS SpeedBump_Times,
		SUM([Break])											AS [Break],
		SUM(ActBreak)											AS ActBreak,
		SUM(WeightBreak)										AS WeightBreak,
		SUM(GradeBreak)											AS GradeBreak,
		SUM(Break_Times)										AS Break_Times,
		SUM(FreeWheeling)										AS FreeWheeling,
		SUM(ActFreeWheeling)									AS ActFreeWheeling,
		SUM(WeightFreeWheeling)									AS WeightFreeWheeling,
		SUM(GradeFreeWheeling)									AS GradeFreeWheeling,
		SUM(FreeWheeling_Times)									AS FreeWheeling_Times,
		SUM(Economical)											AS Economical,
		SUM(ActEconomical)										AS ActEconomical,
		SUM(EngineRound)										AS EngineRound,
		SUM(ActEngineRound)										AS ActEngineRound,
		SUM(WeightEngineRound)									AS WeightEngineRound,
		SUM(GradeEngineRound)									AS GradeEngineRound,
		SUM(EngineRound_Times)									AS EngineRound_Times,
		SUM(Fuel)												AS Fuel,
		SUM(ActFuel)											AS ActFuel,
		SUM(WeightFuel)											AS WeightFuel,
		SUM(GradeFuel)											AS GradeFuel,
		SUM(Fuel_Value)											AS Fuel_Value,
		SUM(OnEngineParking)									AS OnEngineParking,
		SUM(ActOnEngineParking)									AS ActOnEngineParking,
		SUM(WeightOnEngineParking)								AS WeightOnEngineParking,
		SUM(GradeOnEngineParking)								AS GradeOnEngineParking,
		SUM(OnEngineParking_Times)								AS OnEngineParking_Times,
		SUM(Accelerate)											AS Accelerate,
		SUM(ActAccelerate)										AS ActAccelerate,
		SUM(WeightAccelerate)									AS WeightAccelerate,
		SUM(GradeAccelerate)									AS GradeAccelerate,
		SUM(Accelerate_Times)									AS Accelerate_Times
FROM [dbo].[JobGradeDailyReport]
GROUP BY LEFT(ReportDate,7)
ORDER BY LEFT(ReportDate,7)
--WHERE ReportDate like '2024-09%'

-- ********************************************************************************************************************************************* --

-- C_FTD0002
SELECT	LEFT(Deliv_date_From_to,6)							AS Dates,
		count(*) AS countt,
		SUM(CAST(Delivery_document AS decimal(20,10)))		AS Delivery_document,
		SUM(CAST(Shipping_point AS decimal(20,10)))			AS Shipping_point,
		SUM(CAST(Ship_to_party AS decimal(20,10)))			AS Ship_to_party,
		SUM(Order_Cube)										AS Order_Cube,
		SUM(Order_All_Case)									AS Order_All_Case,
		SUM(CAST(Sales_Office AS decimal(20,10)))			AS Sales_Office,
		SUM(Net_Value)										AS Net_Value,
		SUM(Gross_Weight)									AS Gross_Weight
FROM [dbo].[STG_FTD0002]
GROUP BY LEFT(Deliv_date_From_to,6)
ORDER BY LEFT(Deliv_date_From_to,6)
--WHERE Deliv_date_From_to like '202303%'

-- ********************************************************************************************************************************************* --

-- Code สำหรับตรวจ FTD0002
SELECT	count(*)	AS countt,
		SUM(CAST(Delivery_document AS decimal(20,10)))	AS Delivery_document,
		SUM(CAST(Shipping_point AS decimal(20,10)))		AS Shipping_point,
		SUM(CAST(Ship_to_party AS decimal(20,10)))		AS Ship_to_party,
		SUM(Order_Cube)									AS Order_Cube,
		SUM(Order_All_Case)								AS Order_All_Case,
		SUM(CAST(Sales_Office AS decimal(20,10)))		AS Sales_Office,
		SUM(Net_Value)									AS Net_Value,
		SUM(Gross_Weight)								AS Gross_Weight
FROM [dbo].[STG_FTD0002]