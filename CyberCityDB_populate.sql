--This code shows errors but inserts as needed. To be safe, please run twice. 
USE [CyberCityDB]
GO
SET IDENTITY_INSERT [dbo].[Coordinator] ON 
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (1, N'Tony Stark', N'stark@me.org', 5555545)
GO
INSERT [dbo].[Coordinator] ([CoordinatorID], [Name], [Email], [Phone]) VALUES (2, N'Steve Rodgers', N'rodgers@me.org', 5555558)
GO
SET IDENTITY_INSERT [dbo].[Coordinator] OFF
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'0987', N'Volunteer', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'1010', N'Student', 2)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'1111', N'Student', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'1234', N'EventCode', 2)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'2222', N'Volunteer', 2)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'5678', N'Instructor', 2)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'5555', N'EventCode', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'efgh', N'Instructor', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'7788', N'ClassCode', 1)
GO
INSERT [dbo].[AccessCode] ([Code], [UserType], [CoordinatorID]) VALUES (N'9911', N'ClassCode', 1)
GO
SET IDENTITY_INSERT [dbo].[Event] ON 
GO
INSERT [dbo].[Event] ([EventID], [Date], [Name], [ContactName],[EventCode]) VALUES (1, CAST(N'2020-10-29T00:00:00.000' AS DateTime), N'CyberDay', 'Jim Jefferies','5555')
GO
SET IDENTITY_INSERT [dbo].[Event] OFF
GO
INSERT [dbo].EventCode ([EventCode], [EventID], [VolunteerID]) VALUES (N'5555', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Organization] ON 
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [EventCode]) VALUES (1, N'Johnson Middle School', N'School', N'5555')
GO
INSERT [dbo].[Organization] ([OrganizationID], [Name], [Type], [EventCode]) VALUES (2, N'Collegiate School', N'School', N'1234')
GO
SET IDENTITY_INSERT [dbo].[Organization] OFF
GO
INSERT [dbo].[Instructor] ([InstructorCode], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'5678', N'John Deer', 2, N'deer@me.org', 5558888, N'5555')
GO
INSERT [dbo].[Instructor] ([InstructorCode], [Name], [OrganizationID], [Email], [Phone], [EventCode]) VALUES (N'efgh', N'Peter Parker', 1, N'Parker@me.org', 5554444, N'5555')
GO
INSERT [dbo].[ClassCode] ([ClassCode], [InstructorCode], [OrganizationID]) VALUES (N'7788', N'efgh', 1)
GO
INSERT [dbo].[ClassCode] ([ClassCode], [InstructorCode], [OrganizationID]) VALUES (N'9911', N'5678', 2)
GO
INSERT [dbo].[Volunteer] ([VolunteerCode], [Name], [Role], [Phone], [Email], [MealTicket]) VALUES (N'2222', N'Mary Lamb', N'Student', 5552233, N'Lamb@me.org', 'yes')
GO
INSERT [dbo].[Volunteer] ([VolunteerCode], [Name], [Role], [Phone], [Email], [MealTicket]) VALUES (N'0987', N'Mary Circus', N'Student', 5552233, N'Lamb@me.org', 'yes')
GO
INSERT [dbo].[CoordinatorAuth] ([CoordinatorID], [Username], [Password]) VALUES (1, N'James', N'1111')
GO
INSERT [dbo].[CoordinatorAuth] ([CoordinatorID], [Username], [Password]) VALUES (2, N'Steve', N'1111')
GO
SET IDENTITY_INSERT [dbo].[EventActivities] ON 
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (N'1', 1, N'JavaScript', CAST(N'09:00:00' AS Time), 200, 1)
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (N'1', 2, N'Database Management', CAST(N'11:00:00' AS Time), 211, 1)
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (N'1', 3, N'Python', CAST(N'09:00:00' AS Time), 212, 2)
GO
INSERT [dbo].[EventActivities] ([EventID], [ActivityID], [ActivityName], [Time], [Room], [ActivityGuideID]) VALUES (N'1', 4, N'Visual Studio', CAST(N'11:00:00' AS Time), 222, 2)
GO
SET IDENTITY_INSERT [dbo].[EventActivities] OFF
GO
SET IDENTITY_INSERT [dbo].[EventVolunteers] ON 
GO
INSERT [dbo].[EventVolunteers] ([VolunteerID],[VolunteerCode], [EventCode]) VALUES (1,N'2222', N'5555')
GO
INSERT [dbo].[EventVolunteers] ([VolunteerID],[VolunteerCode], [EventCode]) VALUES (2,N'0987', N'5555')
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1111', N'Max Vaughan',12, 'yes',  N'efgh', N'Sharp Cookie', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1112', N'Ricky Losh',11, 'yes',  N'efgh', N'Sharp Arrow', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1113', N'Max Losh',12, 'yes',  N'efgh', N'Blah!', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1114', N'Rajeem Mohamoud',10, 'yes',  N'efgh', N'Loves popsickles', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1115', N'Jim Ziel',11, 'yes',  N'efgh', N'Screams loudly', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1116', N'Jackson Wicklevoss',12, 'yes',  N'efgh', N'Bitcoin billions', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1117', N'Brett Rhoads',12, 'yes',  N'efgh', N'Diabetic - No sugar!', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1118', N'Ron Charadin',12, 'yes',  N'efgh', N'', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1119', N'Ricky Rick',10, 'yes',  N'efgh', N'Slick Rick', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1120', N'Jimmy Hendricks',11, 'yes',  N'efgh', N'Purple Haze', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1121', N'Niki Paige',10, 'yes',  N'efgh', N'', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1122', N'Sara Conroy',12, 'yes',  N'efgh', N'Coding expert', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1123', N'Kate Sullivan',11, 'yes',  N'efgh', N'', 1)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1010', N'Barry Allen', 11, 'yes', N'5678', N'Droppy', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1011', N'Ralph Nader', 10, 'yes', N'5678', N'Cant swin', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1012', N'James Earl', 11, 'yes', N'5678', N'Messy hair', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1013', N'Stevie Nix', 11, 'yes', N'5678', N'Droppy', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1014', N'Lebron James', 12, 'yes', N'5678', N'SUPER TALL!', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1015', N'Carol Danvers', 11, 'yes', N'5678', N'Whos that? HAHA', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1016', N'Donald Trump', 10, 'yes', N'5678', N'You are a lightweight!', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1017', N'John Jones', 12, 'yes', N'5678', N'reads alot', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1018', N'Stevie Nix', 11, 'yes', N'5678', N'Droppy', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1019', N'Stevie Grim', 13, 'yes', N'5678', N'Fear the reaper', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1020', N'Steve Bannon', 10, 'yes', N'5678', N'FB data?', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1021', N'Jamie Sprouse', 11, 'yes', N'5678', N'Craigsvillan', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1022', N'Romeo Romano', 10, 'yes', N'5678', N'Love me, Juliet', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1023', N'Jim Jefferies', 11, 'yes', N'5678', N'Worldclass comedian', 2)
GO
INSERT [dbo].[Student] ([StudentCode], [Name], [AGE], [MealTicket], [InstructorCode], [Notes], [OrganizationID]) VALUES (N'1024', N'Tanner McPhee', 10, 'yes', N'5678', N'Will throw a fit!', 2)
GO
SET IDENTITY_INSERT [dbo].[EventVolunteers] OFF 
Go 
INSERT INTO [dbo].[Tshirt] ([TshirtID],[Size],[StudentCode]) VALUES (1, 'Small', '1111')
GO