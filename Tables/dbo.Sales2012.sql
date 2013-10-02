CREATE TABLE [dbo].[Sales2012]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DateEntered] [date] NOT NULL,
[Amount] [money] NOT NULL
) ON [Data1]
GO
ALTER TABLE [dbo].[Sales2012] ADD CONSTRAINT [CK_Sales2012_DateEntered] CHECK (([DateEntered]>='1/1/2012' AND [DateEntered]<='12/31/2012'))
GO
ALTER TABLE [dbo].[Sales2012] ADD CONSTRAINT [PK_Sales2012] PRIMARY KEY CLUSTERED  ([ID], [DateEntered]) ON [Data1]
GO
