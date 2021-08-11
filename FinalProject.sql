--drop database FinalProject
--create database FinalProject

USE FinalProject
GO
/****** Object:  Table [dbo].[Account]    Script Date: 9/20/2020 8:30:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[userName] [nvarchar](100) NOT NULL,
	[address] [nvarchar](100) NOT NULL,
	[role] [int] NOT NULL,
	[phoneNumber] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 
/****** Object:  Table [dbo].[Product]    Script Date: 9/22/2020 7:30:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productID] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 9/22/2020 9:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[userid] INT FOREIGN KEY REFERENCES [Account]([userID]),
	[productid] INT FOREIGN KEY REFERENCES [Product]([productID]),
	[quantity][int]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 9/22/2020 9:30:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [int]  NOT NULL,
	[date] [nvarchar](100) NOT NULL,
	[userid] INT FOREIGN KEY REFERENCES [Account]([userID]) NOT NULL,
	[productid] INT FOREIGN KEY REFERENCES [Product]([productID])
) ON [PRIMARY]
GO

SET IDENTITY_INSERT [dbo].[Account] ON
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[Product] ON
SET IDENTITY_INSERT [dbo].[Product] OFF
/*
insert into Account values ('admin','123','hoangno1','PhuTho1','1','0977791094')	
 
*/
select * from Account where role = 2
select * from Account where role = 1
select * from Account WHERE role = 0

delete from Account
where userID = 3

select * from Product 
where productID = 1


insert into Product values ('Wine 1','500','Delicious','image1.png')
insert into Product values ('Wine 2','600','Delicious','image2.png')
insert into Product values ('Wine 3','700','Delicious','image3.png')
insert into Product values ('Wine 4','800','Delicious','image4.png')
insert into Product values ('Wine 5','900','Delicious','image5.png')
insert into Product values ('Wine 6','100','Delicious','image6.png')
insert into Product values ('Wine 7','200','Delicious','image7.png')
insert into Product values ('Wine 8','300','Delicious','image8.png')
insert into Product values ('Wine 9','400','Delicious','image9.png')

select * from Product
select * from Cart

select * from Account
select * from Cart where userid = 16

delete from Cart
where userid = 16

	
SELECT count(DISTINCT(BillID)) FROM Bill
insert into Bill values ('1',GETDATE(),'1','1')
insert into Bill values (GETDATE(),'16','1')


