USE [Prueba]
GO

/****** Object:  Table [dbo].[Clima]    Script Date: 9/11/2022 9:45:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clima](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CLI_TEMPERATURA] [nchar](10) NULL,
	[CLI_HUMEDAD] [nchar](10) NULL,
	[CLI_VISIBILIDAD] [nchar](10) NULL,
 CONSTRAINT [PK_Clima] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


