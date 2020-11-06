USE [CyberDayDB]
GO
SET IDENTITY_INSERT [dbo].[Coordinator] ON 
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (1, N'Tony Stark', N'stark@me.org', 5555)
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (2, N'Steve Rodgers', N'rodgers@me.org', 5555)
GO
SET IDENTITY_INSERT [dbo].[Coordinator] OFF

Go
INSERT [dbo].[EventCode] ([EventCode], [EventURL], [EVENTID], [CoordinatorID], [VolunteerID], [InstructorID]) VALUES (N'efgh', N'www.jmu.com', 1, 1, 1, 1)

GO
INSERT [dbo].[ClassCode] ([ClassCode], [CodeCreationInfo], [InstructorID]) VALUES (N'efgh', CAST(N'2020-11-05T00:00:00.000' AS DateTime), 1)


GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([EventID], [Date], [Name], [Room], [OrganizationID]) VALUES (1, CAST(N'2020-12-05T00:00:00.000' AS DateTime), N'CyberDay 1', NULL,1)
GO
/*INSERT [dbo].[Event] ([EventID], [Date], [Name], [Room],[OrganizationID]) VALUES (2, CAST(N'2020-11-10T00:00:00.000' AS DateTime), N'CyberDay 2', NULL,1) 
GO */
SET IDENTITY_INSERT [dbo].[Event] OFF


GO
SET IDENTITY_INSERT [dbo].[Organization] ON 
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [ContactPerson]) VALUES (1, N'Harrisonburg Middle School', N'School', N'Vice Principle: Johnson')
GO
--INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [ContactPerson]) VALUES (2, N'Collegiate School', N'School', N'1234')
--GO
SET IDENTITY_INSERT [dbo].[Organization] OFF


GO
INSERT [dbo].[Instructor] ([InstructorID], [Name], [OrganizationID], [Email], [Phone], [ClassCode]) VALUES (N'5678', N'John Deer', 2, N'deer@me.org', 5558888, N'efgh')
GO
INSERT [dbo].[Instructor] ([InstructorID], [Name], [OrganizationID], [Email], [Phone], [ClassCode]) VALUES (N'efgh', N'Peter Parker', 1, N'Parker@me.org', 5554444, N'efgh')
GO


GO
INSERT [dbo].[Volunteer] ([VolunteerID], [Name], [Role], [Phone], [Email], [EventCode]) VALUES (N'1', N'Jim Kramer', N'Student', 5552233, N'BooYaaa@me.org',N'5555')

GO
SET IDENTITY_INSERT [dbo].[Subevents] ON 
GO
INSERT [dbo].[Subevents] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (1, 1, N'JavaScript', CAST(N'09:00:00' AS Time), 200)
GO
INSERT [dbo].[Subevents] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (1, 2, N'Database Management', CAST(N'11:00:00' AS Time), 211)
GO
INSERT [dbo].[Subevents] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (2, 3, N'Python', CAST(N'09:00:00' AS Time), 212)
GO
INSERT [dbo].[Subevents] ([EventID], [ActivityID], [ActivityName], [Time], [Room]) VALUES (2, 4, N'Visual Studio', CAST(N'11:00:00' AS Time), 222)
GO
SET IDENTITY_INSERT [dbo].[Subevents] OFF



GO
INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (1, N'Max Vaughan', N'Mike Vaughan', N'mVauhgn@gmail.com', 11, N' Dont call ever, busy', NULL)
GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (2, N'Barry Allen', N'5678', N'Happy', 2)
--GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (3, N'Lebron James', N'efgh', N'Athletic', 1)
--GO
--INSERT [dbo].[Parent] ([ParentID], [ParentName], [ChildName], [ChildEmail], [ChildAge], [EmergencyContactInfo], [UploadID]) VALUES (4, N'Carol Danvers', N'5678', N'Super', 2)

GO
SET IDENTITY_INSERT [dbo].[ContactRequest] ON 
GO
INSERT [dbo].[ContactRequest] ([RequestID], [ContactName], [Phone], [Email], [OrganizationName], [OrganizationType], [DateRequest], [EventNameRequest]) VALUES (1, N'Bruce Wayne', 5555555, N'wayne@me.org', N'Johnson Middle School', N'School', CAST(N'2020-10-29' AS Date), N'Johnson School Cyber Day')
GO
INSERT [dbo].[ContactRequest] ([RequestID], [ContactName], [Phone], [Email], [OrganizationName], [OrganizationType], [DateRequest], [EventNameRequest]) VALUES (2, N'Clark Kent', 5555588, N'kent@me.org', N'Collegiate School', N'School', CAST(N'2020-11-10' AS Date), N'Collegiate CyberDay')
GO
SET IDENTITY_INSERT [dbo].[ContactRequest] OFF
GO

GO
INSERT [dbo].[ParentApproval] ([ApprovalID], [PhotoRelease], [LegalInfo], [ClassCode], [ParentID]) VALUES (01, N'Photo release signed', N'Legal infor signed', N'efgh', 1)
GO