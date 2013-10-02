SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create Procedure [dbo].[dbo_pr_GetSalesByDateRange]
	@DateBegin DATE
	, @DateEnd DATE
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT *
	FROM dbo.Sales
	WHERE DateEntered BETWEEN @DateBegin AND @DateEnd;
	
	RETURN 0;
END
GO
