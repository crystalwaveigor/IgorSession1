USE [master]
GO
/****** Object:  Database [Abonenti]    Script Date: 20.12.2022 12:01:06 ******/
CREATE DATABASE [Abonenti]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Abonenti', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonenti.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Abonenti_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Abonenti_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Abonenti] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Abonenti].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Abonenti] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Abonenti] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Abonenti] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Abonenti] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Abonenti] SET ARITHABORT OFF 
GO
ALTER DATABASE [Abonenti] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Abonenti] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Abonenti] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Abonenti] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Abonenti] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Abonenti] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Abonenti] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Abonenti] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Abonenti] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Abonenti] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Abonenti] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Abonenti] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Abonenti] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Abonenti] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Abonenti] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Abonenti] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Abonenti] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Abonenti] SET RECOVERY FULL 
GO
ALTER DATABASE [Abonenti] SET  MULTI_USER 
GO
ALTER DATABASE [Abonenti] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Abonenti] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Abonenti] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Abonenti] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Abonenti] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Abonenti', N'ON'
GO
ALTER DATABASE [Abonenti] SET QUERY_STORE = OFF
GO
USE [Abonenti]
GO
/****** Object:  Table [dbo].[Абоненты]    Script Date: 20.12.2022 12:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абоненты](
	[id_Абонента] [int] NOT NULL,
	[ФИО] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Абонента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договор]    Script Date: 20.12.2022 12:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договор](
	[Номер_договора] [int] NOT NULL,
	[Дата_установки] [date] NOT NULL,
	[Телефон_абонента] [numeric](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_договора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Разговор]    Script Date: 20.12.2022 12:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Разговор](
	[Номер_разговора] [int] NOT NULL,
	[Дата_разговора] [date] NOT NULL,
	[Продолжительность] [numeric](18, 0) NOT NULL,
	[Код_города] [numeric](18, 0) NOT NULL,
	[Название_города] [nvarchar](50) NOT NULL,
	[Тариф] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_разговора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тариф]    Script Date: 20.12.2022 12:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тариф](
	[Номер_тарифа] [int] NOT NULL,
	[Стоимость] [numeric](30, 0) NOT NULL,
	[Признак_оплаты] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер_тарифа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абоненты] ([id_Абонента], [ФИО], [Адрес]) VALUES (1, N'Титова Александра Ивановна', N'г.Омск, ул. Ленина 5,24')
INSERT [dbo].[Абоненты] ([id_Абонента], [ФИО], [Адрес]) VALUES (2, N'Орлов Сергей Борисович', N'г. Омск, ул. Мира, 54,4')
INSERT [dbo].[Абоненты] ([id_Абонента], [ФИО], [Адрес]) VALUES (3, N'Вавилов Сергей Борисович', N'г. Омск, ул. Маркса, 34,23')
GO
INSERT [dbo].[Договор] ([Номер_договора], [Дата_установки], [Телефон_абонента]) VALUES (2378, CAST(N'1996-01-01' AS Date), CAST(3812326789 AS Numeric(18, 0)))
INSERT [dbo].[Договор] ([Номер_договора], [Дата_установки], [Телефон_абонента]) VALUES (3465, CAST(N'2012-10-09' AS Date), CAST(3812333490 AS Numeric(18, 0)))
INSERT [dbo].[Договор] ([Номер_договора], [Дата_установки], [Телефон_абонента]) VALUES (3466, CAST(N'2012-10-09' AS Date), CAST(3812951211 AS Numeric(18, 0)))
INSERT [dbo].[Договор] ([Номер_договора], [Дата_установки], [Телефон_абонента]) VALUES (4523, CAST(N'2004-08-04' AS Date), CAST(3812531178 AS Numeric(18, 0)))
INSERT [dbo].[Договор] ([Номер_договора], [Дата_установки], [Телефон_абонента]) VALUES (99345, CAST(N'2013-01-01' AS Date), CAST(3812953412 AS Numeric(18, 0)))
GO
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (1, CAST(N'2021-03-02' AS Date), CAST(12 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Омск', N'10')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (2, CAST(N'2021-03-02' AS Date), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'Новосибирск', N'10')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (3, CAST(N'2021-03-08' AS Date), CAST(15 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Воронеж', N'20')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (4, CAST(N'2021-03-08' AS Date), CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Воронеж', N'20')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (5, CAST(N'2021-03-15' AS Date), CAST(10 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), N'СПб', N'30')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (6, CAST(N'2021-03-02' AS Date), CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Омск', N'10')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (7, CAST(N'2021-03-15' AS Date), CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'Омск', N'10')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (8, CAST(N'2021-03-15' AS Date), CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'Москва', N'30')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (9, CAST(N'2021-03-23' AS Date), CAST(6 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Воронеж', N'20')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (10, CAST(N'2021-04-01' AS Date), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Воронеж', N'20')
INSERT [dbo].[Разговор] ([Номер_разговора], [Дата_разговора], [Продолжительность], [Код_города], [Название_города], [Тариф]) VALUES (11, CAST(N'2021-04-01' AS Date), CAST(3 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'Воронеж', N'20')
GO
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (1, CAST(10 AS Numeric(30, 0)), N'не оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (2, CAST(10 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (3, CAST(20 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (4, CAST(20 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (5, CAST(30 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (6, CAST(10 AS Numeric(30, 0)), N'не оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (7, CAST(10 AS Numeric(30, 0)), N'не оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (8, CAST(30 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (9, CAST(20 AS Numeric(30, 0)), N'оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (10, CAST(20 AS Numeric(30, 0)), N'не оплачено')
INSERT [dbo].[Тариф] ([Номер_тарифа], [Стоимость], [Признак_оплаты]) VALUES (11, CAST(20 AS Numeric(30, 0)), N'оплачено')
GO
/****** Object:  StoredProcedure [dbo].[Dobavlenie]    Script Date: 20.12.2022 12:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Dobavlenie]
    @id int,
    @ФИО nvarchar(50),
    @ГОРОД int
AS
    INSERT INTO Абоненты (id_Абонента, Адрес, ФИО)
    VALUES (@id,@ФИО, @ГОРОД)
  
    SELECT SCOPE_IDENTITY()

GO
USE [master]
GO
ALTER DATABASE [Abonenti] SET  READ_WRITE 
GO
