USE [master]
GO

/****** Object:  Database [CRUD] ******/
CREATE DATABASE [CRUD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CRUD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CRUD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CRUD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CRUD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )

GO
ALTER DATABASE [CRUD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CRUD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CRUD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CRUD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CRUD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CRUD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CRUD] SET ARITHABORT OFF 
GO
ALTER DATABASE [CRUD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CRUD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CRUD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CRUD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CRUD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CRUD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CRUD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CRUD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CRUD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CRUD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CRUD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CRUD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CRUD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CRUD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CRUD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CRUD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CRUD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CRUD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CRUD] SET  MULTI_USER 
GO
ALTER DATABASE [CRUD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CRUD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CRUD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CRUD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CRUD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CRUD] SET QUERY_STORE = OFF
GO

USE [CRUD]
GO

/****** Object:  Table [dbo].[Hotel]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[HotelID] [int] NOT NULL,
	[Hotel_Description] [varchar](100) NOT NULL,
 CONSTRAINT [PK_HotelID] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Hotel] ([HotelID], [Hotel_Description]) VALUES (1, N'H.Prizreni')
INSERT [dbo].[Hotel] ([HotelID], [Hotel_Description]) VALUES (2, N'H.Theranda')
INSERT [dbo].[Hotel] ([HotelID], [Hotel_Description]) VALUES (3, N'H.Malsia')
INSERT [dbo].[Hotel] ([HotelID], [Hotel_Description]) VALUES (4, N'H.Estrada')

USE [master]
GO

ALTER DATABASE [CRUD] SET  READ_WRITE 
GO
