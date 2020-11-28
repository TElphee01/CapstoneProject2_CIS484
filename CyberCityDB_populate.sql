USE [CyberCityDB]
GO
SET IDENTITY_INSERT [dbo].[Coordinator] ON 
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (1, N'Scalio', N'scalio1@gmail.com', 5555555)
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (2, N'Maxwell', N'max@gmail.com', 6666666)
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (3, N'max', N'max@comcast.net', 45434221)
GO
SET IDENTITY_INSERT [dbo].[Coordinator] OFF
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'1111', N'EventCode', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'2222', N'EventCode', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'3333', N'Volunteer', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'4444', N'Volunteer', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'5555', N'Instructor', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'6666', N'Instructor', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'7777', N'Student', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'8888', N'Student', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'9999', N'ClassCode', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'abcd', N'ClassCode', 1)
GO
INSERT [dbo].[Instructor] ([InstructorCode], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'5555', N'Ben Affleck', 1, N'Ben@gmail.com', 232342342, N'1111')
GO
INSERT [dbo].[Instructor] ([InstructorCode], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'6666', N'Barry', 2, N'barry@gmail.com', 8765432, N'2222')
GO
INSERT [dbo].[Instructor] ([InstructorCode], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'6655', N'Tanner', 2, N'telphee@gmail.com', 1115432, N'2222')
GO
INSERT [dbo].[ClassCode] ([ClassCode], [InstructorCode], [OrganizationID]) VALUES (N'9999', N'5555', 1)
GO
INSERT [dbo].[ClassCode] ([ClassCode], [InstructorCode], [OrganizationID]) VALUES (N'abcd', N'6666', 2)
GO
INSERT [dbo].[Volunteer] ([VolunteerCode], [Name], [Role], [Phone], [Email], [MealTicket]) VALUES (N'3333', N'Hunter R', N'Student', 7777777, N'hunter@gmail.com', N'yes')
GO
INSERT [dbo].[Volunteer] ([VolunteerCode], [Name], [Role], [Phone], [Email], [MealTicket]) VALUES (N'4444', N'Nick', N'Student', 9999999, N'nick@gmail.com', N'yes')
GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([EventID], [Date], [Name], [ContactName], [EventCode]) VALUES (1, CAST(N'2020-11-19T00:00:00.000' AS DateTime), N'Collegiate Day', N'John Deer', N'1111')
GO
INSERT [dbo].[Event] ([EventID], [Date], [Name], [ContactName], [EventCode]) VALUES (2, CAST(N'2020-11-22T00:00:00.000' AS DateTime), N'Madison Day', N'James Madison', N'2222')
GO
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
INSERT [dbo].[EventCode] ([EventCode], [EventID], [VolunteerID]) VALUES (N'1111', 1, 1)
GO
INSERT [dbo].[EventCode] ([EventCode], [EventID], [VolunteerID]) VALUES (N'2222', 2, 2)
GO
INSERT [dbo].[CoordinatorAuth] ([CoordinatorID], [Username], [Password]) VALUES (1, N'scalio', N'1111')
GO
INSERT [dbo].[CoordinatorAuth] ([CoordinatorID], [Username], [Password]) VALUES (2, N'max', N'1111')
GO
INSERT [dbo].[CoordinatorAuth] ([CoordinatorID], [Username], [Password]) VALUES (3, N'MaxV', N'1000:DUVANoR+ESAELv1tE6Bw9Vjvg8E6opQD:5Wqv2P+FkcZGDyAqOjDfDe3YoGM=')
GO
SET IDENTITY_INSERT [dbo].[EventActivities] ON 
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (1, 1, N'Java Coding', CAST(N'13:00:00' AS Time), 222, 1)
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (2, 2, N'Database Design', CAST(N'12:00:00' AS Time), 230, 2)
GO
SET IDENTITY_INSERT [dbo].[EventActivities] OFF
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [EventCode]) VALUES (1, N'Collegiate School', N'School', N'1111')
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [EventCode]) VALUES (2, N'Madison School', N'School', N'2222')
GO
SET IDENTITY_INSERT [dbo].[Organization] OFF
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [Age], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'7777', N'Jack Lantern', N'10', N'', N'5555', N'Yes', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [Age], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'8888', N'Jill', N'11', N'Yes', N'6666', N'None', 2)
GO
INSERT [dbo].[Tshirt] ([TshirtID], [Size], [StudentCode]) VALUES (1, N'Small', N'7777')
GO
INSERT [dbo].[Tshirt] ([TshirtID], [Size], [StudentCode]) VALUES (2, N'Medium', N'8888')
GO
SET IDENTITY_INSERT [dbo].[EventVolunteers] ON 
GO
INSERT [dbo].[EventVolunteers] ([VolunteerID], [VolunteerCode], [EventCode]) VALUES (1, N'3333', N'1111')
GO
INSERT [dbo].[EventVolunteers] ([VolunteerID], [VolunteerCode], [EventCode]) VALUES (2, N'4444', N'2222')
GO
SET IDENTITY_INSERT [dbo].[EventVolunteers] OFF
GO
