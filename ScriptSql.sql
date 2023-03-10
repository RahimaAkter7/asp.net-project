USE [master]
GO
/****** Object:  Database [PSMS]    Script Date: 11/20/2022 9:32:11 AM ******/
CREATE DATABASE [PSMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PSMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PSMS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PSMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PSMS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PSMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PSMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PSMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PSMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PSMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PSMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PSMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [PSMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PSMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PSMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PSMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PSMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PSMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PSMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PSMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PSMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PSMS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PSMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PSMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PSMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PSMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PSMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PSMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PSMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PSMS] SET RECOVERY FULL 
GO
ALTER DATABASE [PSMS] SET  MULTI_USER 
GO
ALTER DATABASE [PSMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PSMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PSMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PSMS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PSMS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PSMS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PSMS', N'ON'
GO
ALTER DATABASE [PSMS] SET QUERY_STORE = OFF
GO
USE [PSMS]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[A_id] [int] IDENTITY(1,1) NOT NULL,
	[AT_id] [int] NOT NULL,
	[Quantity_pc] [nvarchar](50) NULL,
	[size] [nvarchar](50) NULL,
	[Measurement_kg] [nvarchar](50) NULL,
	[A_Price] [money] NOT NULL,
	[IsAvaible] [bit] NULL,
	[picture] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[A_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accessoriestype]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessoriestype](
	[AT_id] [int] IDENTITY(1,1) NOT NULL,
	[AccessoriesName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AT_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[c_ID] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [nvarchar](100) NOT NULL,
	[Contact] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DeliveryLocation] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderInfo]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[P_ID] [int] NOT NULL,
	[typeId] [int] NOT NULL,
	[ProductPrice] [nvarchar](100) NOT NULL,
	[DeliveryLocation] [nvarchar](20) NOT NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetail]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetail](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[P_ID] [int] NOT NULL,
	[c_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersInfor]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersInfor](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[PlantName] [nvarchar](50) NOT NULL,
	[PlantType] [nvarchar](50) NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[DeliveryLocation] [nvarchar](20) NOT NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plants]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plants](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[PlantName] [nvarchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[S_ID] [int] NOT NULL,
	[Quantity_pc] [nvarchar](50) NOT NULL,
	[P_Price] [money] NOT NULL,
	[IsAvaible] [bit] NULL,
	[picture] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantTypes]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlantType] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeasonPlant]    Script Date: 11/20/2022 9:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeasonPlant](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[PlantBySeason] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accessoriestype] ON 

INSERT [dbo].[Accessoriestype] ([AT_id], [AccessoriesName]) VALUES (3, N'fertilizers')
SET IDENTITY_INSERT [dbo].[Accessoriestype] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 

INSERT [dbo].[customer] ([c_ID], [customerName], [Contact], [Email], [DeliveryLocation]) VALUES (2, N'Asha', N'022222', N'as@gmail.com', N'dhaka')
INSERT [dbo].[customer] ([c_ID], [customerName], [Contact], [Email], [DeliveryLocation]) VALUES (3, N'rahima', N'0133221', N'@gmail.com', N'savar')
INSERT [dbo].[customer] ([c_ID], [customerName], [Contact], [Email], [DeliveryLocation]) VALUES (4, N'as', N'025555', N'w@gmail.com', N'mirpur')
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[ordersInfor] ON 

INSERT [dbo].[ordersInfor] ([orderid], [PlantName], [PlantType], [Quantity], [Price], [DeliveryLocation], [OrderDate]) VALUES (1, N'lotus', N'flower', N'2', 200.0000, N'dhaka', CAST(N'2010-10-10' AS Date))
SET IDENTITY_INSERT [dbo].[ordersInfor] OFF
GO
SET IDENTITY_INSERT [dbo].[Plants] ON 

INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (3, N'CACTUS', 5, 2, N'2', 500.0000, 1, N'8984af28-86db-4dab-a28d-ad8785e68046_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (9, N'Jasmine ', 1, 1, N'2', 200.0000, 0, N'88fc3971-f757-4b46-9800-ef6c60a6f359_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (10, N'MANGO', 4, 1, N'3', 200.0000, 1, N'70f4026b-e43d-48ce-94a4-585b7281020e_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (12, N'adnium', 5, 2, N'2', 200.0000, 1, N'6949e18a-73a6-403e-a0e6-0b9267df2939_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (13, N'chaina rose', 1, 1, N'1', 100.0000, 1, N'deefeeba-428a-4f71-b51b-6925c5eb77e8_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (14, N'lily', 1, 1, N'2', 200.0000, 1, N'e17bfe53-de03-408d-aa10-e89b234dfb9c_.png')
INSERT [dbo].[Plants] ([P_ID], [PlantName], [ID], [S_ID], [Quantity_pc], [P_Price], [IsAvaible], [picture]) VALUES (15, N'sunflower', 1, 5, N'5', 500.0000, 1, N'af5dcd0e-1619-45cd-a649-502d02585d72_.png')
SET IDENTITY_INSERT [dbo].[Plants] OFF
GO
SET IDENTITY_INSERT [dbo].[PlantTypes] ON 

INSERT [dbo].[PlantTypes] ([ID], [PlantType]) VALUES (1, N'flower plant')
INSERT [dbo].[PlantTypes] ([ID], [PlantType]) VALUES (4, N'fruits plant')
INSERT [dbo].[PlantTypes] ([ID], [PlantType]) VALUES (5, N'harbal plant')
SET IDENTITY_INSERT [dbo].[PlantTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[SeasonPlant] ON 

INSERT [dbo].[SeasonPlant] ([S_ID], [PlantBySeason]) VALUES (1, N'Summer plant')
INSERT [dbo].[SeasonPlant] ([S_ID], [PlantBySeason]) VALUES (2, N'winter plant')
INSERT [dbo].[SeasonPlant] ([S_ID], [PlantBySeason]) VALUES (5, N'autmnplant')
SET IDENTITY_INSERT [dbo].[SeasonPlant] OFF
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD FOREIGN KEY([AT_id])
REFERENCES [dbo].[Accessoriestype] ([AT_id])
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD FOREIGN KEY([AT_id])
REFERENCES [dbo].[Accessoriestype] ([AT_id])
GO
ALTER TABLE [dbo].[Accessories]  WITH CHECK ADD FOREIGN KEY([AT_id])
REFERENCES [dbo].[Accessoriestype] ([AT_id])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([typeId])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([typeId])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[OrderInfo]  WITH CHECK ADD FOREIGN KEY([typeId])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([c_ID])
REFERENCES [dbo].[customer] ([c_ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([c_ID])
REFERENCES [dbo].[customer] ([c_ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([c_ID])
REFERENCES [dbo].[customer] ([c_ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[OrdersDetail]  WITH CHECK ADD FOREIGN KEY([P_ID])
REFERENCES [dbo].[Plants] ([P_ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[PlantTypes] ([ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([S_ID])
REFERENCES [dbo].[SeasonPlant] ([S_ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([S_ID])
REFERENCES [dbo].[SeasonPlant] ([S_ID])
GO
ALTER TABLE [dbo].[Plants]  WITH CHECK ADD FOREIGN KEY([S_ID])
REFERENCES [dbo].[SeasonPlant] ([S_ID])
GO
USE [master]
GO
ALTER DATABASE [PSMS] SET  READ_WRITE 
GO
