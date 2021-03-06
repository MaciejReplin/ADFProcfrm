﻿CREATE TABLE [procfwk].[Properties]
	(
	[PropertyId] [int] IDENTITY (1, 1) NOT NULL,
	[PropertyName] [varchar](128) NOT NULL,
	[PropertyValue] [nvarchar](500) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ValidFrom] [datetime] CONSTRAINT [DF_Properties_ValidFrom] DEFAULT (getdate()) NOT NULL,
	[ValidTo] [datetime] NULL,
	CONSTRAINT [PK_Properties] PRIMARY KEY CLUSTERED ([PropertyId] ASC, [PropertyName] ASC)
	)
GO