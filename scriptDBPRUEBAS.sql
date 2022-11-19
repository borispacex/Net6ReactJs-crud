USE [master]
GO
/****** Object:  Database [DBPRUEBAS]    Script Date: 19/11/2022 11:11:11 ******/
CREATE DATABASE [DBPRUEBAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBPRUEBAS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV\MSSQL\DATA\DBPRUEBAS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBPRUEBAS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERDEV\MSSQL\DATA\DBPRUEBAS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBPRUEBAS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBPRUEBAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBPRUEBAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBPRUEBAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBPRUEBAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBPRUEBAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBPRUEBAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET RECOVERY FULL 
GO
ALTER DATABASE [DBPRUEBAS] SET  MULTI_USER 
GO
ALTER DATABASE [DBPRUEBAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBPRUEBAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBPRUEBAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBPRUEBAS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBPRUEBAS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBPRUEBAS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBPRUEBAS', N'ON'
GO
ALTER DATABASE [DBPRUEBAS] SET QUERY_STORE = OFF
GO
USE [DBPRUEBAS]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 19/11/2022 11:11:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[idContacto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contacto] ON 

INSERT [dbo].[Contacto] ([idContacto], [nombre], [correo], [telefono]) VALUES (1, N'codigo', N'codigo@test.com', N'123123')
INSERT [dbo].[Contacto] ([idContacto], [nombre], [correo], [telefono]) VALUES (2, N'barra12', N'bara@test.com', N'000123')
SET IDENTITY_INSERT [dbo].[Contacto] OFF
GO
USE [master]
GO
ALTER DATABASE [DBPRUEBAS] SET  READ_WRITE 
GO
