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

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'HAG Corporation Group', 'Liverpool', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'SMC Steel Company', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Trung Nguyen Coffee', '125 John Jose Avenue, Sai Gon city', '+86 1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Japan Co. Ltd.', 'Japan', '+45 1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM Corporation', '365 Seatle Finance Town, New York', '+01 5234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Adnotrium', 'Adnotrium', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba VN', 'Alibaba VN', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Fast & Furious Ltd.', 'Fast & Furious', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'BMW', 'BMW', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba Europe', 'Alibaba Europe', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba North America', 'Alibaba North America', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM Quatro', 'IBM Quatro', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Taobao', 'Taobao', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', '25 Avenue Seatle', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba', 'Alibaba', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Lipton Tea', '142 Phung Khac Khoan, District 3, Ho Chi Minh city', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Marubeni Itochu Steel Vietnam Co. Ltd.', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'IBM', 'IBM', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Infosys Technologies', 'Infosys Technologies', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba UK', 'Alibaba UK', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Sub Microsystems', 'PSG', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Cossack', 'Cossack', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Digital China Holdings', 'Digital China Holdings', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dimension Data', 'Dimension Data', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Wipro Limited.', 'Wipro Limited', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Google Asisa', 'Google Asisa', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Northrop Grumman', 'Northrop Grumman', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Hongleong Bank', 'Hongleong Bank', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Thomsons', 'Thomsons', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'CGI Group', 'CGI Group', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dell', 'Dell', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Amdocs', 'Amdocs', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Dimension Data', 'Dimension Data', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Wipro Hong Kong', 'Wipro Hong Kong', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Google Asisa', 'Google Asisa', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Trump Organization', 'Trump Organization', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft', 'Microsoft', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Hololens Asisa', 'Hololens Asisa', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'CSC Group', 'CSC Group', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Microsoft China', 'Microsoft China', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Hongleong Bank', 'Hongleong Bank', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Publicity Shin', 'Publicity Shin', '1234567890', 'SYSTEM', 'SYSTEM')

INSERT INTO [dbo].[Customer] (CustomerKey, CustomerName, Address, Mobile, Author, Editor)
VALUES (NEWID(), 'Alibaba in Turkey', 'Alibaba in Turkey', '1234567890', 'SYSTEM', 'SYSTEM')

GO

--
-- Table structure for table `Truck`
--
IF (EXISTS (
      SELECT * 
			FROM INFORMATION_SCHEMA.TABLES 
			WHERE TABLE_CATALOG='eshop' AND TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'Truck'
    ))
BEGIN
	DROP TABLE [dbo].[Truck]
END

BEGIN
	CREATE TABLE [dbo].[Truck](
		[TruckId] [int] IDENTITY(1,1) NOT NULL,
		[TruckKey] [nvarchar](50) NOT NULL,
		[TruckName] [nvarchar](50) NULL,
		[TruckNumber] [nvarchar](50) NULL,
		[ImageKey] [nvarchar](250) NULL,
		[Description] [nvarchar](250) DEFAULT NULL,	
		[Created] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Updated] [datetime] DEFAULT CURRENT_TIMESTAMP,
		[Author] [nvarchar](50) DEFAULT NULL,
		[Editor] [nvarchar](50) DEFAULT NULL,
		[Deleted] [INT] DEFAULT 0
	CONSTRAINT [PK_Truck] PRIMARY KEY CLUSTERED 
	(
		[TruckId] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]
END
GO

-- Sample data
INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Honda Civic', 'CIVIC-123456789', 'Honda Civic 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - FAST & FURIOUS', 'T-FAST-852741963', 'FAST & FURIOUS 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - EVEREST', 'T-EVEREST-852741963', 'Everest 2018', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Land Cruiser', 'T-LAND-123456789', 'Land Cruiser 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - Mercedez', 'T-MERC-123456789', 'Mercedez 2017', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - BMW', 'T-BMW-852741963', 'BMW 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - MAX', 'T-MAX-852741963', 'Kawasaki 2015', 'SYSTEM', 'SYSTEM');

