CREATE TABLE [dbo].[Sales2013]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DateEntered] [date] NOT NULL,
[Amount] [money] NOT NULL
) ON [Data1]
GO
ALTER TABLE [dbo].[Sales2013] ADD CONSTRAINT [CK_Sales2013_DateEntered] CHECK (([DateEntered]>='1/1/2013' AND [DateEntered]<='12/31/2013'))
GO
ALTER TABLE [dbo].[Sales2013] ADD CONSTRAINT [PK_Sales2013] PRIMARY KEY CLUSTERED  ([ID], [DateEntered]) ON [Data1]
GO
