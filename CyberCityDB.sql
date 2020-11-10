USE [master]
GO
/****** Object:  Database [CyberCityDB]    Script Date: 11/06/2020 12:05:0000 AM ******/
CREATE DATABASE [CyberCityDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CyberCityDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CyberCityDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CyberCityDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CyberCityDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO 
ALTER DATABASE [CyberCityDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CyberCityDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CyberCityDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CyberCityDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CyberCityDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CyberCityDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CyberCityDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CyberCityDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CyberCityDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CyberCityDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CyberCityDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CyberCityDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CyberCityDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CyberCityDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CyberCityDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CyberCityDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CyberCityDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CyberCityDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CyberCityDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CyberCityDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CyberCityDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CyberCityDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CyberCityDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CyberCityDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CyberCityDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CyberCityDB] SET  MULTI_USER 
GO
ALTER DATABASE [CyberCityDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CyberCityDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CyberCityDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CyberCityDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CyberCityDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CyberCityDB', N'ON'
GO
ALTER DATABASE [CyberCityDB] SET QUERY_STORE = OFF
GO
USE [CyberCityDB]
GO
/****** Object:  Table [dbo].[AccessCode]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessCode](
	[Code] [varchar](50) NOT NULL,
	[UserType] [varchar](50) NULL,
	[CoordinatorID] [int] NULL,
 CONSTRAINT [PK_AccessCode] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassCode]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassCode](
	[ClassCode] [varchar](50) NULL,
	[InstructorCode] [varchar](50) NULL,
	[OrganizationID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventCode]    Script Date: 10/25/2020 12:51:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCode](
	[EventCode] [varchar](50) NOT NULL,
	[EventID] [int] NULL,
	[VolunteerID] [int] NULL
	) ON [Primary]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Table [dbo].[Coordinator]    Script Date: 11/06/2020 12:05:0000 AM ******/
CREATE TABLE [dbo].[Coordinator](
	[CoordinatorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [bigint] NULL,
 CONSTRAINT [PK_Coordinator] PRIMARY KEY CLUSTERED 
(
	[CoordinatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoordinatorAuth]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoordinatorAuth](
	[CoordinatorID] [int] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Name] [varchar](50) NULL,
	[ContactName] [varchar](50) NULL,
	[EventCode] [varchar](50) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventActivities]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventActivities](
	[EventID] [int] NULL,
	[ActivityID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityName] [varchar](50) NULL,
	[Time] [time](7) NULL,
	[Room] [int] NULL,
	[ActivityGuideID] [int] NULL
 CONSTRAINT [PK_EventActivities] PRIMARY KEY CLUSTERED 
(
	[ActivityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventVolunteers]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventVolunteers](
	[VolunteerID] [int] IDENTITY(1,1) NOT NULL,
	[VolunteerCode] [varchar](50) NULL,
	[EventCode] [varchar](50) NULL,
 CONSTRAINT [PK_EventVolunteers] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorCode] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[OrganizationID] [int] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[EventCode] [varchar](50) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[EventCode] [varchar](50) NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentCode] [varchar](50),
	[Name] [varchar](50) NULL,
	[Age] [varchar](50) NULL,
	[MealTicket] [varchar](50) NULL,
	[InstructorCode] [varchar](50) NULL,
	[Notes] [varchar](50) NULL,
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Tshirt]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tshirt](
	[TshirtID] [int],
	[Size] [varchar](50) NULL,
	[StudentCode] [varchar](50) NULL,
 CONSTRAINT [PK_Tshirt] PRIMARY KEY CLUSTERED 
(
	[TshirtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[File]    Script Date: 10/27/2020 9:09:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File](
	[FileID] [int] NOT NULL,
	[FileName] [varchar](200) NULL,
	[FileSize] [int] NOT NULL,
	[ContentType] [varchar](200) NOT NULL,
	[FileExtension] [varchar](10) NOT NULL,
	[FileContent] [varbinary](MAX) NOT NULL,
	[StudentCode] [varchar](50) NULL,
 CONSTRAINT [PK_File] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/****** Object:  Table [dbo].[Volunteer]    Script Date: 11/06/2020 12:05:0000 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolunteerCode] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[Email] [varchar](50) NULL,
	[MealTicket] [varchar](50) NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[VolunteerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccessCode]  WITH CHECK ADD  CONSTRAINT [FK_AccessCode_Coordinator] FOREIGN KEY([CoordinatorID])
REFERENCES [dbo].[Coordinator] ([CoordinatorID])
GO
ALTER TABLE [dbo].[AccessCode] CHECK CONSTRAINT [FK_AccessCode_Coordinator]
GO
ALTER TABLE [dbo].[ClassCode]  WITH CHECK ADD  CONSTRAINT [FK_ClassCode_AccessCode] FOREIGN KEY([ClassCode])
REFERENCES [dbo].[AccessCode] ([Code])
GO
ALTER TABLE [dbo].[ClassCode] CHECK CONSTRAINT [FK_ClassCode_AccessCode]
GO
ALTER TABLE [dbo].[ClassCode]  WITH CHECK ADD  CONSTRAINT [FK_ClassCode_Instructor] FOREIGN KEY([InstructorCode])
REFERENCES [dbo].[Instructor] ([InstructorCode])
GO
ALTER TABLE [dbo].[ClassCode] CHECK CONSTRAINT [FK_ClassCode_Instructor]
GO
ALTER TABLE [dbo].[CoordinatorAuth]  WITH CHECK ADD  CONSTRAINT [FK_CoordinatorAuth_Coordinator] FOREIGN KEY([CoordinatorID])
REFERENCES [dbo].[Coordinator] ([CoordinatorID])
GO
ALTER TABLE [dbo].[CoordinatorAuth] CHECK CONSTRAINT [FK_CoordinatorAuth_Coordinator]
GO
ALTER TABLE [dbo].[EventActivities]  WITH CHECK ADD  CONSTRAINT [FK_EventActivities_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventActivities] CHECK CONSTRAINT [FK_EventActivities_Event]
GO
ALTER TABLE [dbo].[EventVolunteers]  WITH CHECK ADD  CONSTRAINT [FK_EventVolunteers_Volunteer] FOREIGN KEY([VolunteerCode])
REFERENCES [dbo].[Volunteer] ([VolunteerCode])
GO
ALTER TABLE [dbo].[EventVolunteers] CHECK CONSTRAINT [FK_EventVolunteers_Volunteer]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Instructor] FOREIGN KEY([InstructorCode])
REFERENCES [dbo].[Instructor] ([InstructorCode])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Instructor]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Organization]
GO

ALTER TABLE [dbo].[Tshirt]  WITH CHECK ADD  CONSTRAINT [FK_Tshirt_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[Tshirt] CHECK CONSTRAINT [FK_Tshirt_Student]
GO

ALTER TABLE [dbo].[File]  WITH CHECK ADD  CONSTRAINT [FK_File_Student] FOREIGN KEY([StudentCode])
REFERENCES [dbo].[Student] ([StudentCode])
GO
ALTER TABLE [dbo].[File] CHECK CONSTRAINT [FK_File_Student]
GO


ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_AccessCode] FOREIGN KEY([VolunteerCode])
REFERENCES [dbo].[AccessCode] ([Code])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_AccessCode]
GO

/*EventCode Foreign keys*/
ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_Event]
GO

ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_AccessCode] FOREIGN KEY([EventCode])
REFERENCES [dbo].[AccessCode] ([Code])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_AccessCode]
GO

USE [master]
GO
ALTER DATABASE [CyberCityDB] SET  READ_WRITE 
GO