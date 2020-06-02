USE [Pronostia]
GO

/****** Object:  Table [dbo].[MesureFEMTO]    Script Date: 02/06/2020 07:09:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MesureFEMTO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DataSet] [varchar](50) NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[AtTime] [varchar](50) NULL,
	[SamplingTime] [int] NOT NULL,
	[VibHorMoy] [real] NULL,
	[VibVerMoy] [real] NULL,
	[VibMoy] [real] NULL,
	[VibHorVar] [real] NULL,
	[VibVerVar] [real] NULL,
	[VibVar] [real] NULL,
	[TemperatureMoy] [real] NULL,
	[TemperatureVar] [real] NULL,
	[VibMoy2] [real] NULL,
	[VibVar2] [real] NULL,
 CONSTRAINT [PK_MesureFEMTO] PRIMARY KEY CLUSTERED 
(
	[DataSet] ASC,
	[FileName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[MesureFEMTO] ADD  CONSTRAINT [DF_Table_1_C1m]  DEFAULT ((0)) FOR [VibHorMoy]
GO

ALTER TABLE [dbo].[MesureFEMTO] ADD  CONSTRAINT [DF_Table_1_C2m]  DEFAULT ((0)) FOR [VibVerMoy]
GO


