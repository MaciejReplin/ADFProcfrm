﻿CREATE TABLE [procfwk].[ErrorLog]
	(
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[LocalExecutionId] [uniqueidentifier] NOT NULL,
	[AdfPipelineRunId] [uniqueidentifier] NOT NULL,
	[ActivityRunId] [uniqueidentifier] NOT NULL,
	[ActivityName] [varchar](100) NOT NULL,
	[ActivityType] [varchar](100) NOT NULL,
	[ErrorCode] [int] NOT NULL,
	[ErrorType] [varchar](100) NOT NULL,
	[ErrorMessage] [nvarchar](max) NULL,
	 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
		(
		[LogId] ASC
		)
	)