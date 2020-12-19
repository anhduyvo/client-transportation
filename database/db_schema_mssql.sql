USE [eshop];
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--
-- Table structure for table `Customer`
--
IF (EXISTS (
      SELECT * 
			FROM INFORMATION_SCHEMA.TABLES
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Customer'
    ))
BEGIN
	DROP TABLE [dbo].[Customer]
END
GO

BEGIN
  CREATE TABLE [dbo].[Customer](
		[CustomerId] [INT] IDENTITY(1,1) NOT NULL,
		[CustomerKey] [nvarchar](50) NOT NULL,
		[CustomerName] [nvarchar](50) NOT NULL,
		[Description] [nvarchar](250) DEFAULT NULL,
		[Email] [nvarchar](50) DEFAULT NULL,
		[Mobile] [nvarchar](50) DEFAULT NULL,
		[Tel] [nvarchar](50) DEFAULT NULL,
		[Fax] [nvarchar](50) DEFAULT NULL,    
		[Address] [nvarchar](250) DEFAULT NULL,
		[Representative] [nvarchar](50) DEFAULT NULL,
		[Title] [nvarchar](50) DEFAULT NULL,
		[ImageKey] [nvarchar](250) DEFAULT NULL,
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,	
		[Deleted] [INT] DEFAULT 0
	CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED
	(
		[CustomerId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]  
END
GO	

-- Sample data
INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'The Bank of Tokyo and Mitsuibishi', 'Manchester United', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'REE Corporation Group', 'Manchester United', '9876543210', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'FPT Information System', 'Real Madrid', '1234567890', 'SYSTEM', 'SYSTEM')

GO

--
-- Table [dbo].[Brand]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Brand'))
BEGIN
	DROP TABLE [dbo].[Brand]
END
GO

BEGIN
	CREATE TABLE [dbo].[Brand](
		[BrandId] [int] IDENTITY(1,1) NOT NULL,
		[BrandKey] [nvarchar](50) NOT NULL,
		[BrandName] [nvarchar](50) NOT NULL,
		[Description] [nvarchar](250) DEFAULT NULL,
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_BrandId] PRIMARY KEY CLUSTERED
	(
		[BrandId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Thinkpad T450','Lenovo Thinkpad T450','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Apple','Apple','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'HIPHOP 005','HIPHOP 005','SYSTEM','SYSTEM');

--
-- Table [dbo].[Product]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Product'))
BEGIN
	DROP TABLE [dbo].[Product]
END
GO

BEGIN
	CREATE TABLE [dbo].[Product](
		[ProductId] [int] IDENTITY(1,1) NOT NULL,
		[ProductKey] [nvarchar](50) NOT NULL,
		[ProductCode] [nvarchar](20) DEFAULT NULL,
		[ProductName] [nvarchar](50) DEFAULT NULL,
		[ProductImage] [nvarchar](50) DEFAULT NULL,	
		[Description] [nvarchar](250) DEFAULT NULL,
		[BrandId] [int] NOT NULL DEFAULT 0,
		[Price] [decimal](12,4) DEFAULT 0,
		[SizeList] [nvarchar](10) DEFAULT NULL,
		[ColorCode] [nvarchar](10) DEFAULT NULL,
		[Colour] [nvarchar](10) DEFAULT NULL, -- should be ColorCode
		[Status] [nvarchar](10) DEFAULT NULL,
		[LatestReviewInfo] [nvarchar](250) DEFAULT NULL,
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_ProductId] PRIMARY KEY CLUSTERED
	(
		[ProductId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

-- update ProductImage
UPDATE dbo.Product SET ProductImage = 'product01.jpg' WHERE ProductId = 1;
UPDATE dbo.Product SET ProductImage = 'product02.jpg' WHERE ProductId = 2;
UPDATE dbo.Product SET ProductImage = 'product03.jpg' WHERE ProductId = 3;
UPDATE dbo.Product SET ProductImage = 'product04.jpg' WHERE ProductId = 4;
UPDATE dbo.Product SET ProductImage = 'product05.jpg' WHERE ProductId = 5;
UPDATE dbo.Product SET ProductImage = 'product06.jpg' WHERE ProductId = 6;
UPDATE dbo.Product SET ProductImage = 'product07.jpg' WHERE ProductId = 7;
UPDATE dbo.Product SET ProductImage = 'product08.jpg' WHERE ProductId = 8;
UPDATE dbo.Product SET ProductImage = 'product09.jpg' WHERE ProductId = 9;

--
-- Table structure for table `Review`
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Review'))
BEGIN
	DROP TABLE [dbo].[Review]
END
GO

BEGIN
	CREATE TABLE [dbo].[Review](
		[ReviewId] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](50) DEFAULT NULL,
		[Rating] [int] DEFAULT 0,
		[Comment] [nvarchar](250) DEFAULT NULL,
		[ProductId] [int] DEFAULT 0,
		[Email] [nvarchar](50) DEFAULT NULL,
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_ReviewId] PRIMARY KEY CLUSTERED
	(
		[ReviewId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',1,'Not bad','2013-08-25 17:00:00',1,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',5,'Normal','2013-08-25 17:00:00',2,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',6,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',3,'Good','2013-08-22 17:00:00',3,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',3,'Bad','2013-08-22 17:00:00',5,'test@hvn.com','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',3,'Comment','2016-07-10 16:43:40',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',3,'Comment','2016-07-10 16:43:41',7,'hvn@hvn.net','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Review](Name, Rating,Comment,Created,ProductId,Email,Author,Editor) VALUES ('TEST',2,'2222','2016-07-10 16:59:04',15,'hvn@hvn.net','SYSTEM','SYSTEM');


--
-- Table structure for table [dbo].[User]
--
IF (EXISTS (SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'User'))
BEGIN
	DROP TABLE [dbo].[User]
END
GO

BEGIN
	CREATE TABLE [dbo].[User](
		[UserId] [int] IDENTITY(1,1) NOT NULL,
		[UserKey] [nvarchar](50) NOT NULL,	
		[UserType] [nvarchar](20) DEFAULT NULL,
		[UserName] [nvarchar](50) DEFAULT NULL,
		[Hash] [nvarchar](50) DEFAULT NULL,	
		[DisplayName] [nvarchar](50) DEFAULT NULL,
		[ImageKey] [nvarchar](250) DEFAULT NULL,
		[Email] [nvarchar](50) DEFAULT NULL,
		[Mobile] [nvarchar](50) DEFAULT NULL,	
		[Title] [nvarchar](50) DEFAULT NULL,
		[Description] [nvarchar](250) DEFAULT NULL,
		[DateOfBirth] [datetime] DEFAULT NULL,	
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [int] DEFAULT 0
	CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
	(
		[UserId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'admin',NEWID(),'Admin','admin@eshop.com','2000-01-01','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'manager',NEWID(),'Manager','manager@eshop.com','1985-01-02','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'user01', NEWID(),'User 01','user01@eshop.com','1984-12-12','SYSTEM','SYSTEM');