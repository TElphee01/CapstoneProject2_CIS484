USE [master]
GO
/****** Object:  Database [CyberDayDB]    Script Date: 11/03/2020 12:15:00 PM ******/
CREATE DATABASE [CyberDayDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CyberDayDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CyberDayDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CyberDayDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CyberDayDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CyberDayDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CyberDayDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CyberDayDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CyberDayDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CyberDayDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CyberDayDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CyberDayDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CyberDayDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CyberDayDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CyberDayDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CyberDayDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CyberDayDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CyberDayDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CyberDayDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CyberDayDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CyberDayDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CyberDayDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CyberDayDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CyberDayDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CyberDayDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CyberDayDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CyberDayDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CyberDayDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CyberDayDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CyberDayDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CyberDayDB] SET  MULTI_USER 
GO
ALTER DATABASE [CyberDayDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CyberDayDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CyberDayDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CyberDayDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CyberDayDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CyberDayDB', N'ON'
GO
ALTER DATABASE [CyberDayDB] SET QUERY_STORE = OFF
GO
USE [CyberDayDB]
GO
/****** Object:  Table [dbo].[EventCode]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCode](
	[EventCode] [varchar](10) NOT NULL,
	[EventURL] [varchar](50) NULL,
	[EventID] [int] NULL,
	[CoordinatorID] [int] NULL,
	[VolunteerID] [varchar](50) NULL,
	[InstructorID] [varchar](50) NULL
	 CONSTRAINT [PK_EventCode] PRIMARY KEY CLUSTERED 
(
	[EventCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassCode]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassCode](
	[ClassCode] [varchar](50) NOT NULL,
	[CodeCreationInfo] [TIMESTAMP] NULL,
	[InstructorID] [varchar](50) NULL,
 CONSTRAINT [PK_ClassCode] PRIMARY KEY CLUSTERED 
(
	[ClassCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Coordinator]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Coordinator](
	[CoordinatorID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[EventCode] [varchar](10) NULL,
 CONSTRAINT [PK_Coordinator] PRIMARY KEY CLUSTERED 
(
	[CoordinatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[Name] [varchar](50) NULL,
	[Room] [int] NULL,
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subevent]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subevent](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[ActivityID] [int],
	[ActivityName] [varchar](50) NULL,
	[Time] [time](7) NULL,
	[Room] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [varchar](50) NOT NULL,
	[Name] [varchar](50) NULL,
	[OrganizationID] [int] NULL,
	[Email] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[EventCode] [varchar](10) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrganizationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[ContactPerson] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[ParentID] [int] IDENTITY(1,1) NOT NULL,
	[ParentName] [varchar](50) NULL,
	[ChildName] [varchar](50) NULL,
	[ChildEmail] [varchar](50) NULL,	
	[ChildAge] [varchar](5) NULL,
	[EmergencyContactInfo] [varchar](50) NULL,
	[UploadID] [int],
	 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[ParentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentApproval]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentApproval](
	[ApprovalID] [int] IDENTITY(1,1) NOT NULL,
	[PhotoRelease] [varchar](50),
	[LegalInfoRelease] [varchar](50),
	[ClassCode] [varchar](50) NULL,
	[ParentID] [int],
 CONSTRAINT [PK_ParentApproval] PRIMARY KEY CLUSTERED 
(
	[ApprovalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentUpload]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentUpload](
	[UploadID] [int] IDENTITY(1,1) NOT NULL,
	[uploads] [varchar](50),
	[ParentID] [int],
 CONSTRAINT [PK_StudentUploads] PRIMARY KEY CLUSTERED 
(
	[UploadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 11/03/2020 12:15:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolunteerID] [varchar](50),
	[Name] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[Phone] [bigint] NULL,
	[Email] [varchar](50) NULL,
	[EventCode] [varchar](10) NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[VolunteerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]) ON [PRIMARY]
GO

/*EventCode Foreign keys */
ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_Event]
GO

ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_Coordinator] FOREIGN KEY([CoordinatorID])
REFERENCES [dbo].[Coordinator] ([CoordinatorID])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_Coordinator]
GO

ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_Volunteer] FOREIGN KEY([VolunteerID])
REFERENCES [dbo].[Volunteer] ([VolunteerID])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_Volunteer]
GO

ALTER TABLE [dbo].[EventCode]  WITH CHECK ADD  CONSTRAINT [FK_EventCode_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[EventCode] CHECK CONSTRAINT [FK_EventCode_Instructor]
GO

/*ClassCode Foreign keys */
ALTER TABLE [dbo].[ClassCode]  WITH CHECK ADD  CONSTRAINT [FK_ClassCode_InstructorID] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[ClassCode] CHECK CONSTRAINT [FK_ClassCode_InstructorID]
GO

/* Instructor Foreign key*/
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Organization]
GO  

ALTER TABLE [dbo].[ParentApproval]  WITH CHECK ADD  CONSTRAINT [FK_ParentApproval_Parent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parent] ([ParentID])
GO
ALTER TABLE [dbo].[ParentApproval] CHECK CONSTRAINT [FK_ParentApproval_Parent]
GO

/*Parent Forign Key*/
ALTER TABLE [dbo].[Parent]  WITH CHECK ADD  CONSTRAINT [FK_Parent_StudentUpload] FOREIGN KEY([UploadID])
REFERENCES [dbo].[StudentUpload] ([UploadID])
GO
ALTER TABLE [dbo].[Parent] CHECK CONSTRAINT [FK_Parent_StudentUpload]
GO

/*Event Forign Key */
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Event_Organization] FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Organization] ([OrganizationID])
GO
ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Event_Organization]
GO

/*Coordinator Foriegn key */
ALTER TABLE [dbo].[Coordinator]  WITH CHECK ADD  CONSTRAINT [FK_Coordinator_EventCode] FOREIGN KEY([EventCode])
REFERENCES [dbo].[EventCode] ([EventCode])
GO
ALTER TABLE [dbo].[Coordinator] CHECK CONSTRAINT [FK_Coordinator_EventCode]
GO

/*StudentUpload Forign key*/
ALTER TABLE [dbo].[StudentUpload]  WITH CHECK ADD  CONSTRAINT [FK_StudentUpload_Parent] FOREIGN KEY([ParentID])
REFERENCES [dbo].[Parent] ([ParentID])
GO
ALTER TABLE [dbo].[StudentUpload] CHECK CONSTRAINT [FK_StudentUpload_Parent]
GO
/*ParentApproval Foreign Keys */
ALTER TABLE [dbo].[ParentApproval]  WITH CHECK ADD  CONSTRAINT [FK_ParentApproval_ClassCode] FOREIGN KEY([ClassCode])
REFERENCES [dbo].[ClassCode] ([ClassCode])
GO
ALTER TABLE [dbo].[ParentApproval] CHECK CONSTRAINT [FK_ParentApproval_ClassCode]
GO
/*Subevent Forign key*/
ALTER TABLE [dbo].[Subevent]  WITH CHECK ADD  CONSTRAINT [FK_Subevent_Event] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO
ALTER TABLE [dbo].[Subevent] CHECK CONSTRAINT [FK_Subevent_Event]
GO