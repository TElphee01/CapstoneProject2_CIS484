USE [CyberDayDB]
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [ContactPerson]) VALUES (N'250', N'Harrisonburg Middle School', N'School', N'Vice Principle: Johnson')
GO
--INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [ContactPerson]) VALUES (2, N'Collegiate School', N'School', N'1234')
--GO
SET IDENTITY_INSERT [dbo].[Organization] OFF

GO
SET IDENTITY_INSERT [dbo].[Coordinator] ON 
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (N'1', N'Tony Stark', N'stark@me.org', N'5555')
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (N'2', N'Steve Rodgers', N'rodgers@me.org', N'5555')
GO
SET IDENTITY_INSERT [dbo].[Coordinator] OFF

GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([EventID], [Date], [Name], [Room], [OrganizationID]) VALUES (N'150', DEFAULT, N'CyberDay 1', NULL, N'250')
GO
/*INSERT [dbo].[Event] ([EventID], [Date], [Name], [Room],[OrganizationID]) VALUES (2, CAST(N'2020-11-10T00:00:00.000' AS DateTime), N'CyberDay 2', NULL,1) 
GO */
SET IDENTITY_INSERT [dbo].[Event] OFF

GO
SET IDENTITY_INSERT [dbo].[Subevent] ON 
GO
INSERT [dbo].[Subevent] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (N'150', N'450', N'JavaScript', CAST(N'09:00:00' AS Time), N'200')
GO
INSERT [dbo].[Subevent] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (N'150', N'451', N'Database Management', CAST(N'11:00:00' AS Time), N'211')
GO
INSERT [dbo].[Subevent] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (N'150', N'452', N'Python', CAST(N'09:00:00' AS Time), N'212')
GO
INSERT [dbo].[Subevent] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (N'150', N'453', N'Visual Studio', CAST(N'11:00:00' AS Time), N'222')
GO
SET IDENTITY_INSERT [dbo].[Subevent] OFF

GO
SET IDENTITY_INSERT [dbo].[Parent] ON
GO
INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (N'3001', N'Max Vaughan', N'Mike Vaughan', N'mVauhgn@gmail.com', 11, N' Ballin', NULL)
GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (2, N'Barry Allen', N'5678', N'Happy', 2)
--GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (3, N'Lebron James', N'efgh', N'Athletic', 1)
--GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (4, N'Carol Danvers', N'5678', N'Super', 2)
GO
SET IDENTITY_INSERT [dbo].[Parent] OFF
GO


GO
INSERT [dbo].[Instructor] ([InstructorID], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'350', N'John Deer', 250, N'deer@me.org', 5558888, N'efgh')
GO
INSERT [dbo].[Instructor] ([InstructorID], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'351', N'Peter Parker', 250, N'Parker@me.org', 5554444, N'efgh')
GO
GO
INSERT [dbo].[ClassCode] ([ClassCode], [CodeCreationInfo], [InstructorID]) VALUES (N'efgh', DEFAULT, N'350')
GO
GO
SET IDENTITY_INSERT [dbo].[ParentApproval] ON
GO
INSERT [dbo].[ParentApproval] ([ApprovalID], [PhotoRelease], [LegalInfoRelease], [ClassCode], [ParentID]) VALUES (N'600', N'Photo release signed', N'Legal infor signed', N'efgh', 3001)
GO
SET IDENTITY_INSERT [dbo].[ParentApproval] OFF

GO
INSERT [dbo].[Volunteer] ([VolunteerID], [Name], [Role], [Phone], [Email], [EventCode]) VALUES (N'550', N'Jim Kramer', N'Student', 5552233, N'BooYaaa@me.org',N'5555')
GO
INSERT [dbo].[EventCode] ([EventCode], [EventURL], [EVENTID], [CoordinatorID], [VolunteerID], [InstructorID]) VALUES (N'5555', N'www.jmu.com', N'150', N'1', N'550', N'350')
