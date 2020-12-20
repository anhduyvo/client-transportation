USE [eshop];
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--
-- Alter table [dbo].[Product]
--
ALTER TABLE [dbo].[Product] ADD COLUMN Title AS [nvarchar](50) DEFAULT NULL

--
-- Alter table [dbo].[User]
--
ALTER TABLE [dbo].[User] ADD COLUMN Title AS [nvarchar](50) DEFAULT NULL
