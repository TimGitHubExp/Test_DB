CREATE TABLE [dbo].[Sales2010]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DateEntered] [date] NOT NULL,
[Amount] [money] NOT NULL,
[Archive] [tinyint] NULL
) ON [Data2]
GO
ALTER TABLE [dbo].[Sales2010] ADD CONSTRAINT [CK_Sales2010_DateEntered] CHECK (([DateEntered]>='1/1/2010' AND [DateEntered]<='12/31/2010'))
GO
ALTER TABLE [dbo].[Sales2010] ADD CONSTRAINT [PK_Sales2010] PRIMARY KEY CLUSTERED  ([ID], [DateEntered]) ON [Data2]
GO
