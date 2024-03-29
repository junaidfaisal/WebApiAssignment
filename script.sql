USE [master]
GO
/****** Object:  Database [DotNetSimpleAssignementDB]    Script Date: 03/09/2024 12:48:16 ******/
CREATE DATABASE [DotNetSimpleAssignementDB] ON  PRIMARY 
( NAME = N'DotNetSimpleAssignementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DotNetSimpleAssignementDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DotNetSimpleAssignementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DotNetSimpleAssignementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DotNetSimpleAssignementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ARITHABORT OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET  READ_WRITE
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET RECOVERY FULL
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET  MULTI_USER
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [DotNetSimpleAssignementDB] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'DotNetSimpleAssignementDB', N'ON'
GO
USE [DotNetSimpleAssignementDB]
GO
/****** Object:  Table [dbo].[TRUNIVERSITY]    Script Date: 03/09/2024 12:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRUNIVERSITY](
	[PK_] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[domains] [nvarchar](255) NOT NULL,
	[web_pages] [nvarchar](255) NOT NULL,
	[country] [nvarchar](255) NOT NULL,
	[alpha_two_code] [nvarchar](2) NOT NULL,
	[state_province] [nvarchar](255) NULL,
 CONSTRAINT [PK_TRUNIVERSITY] PRIMARY KEY CLUSTERED 
(
	[PK_] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_TRUNIVERSITY] ON [dbo].[TRUNIVERSITY] 
(
	[PK_] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[TRUNIVERSITY] ([PK_], [name], [domains], [web_pages], [country], [alpha_two_code], [state_province]) VALUES (1, N'Information Technology University, Lahore', N'itu.edu.pk', N'https://itu.edu.pk/', N'Pakistan', N'PK', N'Punjab')
INSERT [dbo].[TRUNIVERSITY] ([PK_], [name], [domains], [web_pages], [country], [alpha_two_code], [state_province]) VALUES (2, N'Abasyn University Peshawar', N'abasyn.edu.pk', N'http://www.abasyn.edu.pk', N'Pakistan', N'PK', N'Khyber Pakhtunkhwa')
INSERT [dbo].[TRUNIVERSITY] ([PK_], [name], [domains], [web_pages], [country], [alpha_two_code], [state_province]) VALUES (3, N'Allama Iqbal Open University', N'aiou.edu.pk', N'http://www.aiou.edu.pk', N'Pakistan', N'PK', NULL)

/****** Object:  Table [dbo].[STCOUNTRY]    Script Date: 03/09/2024 12:48:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STCOUNTRY](
	[PK_] [nvarchar](2) NOT NULL,
	[DESCR] [nvarchar](255) NOT NULL,
	[STATE] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_STCOUNTRY] PRIMARY KEY CLUSTERED 
(
	[PK_] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
