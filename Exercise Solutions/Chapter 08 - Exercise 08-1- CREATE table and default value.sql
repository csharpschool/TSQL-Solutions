USE [Car Rental];

-- CREATE the table and primary key --
CREATE TABLE DemoLog
(
	DemoLogID uniqueidentifier NOT NULL,
	Created datetime NOT NULL,
	[Message] varchar(10),
	CONSTRAINT PK_DemoLog PRIMARY KEY CLUSTERED 
	(
		DemoLogID ASC
	)
)
GO

-- ADD default value: new GUID
ALTER TABLE DemoLog
ADD CONSTRAINT DF_DemoLog_DemoLogID DEFAULT (newid()) FOR DemoLogID
GO
