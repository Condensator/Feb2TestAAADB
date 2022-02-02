SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Person].[CountryRegion](
	[CountryRegionCode] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_CountryRegion_CountryRegionCode] PRIMARY KEY CLUSTERED 
(
	[CountryRegionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
)

GO
ALTER TABLE [Person].[CountryRegion] ADD  CONSTRAINT [DF_CountryRegion_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
