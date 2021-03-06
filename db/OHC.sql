USE [master]
GO
/****** Object:  Database [eSociety]    Script Date: 04/12/2018 02:19:59 ******/
CREATE DATABASE [eSociety] ON  PRIMARY 
( NAME = N'eSociety', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\eSociety.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eSociety_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\eSociety_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eSociety] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eSociety].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eSociety] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [eSociety] SET ANSI_NULLS OFF
GO
ALTER DATABASE [eSociety] SET ANSI_PADDING OFF
GO
ALTER DATABASE [eSociety] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [eSociety] SET ARITHABORT OFF
GO
ALTER DATABASE [eSociety] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [eSociety] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [eSociety] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [eSociety] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [eSociety] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [eSociety] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [eSociety] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [eSociety] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [eSociety] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [eSociety] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [eSociety] SET  DISABLE_BROKER
GO
ALTER DATABASE [eSociety] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [eSociety] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [eSociety] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [eSociety] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [eSociety] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [eSociety] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [eSociety] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [eSociety] SET  READ_WRITE
GO
ALTER DATABASE [eSociety] SET RECOVERY SIMPLE
GO
ALTER DATABASE [eSociety] SET  MULTI_USER
GO
ALTER DATABASE [eSociety] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [eSociety] SET DB_CHAINING OFF
GO
USE [eSociety]
GO
/****** Object:  Table [dbo].[usertb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usertb](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NULL,
	[wing] [nchar](10) NOT NULL,
	[bldg_no] [nchar](10) NOT NULL,
	[flat_no] [nchar](10) NOT NULL,
	[type] [nchar](10) NOT NULL,
	[age] [int] NOT NULL,
	[mobile_no] [nvarchar](50) NOT NULL,
	[email_id] [nvarchar](50) NOT NULL,
	[user_name] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[bike] [nchar](10) NULL,
	[car] [nchar](10) NULL,
	[lives_here] [nchar](10) NOT NULL,
	[year_of_allotment] [int] NOT NULL,
	[maintainence] [nchar](10) NOT NULL,
	[images] [nvarchar](100) NULL,
	[security_questn] [nvarchar](50) NULL,
	[answer] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymenttb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymenttb](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[fromdate] [date] NULL,
	[todate] [date] NULL,
	[userid] [int] NULL,
	[amount] [int] NULL,
	[outstanding] [int] NULL,
 CONSTRAINT [PK_payment] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[noticeboardtb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[noticeboardtb](
	[notice_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[notice_date] [date] NOT NULL,
 CONSTRAINT [PK_noticeboardtb] PRIMARY KEY CLUSTERED 
(
	[notice_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maintainencetb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maintainencetb](
	[maintainence_id] [int] IDENTITY(1,1) NOT NULL,
	[basic_maintainence] [nchar](10) NOT NULL,
	[car] [nchar](10) NULL,
	[bike] [nchar](10) NULL,
 CONSTRAINT [PK_maintainencetb] PRIMARY KEY CLUSTERED 
(
	[maintainence_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gallerytb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gallerytb](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [nvarchar](20) NULL,
	[images] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_gallerytb] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[expensetb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[expensetb](
	[expense_id] [int] IDENTITY(1,1) NOT NULL,
	[expense_name] [nvarchar](50) NOT NULL,
	[amount] [nchar](10) NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [PK_expensetb] PRIMARY KEY CLUSTERED 
(
	[expense_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complaintboxtb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complaintboxtb](
	[complaint_id] [int] IDENTITY(1,1) NOT NULL,
	[flat_no] [int] NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[complaint_date] [date] NOT NULL,
 CONSTRAINT [PK_complaintboxtb] PRIMARY KEY CLUSTERED 
(
	[complaint_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admintb]    Script Date: 04/12/2018 02:20:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admintb](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_username] [nvarchar](50) NOT NULL,
	[admin_password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[contact] [nchar](10) NOT NULL,
 CONSTRAINT [PK_admintb] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
