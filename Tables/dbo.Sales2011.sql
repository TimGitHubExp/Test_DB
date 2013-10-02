CREATE TABLE [dbo].[Sales2011]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DateEntered] [date] NOT NULL,
[Amount] [money] NOT NULL
) ON [Data2]
GO
ALTER TABLE [dbo].[Sales2011] ADD CONSTRAINT [CK_Sales2011_DateEntered] CHECK (([DateEntered]>='1/1/2011' AND [DateEntered]<='12/31/2011'))
GO
ALTER TABLE [dbo].[Sales2011] ADD CONSTRAINT [PK_Sales2011] PRIMARY KEY CLUSTERED  ([ID], [DateEntered]) ON [Data2]
GO
