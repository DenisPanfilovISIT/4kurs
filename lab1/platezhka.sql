USE [master]
GO
/****** Object:  Database [Platezhka]    Script Date: 13.12.2019 23:33:44 ******/
CREATE DATABASE [Platezhka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Platezhka', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Platezhka.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Platezhka_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Platezhka_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Platezhka] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Platezhka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Platezhka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Platezhka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Platezhka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Platezhka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Platezhka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Platezhka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Platezhka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Platezhka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Platezhka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Platezhka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Platezhka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Platezhka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Platezhka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Platezhka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Platezhka] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Platezhka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Platezhka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Platezhka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Platezhka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Platezhka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Platezhka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Platezhka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Platezhka] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Platezhka] SET  MULTI_USER 
GO
ALTER DATABASE [Platezhka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Platezhka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Platezhka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Platezhka] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Platezhka] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Platezhka]
GO
/****** Object:  Table [dbo].[Avtoplatezh]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Avtoplatezh](
	[ID_Avtoplatezh] [int] NOT NULL,
	[Otpravitel_ID] [int] NOT NULL,
	[Poluchatel_ID] [int] NOT NULL,
	[Summa] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NULL,
	[Date_Platezha] [date] NOT NULL,
	[Period_ID] [int] NOT NULL,
 CONSTRAINT [PK_Avtoplatezh] PRIMARY KEY CLUSTERED 
(
	[ID_Avtoplatezh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Client]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[ID_Client] [int] NOT NULL,
	[FIO] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Parol] [varchar](50) NOT NULL,
	[Date_Rozhd] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Period]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Period](
	[ID_Period] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
	[Srok] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED 
(
	[ID_Period] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Platezh]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Platezh](
	[ID_Platezh] [int] NOT NULL,
	[Otpravitel_ID] [int] NOT NULL,
	[Poluchatel_ID] [int] NOT NULL,
	[Summa] [varchar](50) NOT NULL,
	[Comment] [varchar](50) NULL,
	[Date_Platezha] [date] NOT NULL,
	[Status_Platezha_ID] [int] NOT NULL,
 CONSTRAINT [PK_Platezh] PRIMARY KEY CLUSTERED 
(
	[ID_Platezh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schet]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schet](
	[ID_Schet] [int] NOT NULL,
	[Balance] [varchar](50) NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Tarif_ID] [int] NULL,
	[Date_Otkr] [date] NOT NULL,
	[Date_Zakr] [date] NOT NULL,
	[Status_ID] [int] NOT NULL,
 CONSTRAINT [PK_Schet] PRIMARY KEY CLUSTERED 
(
	[ID_Schet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[ID_Status] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID_Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status_Platezha]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Platezha](
	[ID_Status_Platezha] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status_Platezha] PRIMARY KEY CLUSTERED 
(
	[ID_Status_Platezha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status_Zayavky]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status_Zayavky](
	[ID_Status_Zayavky] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status_Zayavky] PRIMARY KEY CLUSTERED 
(
	[ID_Status_Zayavky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tarif]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarif](
	[ID_Tarif] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
	[Uslovia] [varchar](50) NOT NULL,
	[Date_Nach] [date] NOT NULL,
	[Date_Okonch] [date] NOT NULL,
	[Procent] [float] NOT NULL,
	[Limit] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tarif] PRIMARY KEY CLUSTERED 
(
	[ID_Tarif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tip_Scheta]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tip_Scheta](
	[ID_Tip_Scheta] [int] NOT NULL,
	[Naimenovanie] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tip_Scheta] PRIMARY KEY CLUSTERED 
(
	[ID_Tip_Scheta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zayavka]    Script Date: 13.12.2019 23:33:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zayavka](
	[ID_Zayavka] [int] IDENTITY(1,1) NOT NULL,
	[Dohod] [varchar](50) NOT NULL,
	[Mesto_raboty] [varchar](50) NOT NULL,
	[Adress_Reg] [varchar](50) NOT NULL,
	[Client_ID] [int] NOT NULL,
	[Status_Zayavky_ID] [int] NOT NULL,
	[Tip_Scheta_ID] [int] NOT NULL,
 CONSTRAINT [PK_Zayavka] PRIMARY KEY CLUSTERED 
(
	[ID_Zayavka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Avtoplatezh]  WITH CHECK ADD  CONSTRAINT [FK_Avtoplatezh_Period] FOREIGN KEY([Period_ID])
REFERENCES [dbo].[Period] ([ID_Period])
GO
ALTER TABLE [dbo].[Avtoplatezh] CHECK CONSTRAINT [FK_Avtoplatezh_Period]
GO
ALTER TABLE [dbo].[Platezh]  WITH CHECK ADD  CONSTRAINT [FK_Platezh_Status_Platezha] FOREIGN KEY([Status_Platezha_ID])
REFERENCES [dbo].[Status_Platezha] ([ID_Status_Platezha])
GO
ALTER TABLE [dbo].[Platezh] CHECK CONSTRAINT [FK_Platezh_Status_Platezha]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Avtoplatezh] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Avtoplatezh] ([ID_Avtoplatezh])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Avtoplatezh]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Avtoplatezh1] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Avtoplatezh] ([ID_Avtoplatezh])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Avtoplatezh1]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([ID_Client])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Client]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Platezh] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Platezh] ([ID_Platezh])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Platezh]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Platezh1] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Platezh] ([ID_Platezh])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Platezh1]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Status] ([ID_Status])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Status]
GO
ALTER TABLE [dbo].[Schet]  WITH CHECK ADD  CONSTRAINT [FK_Schet_Tarif] FOREIGN KEY([Tarif_ID])
REFERENCES [dbo].[Tarif] ([ID_Tarif])
GO
ALTER TABLE [dbo].[Schet] CHECK CONSTRAINT [FK_Schet_Tarif]
GO
ALTER TABLE [dbo].[Zayavka]  WITH CHECK ADD  CONSTRAINT [FK_Zayavka_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([ID_Client])
GO
ALTER TABLE [dbo].[Zayavka] CHECK CONSTRAINT [FK_Zayavka_Client]
GO
ALTER TABLE [dbo].[Zayavka]  WITH CHECK ADD  CONSTRAINT [FK_Zayavka_Status_Zayavky] FOREIGN KEY([Status_Zayavky_ID])
REFERENCES [dbo].[Status_Zayavky] ([ID_Status_Zayavky])
GO
ALTER TABLE [dbo].[Zayavka] CHECK CONSTRAINT [FK_Zayavka_Status_Zayavky]
GO
ALTER TABLE [dbo].[Zayavka]  WITH CHECK ADD  CONSTRAINT [FK_Zayavka_Tip_Scheta] FOREIGN KEY([Tip_Scheta_ID])
REFERENCES [dbo].[Tip_Scheta] ([ID_Tip_Scheta])
GO
ALTER TABLE [dbo].[Zayavka] CHECK CONSTRAINT [FK_Zayavka_Tip_Scheta]
GO
USE [master]
GO
ALTER DATABASE [Platezhka] SET  READ_WRITE 
GO
