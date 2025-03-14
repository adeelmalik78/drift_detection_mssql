--liquibase formatted sql

--changeset amalik:getCustomerCompany endDelimiter:GO

CREATE PROCEDURE dbo.getCustomerCompany
(
    -- Add the parameters for the stored procedure here
    @LastName nvarchar(50) = NULL,
    @FirstName nvarchar(50) = NULL
)
AS
/*
-- =============================================
-- Author:      My Name
-- Create Date: 01/23/2024
-- Description: Returns the customer's company name.
-- =============================================
*/
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    SELECT FirstName, LastName, CompanyName
       FROM SalesLT.Customer
       WHERE FirstName = @FirstName AND LastName = @LastName;
END
GO
--rollback empty