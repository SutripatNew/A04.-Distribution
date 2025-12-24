CREATE TABLE [dbo].[STG_FTD0002]
(
	Delivery_document		nvarchar(100),
	Shipping_point			nvarchar(100),				-- int,
	Deliv_date_From_to		nvarchar(20),				-- วันที่ Format 20241213
	[Status]				nvarchar(100),
	Type_Order_PickUp		nvarchar(100),
	Call_Route				nvarchar(100),
	Ship_to_party			nvarchar(100),
	Order_Cube				decimal(20,10),				-- decimal(15,3),
	Order_All_Case			decimal(20,10),				-- int,
	Shipping_Conditions		nvarchar(100),
	Calling_date			nvarchar(20),				-- วันที่ Format 20241213
	Sales_Office			nvarchar(100),
	Net_Value				decimal(20,10),				-- decimal(15,2),
	Document_Date			nvarchar(20),				-- วันที่ Format 20241213
	[Time]					time,						-- nvarchar(20),
	Gross_Weight			decimal(20,10),				-- decimal(15,3),
	[Shipment Number]		nvarchar(100),	
	[Route Name]			nvarchar(100),
	[Status Description]	nvarchar(100),
	[Order Type]			nvarchar(100),
	[Order Type Desc]		nvarchar(100),
	LoadDataDate			datetime
)