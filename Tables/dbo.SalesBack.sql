CREATE TABLE [dbo].[SalesBack]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DateEntered] [date] NOT NULL,
[Amount] [money] NOT NULL
) ON [Data1]
GO
ALTER TABLE [dbo].[SalesBack] ADD CONSTRAINT [CK_SalesBack_DateEntered] CHECK (([DateEntered]>='1/1/2013' AND [DateEntered]<='12/31/2013'))
GO
ALTER TABLE [dbo].[SalesBack] ADD CONSTRAINT [PK_SalesBack] PRIMARY KEY CLUSTERED  ([ID], [DateEntered]) ON [Data1]
GO