INSERT INTO [dbo].[Truck] (TruckKey, TruckName, TruckNumber, Description, Author, Editor)
VALUES (NEWID(), 'TRUCK - FORD', 'T-FORD-852741963', 'FORD 2018', 'SYSTEM', 'SYSTEM');


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
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Asus','Asus','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'HP Pro 1005','HP Pro 1005','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'IBM','IBM','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Super Car 2002','Super Car 2002','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Dell_XPS','Dell_XPS','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'HP 1009','HP Enterprise 1009','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand TEST 10','Brand TEST 10','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Asus 520 V.1001','Asus 520 V.10008','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand TEST 12xx','Brand TEST 12xx','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'HP ProBook 2015','HP ProBook 2015','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand TEST 14','Brand TEST 14','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'HP Pro Enter 2011','HP Pro Enter 2011','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand 16','Brand 16','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'DEL version.2017','DEL version.2017','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand TEST 18','Brand TEST 18','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Brand 19 Century','Brand 19 Century','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Coca Cola','Coca Cola','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Pepsi Company','Pepsi Company','SYSTEM','SYSTEM');
INSERT INTO [dbo].[Brand] (BrandKey,BrandName,Description,Author,Editor) VALUES (NEWID(),'Facebook','The Facebook','SYSTEM','SYSTEM');


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

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 1980', 'DESC: Macbook Pro 1980', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo Future 2022', 'DESC: Laptop IBM Lenovo Future 2022', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio Super Cool 2025', 'DESC: Laptop Sony Vaio Super Cool 2025', 1, 1400, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2021', 'IBM Lenovo X 2021', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2022', 'Sony Vaio 2022', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2020', 'DESC: Laptop Sony Vaio 2020', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2020', 'DESC: IBM Lenovo X 2020', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 2015', 'DESC: Laptop Sony Vaio 2015', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 2018', 'DESC: Laptop Sony Vaio 2018', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 1998', 'DESC: Macbook Pro 1998', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 1999', 'DESC: Laptop IBM Lenovo 1999', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2020', 'Sony Vaio 2000', 'DESC: Laptop Sony Vaio 2000', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBMX-2020', 'IBM Lenovo X 2001', 'DESC: IBM Lenovo X 2001', 2, 1000, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2015', 'Sony Vaio 1995', 'DESC: Laptop Sony Vaio 1995', 1, 100, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'SONY-2018', 'Sony Vaio 1995-X2', 'DESC: Laptop Sony Vaio 1995-X2', 1, 100, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'MAC-2015', 'Macbook Pro 2015', 'DESC: Macbook Pro 2015', 2, 1500, 'While', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'IBM-2016', 'IBM Lenovo 2016', 'DESC: Laptop IBM Lenovo 2016', 2, 100, 'Black', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2000', 'TIGER BEER 2000', 'DESC: TIGER BEER 2000', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2001', 'TIGER BEER 2001', 'DESC: TIGER BEER 2001', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2002', 'TIGER BEER 2002', 'DESC: TIGER BEER 2002', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2003', 'TIGER BEER 2003', 'DESC: TIGER BEER 2003', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2004', 'TIGER BEER 2004', 'DESC: TIGER BEER 2004', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2005', 'TIGER BEER 2005', 'DESC: TIGER BEER 2005', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2006', 'TIGER BEER 2006', 'DESC: TIGER BEER 2006', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2007', 'TIGER BEER 2007', 'DESC: TIGER BEER 2007', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2009', 'TIGER BEER 2009', 'DESC: TIGER BEER 2009', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2008', 'TIGER BEER 2008', 'DESC: TIGER BEER 2008', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2010', 'TIGER BEER 2010', 'DESC: TIGER BEER 2010', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2011', 'TIGER BEER 2011', 'DESC: TIGER BEER 2011', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

INSERT INTO [dbo].[Product](ProductKey, ProductCode, ProductName, Description, BrandId, Price, Colour, Status, Author,Editor) 
VALUES (NEWID(), 'TIGER-2012', 'TIGER BEER 2012', 'DESC: TIGER BEER 2012', 2, 10, 'Yellow', 2,'SYSTEM','SYSTEM');

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

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'ADMIN','user01',  NEWID(),'User 02','user01@eshop.com','1985-12-10','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'supervisor',   NEWID(),'Supervisor','supervisor@eshop.com','1990-10-10','SYSTEM','SYSTEM');

INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
VALUES (NEWID(),'USER', 'cashier', NEWID(),'Cashier','cashier@eshop.com','2000-02-02','SYSTEM','SYSTEM');
