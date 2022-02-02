SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseLog](
	[DatabaseLogID] [int] IDENTITY(1,1) NOT NULL,
	[PostTime] [datetime] NOT NULL,
	[DatabaseUser] [sysname] COLLATE Latin1_General_CI_AS NOT NULL,
	[Event] [sysname] COLLATE Latin1_General_CI_AS NOT NULL,
	[Schema] [sysname] COLLATE Latin1_General_CI_AS NULL,
	[Object] [sysname] COLLATE Latin1_General_CI_AS NULL,
	[TSQL] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[XmlEvent] [xml] NOT NULL,
 CONSTRAINT [PK_DatabaseLog_DatabaseLogID] PRIMARY KEY NONCLUSTERED 
(
	[DatabaseLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
