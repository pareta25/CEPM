USE [CEPM]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 12/19/2014 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Company]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Company](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[EstablishedDate] [datetime] NOT NULL,
	[WebSite] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[TinNumber] [nvarchar](50) NOT NULL,
	[RegistrationNumber] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [EstablishedDate], [WebSite], [Email], [TinNumber], [RegistrationNumber], [IsActive], [ModifiedBy], [ModifiedOn], [CreatedBy], [CreatedOn]) VALUES (1, N'radicle', CAST(0x0000A3E000000000 AS DateTime), N'www.radicleinc.com', N'info@radicleinc.com', N'1234567890', N'1234567890', 1, N'Admin', CAST(0x0000A3E000000000 AS DateTime), N'Admin', CAST(0x0000A3E000000000 AS DateTime))
INSERT [dbo].[Company] ([CompanyId], [CompanyName], [EstablishedDate], [WebSite], [Email], [TinNumber], [RegistrationNumber], [IsActive], [ModifiedBy], [ModifiedOn], [CreatedBy], [CreatedOn]) VALUES (2, N'iGurukul', CAST(0x0000A3E000000000 AS DateTime), N'www.igurukul.co.in', N'info@igurukul.co.in', N'12345678', N'12345678', 1, N'Admin', CAST(0x0000A402000B6983 AS DateTime), N'Admin', CAST(0x0000A402000B68A1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Company] OFF
/****** Object:  Table [dbo].[Project]    Script Date: 12/19/2014 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Project]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Project](
	[CompanyId] [int] NOT NULL,
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[IsComplete] [bit] NOT NULL,
	[ProjectCost] [money] NULL,
	[EstimationDays] [int] NULL,
	[EstimateCost] [money] NULL,
	[budgetHours] [int] NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/19/2014 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Password1] [nvarchar](50) NULL,
	[Password2] [nvarchar](50) NULL,
	[IsEmailVerify] [bit] NOT NULL,
	[IsMobileVerify] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LoginAttempt] [int] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [UserId], [UserName], [Email], [Mobile], [Password], [Password1], [Password2], [IsEmailVerify], [IsMobileVerify], [IsActive], [LoginAttempt], [LastLoginDate], [ModifiedBy], [ModifiedOn], [CreatedBy], [CreatedOn]) VALUES (1, 1, N'Admin', N'cepm@gmail.com', N'9929663057', N'Admin', N'admin1', N'admin2', 1, 1, 1, 0, CAST(0x0000A34800000000 AS DateTime), N'Admin', CAST(0x0000A34800000000 AS DateTime), N'Admin', CAST(0x0000A34800000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[RefType]    Script Date: 12/19/2014 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RefType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RefType](
	[RefId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[Code] [varchar](20) NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplayOrder] [int] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_RefType] PRIMARY KEY CLUSTERED 
(
	[RefId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 12/19/2014 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NOT NULL,
	[MotherName] [nvarchar](50) NULL,
	[Dob] [datetime] NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[TelPhone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[VoterId] [nvarchar](50) NULL,
	[PanCard] [nvarchar](50) NULL,
	[DrivingLicense] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[PinCode] [nvarchar](50) NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectTask]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectTask]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectTask](
	[ProjectTaskId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[ProjectId] [int] NOT NULL,
	[TaskTime] [int] NOT NULL,
	[AppliedDate] [datetime] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsStart] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ProjectTask] PRIMARY KEY CLUSTERED 
(
	[ProjectTaskId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectMember]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectMember]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectMember](
	[ProjectId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ProjectMemberTypeId] [int] NOT NULL,
	[AssignDate] [datetime] NOT NULL,
	[LeaveDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProjectBug]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProjectBug]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProjectBug](
	[ProjectBugId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[ProjectId] [int] NOT NULL,
	[Assign] [int] NOT NULL,
	[response] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[AppliedDate] [datetime] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[IsStart] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ProjectBug] PRIMARY KEY CLUSTERED 
(
	[ProjectBugId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrjectWiki]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrjectWiki]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PrjectWiki](
	[ProjectId] [int] NOT NULL,
	[ProjectNoteId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Description] [ntext] NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PrjectWiki] PRIMARY KEY CLUSTERED 
(
	[ProjectNoteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeesAttandanceDetail]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeesAttandanceDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeesAttandanceDetail](
	[EmployeeId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Days] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NULL,
	[TotalTime] [int] NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeLeave]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeLeave]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeLeave](
	[LeaveId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[Reason] [varchar](100) NULL,
	[AppliedDate] [datetime] NOT NULL,
	[IsAllow] [bit] NOT NULL,
	[IsFull] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeLeave] PRIMARY KEY CLUSTERED 
(
	[LeaveId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyHoliday]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyHoliday]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyHoliday](
	[HolidayId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[HolidayName] [varchar](100) NOT NULL,
	[Comments] [varchar](250) NULL,
	[AppliedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsShifted] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyHoliday] PRIMARY KEY CLUSTERED 
(
	[HolidayId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyContact]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyContact]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyContact](
	[CompanyId] [int] NOT NULL,
	[Addresss] [nvarchar](50) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Mobile] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[TelPhone1] [nvarchar](50) NULL,
	[TelPhone2] [nvarchar](50) NULL,
	[isActive] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyContact] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyDesignation]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyDesignation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyDesignation](
	[DesignationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CompanyId] [int] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyDesignation] PRIMARY KEY CLUSTERED 
(
	[DesignationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyDevice]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyDevice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyDevice](
	[CompanyId] [int] NOT NULL,
	[DeviceId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[ModelNumber] [nvarchar](50) NULL,
	[PurchaseDate] [datetime] NOT NULL,
	[TerminationDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](50) NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyDevice] PRIMARY KEY CLUSTERED 
(
	[DeviceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeDevice]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmployeeDevice](
	[DeviceId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[IssueDate] [datetime] NOT NULL,
	[SubmitDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyEmployee]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyEmployee](
	[CompanyId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompanyDesignationRole]    Script Date: 12/19/2014 14:19:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CompanyDesignationRole]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CompanyDesignationRole](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[isApplied] [bit] NOT NULL,
	[DesignationId] [int] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CompanyDesignationRole] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_UserProfile_User]    Script Date: 12/19/2014 14:19:23 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserProfile_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserProfile]'))
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_User]
GO
/****** Object:  ForeignKey [FK_ProjectTask_Project]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectTask_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectTask]'))
ALTER TABLE [dbo].[ProjectTask]  WITH CHECK ADD  CONSTRAINT [FK_ProjectTask_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectTask_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectTask]'))
ALTER TABLE [dbo].[ProjectTask] CHECK CONSTRAINT [FK_ProjectTask_Project]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Company]
GO
/****** Object:  ForeignKey [FK_ProjectMember_Project]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_Project]
GO
/****** Object:  ForeignKey [FK_ProjectMember_User]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember]  WITH CHECK ADD  CONSTRAINT [FK_ProjectMember_User] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectMember_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectMember]'))
ALTER TABLE [dbo].[ProjectMember] CHECK CONSTRAINT [FK_ProjectMember_User]
GO
/****** Object:  ForeignKey [FK_ProjectBug_Project]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectBug_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectBug]'))
ALTER TABLE [dbo].[ProjectBug]  WITH CHECK ADD  CONSTRAINT [FK_ProjectBug_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectBug_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[ProjectBug]'))
ALTER TABLE [dbo].[ProjectBug] CHECK CONSTRAINT [FK_ProjectBug_Project]
GO
/****** Object:  ForeignKey [FK_PrjectWiki_Project]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PrjectWiki_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[PrjectWiki]'))
ALTER TABLE [dbo].[PrjectWiki]  WITH CHECK ADD  CONSTRAINT [FK_PrjectWiki_Project] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Project] ([ProjectId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PrjectWiki_Project]') AND parent_object_id = OBJECT_ID(N'[dbo].[PrjectWiki]'))
ALTER TABLE [dbo].[PrjectWiki] CHECK CONSTRAINT [FK_PrjectWiki_Project]
GO
/****** Object:  ForeignKey [FK_EmployeesAttandanceDetail_User]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeesAttandanceDetail_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeesAttandanceDetail]'))
ALTER TABLE [dbo].[EmployeesAttandanceDetail]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesAttandanceDetail_User] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeesAttandanceDetail_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeesAttandanceDetail]'))
ALTER TABLE [dbo].[EmployeesAttandanceDetail] CHECK CONSTRAINT [FK_EmployeesAttandanceDetail_User]
GO
/****** Object:  ForeignKey [FK_EmployeeLeave_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeLeave_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeLeave]'))
ALTER TABLE [dbo].[EmployeeLeave]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLeave_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeLeave_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeLeave]'))
ALTER TABLE [dbo].[EmployeeLeave] CHECK CONSTRAINT [FK_EmployeeLeave_Company]
GO
/****** Object:  ForeignKey [FK_EmployeeLeave_User]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeLeave_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeLeave]'))
ALTER TABLE [dbo].[EmployeeLeave]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeLeave_User] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeLeave_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeLeave]'))
ALTER TABLE [dbo].[EmployeeLeave] CHECK CONSTRAINT [FK_EmployeeLeave_User]
GO
/****** Object:  ForeignKey [FK_CompanyHoliday_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyHoliday_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyHoliday]'))
ALTER TABLE [dbo].[CompanyHoliday]  WITH CHECK ADD  CONSTRAINT [FK_CompanyHoliday_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyHoliday_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyHoliday]'))
ALTER TABLE [dbo].[CompanyHoliday] CHECK CONSTRAINT [FK_CompanyHoliday_Company]
GO
/****** Object:  ForeignKey [FK_CompanyContact_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyContact_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyContact]'))
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_CompanyContact_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyContact_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyContact]'))
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_CompanyContact_Company]
GO
/****** Object:  ForeignKey [FK_CompanyDesignation_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignation_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignation]'))
ALTER TABLE [dbo].[CompanyDesignation]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDesignation_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignation_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignation]'))
ALTER TABLE [dbo].[CompanyDesignation] CHECK CONSTRAINT [FK_CompanyDesignation_Company]
GO
/****** Object:  ForeignKey [FK_CompanyDesignation_CompanyContact]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignation_CompanyContact]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignation]'))
ALTER TABLE [dbo].[CompanyDesignation]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDesignation_CompanyContact] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[CompanyContact] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignation_CompanyContact]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignation]'))
ALTER TABLE [dbo].[CompanyDesignation] CHECK CONSTRAINT [FK_CompanyDesignation_CompanyContact]
GO
/****** Object:  ForeignKey [FK_CompanyDevice_CompanyContact]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDevice_CompanyContact]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDevice]'))
ALTER TABLE [dbo].[CompanyDevice]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDevice_CompanyContact] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[CompanyContact] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDevice_CompanyContact]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDevice]'))
ALTER TABLE [dbo].[CompanyDevice] CHECK CONSTRAINT [FK_CompanyDevice_CompanyContact]
GO
/****** Object:  ForeignKey [FK_EmployeeDevice_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDevice_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice] CHECK CONSTRAINT [FK_EmployeeDevice_Company]
GO
/****** Object:  ForeignKey [FK_EmployeeDevice_CompanyDevice]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_CompanyDevice]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDevice_CompanyDevice] FOREIGN KEY([DeviceId])
REFERENCES [dbo].[CompanyDevice] ([DeviceId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_CompanyDevice]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice] CHECK CONSTRAINT [FK_EmployeeDevice_CompanyDevice]
GO
/****** Object:  ForeignKey [FK_EmployeeDevice_User]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDevice_User] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeDevice_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeDevice]'))
ALTER TABLE [dbo].[EmployeeDevice] CHECK CONSTRAINT [FK_EmployeeDevice_User]
GO
/****** Object:  ForeignKey [FK_CompanyEmployee_Company]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee]  WITH CHECK ADD  CONSTRAINT [FK_CompanyEmployee_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_Company]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee] CHECK CONSTRAINT [FK_CompanyEmployee_Company]
GO
/****** Object:  ForeignKey [FK_CompanyEmployee_CompanyDesignation]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_CompanyDesignation]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee]  WITH CHECK ADD  CONSTRAINT [FK_CompanyEmployee_CompanyDesignation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[CompanyDesignation] ([DesignationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_CompanyDesignation]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee] CHECK CONSTRAINT [FK_CompanyEmployee_CompanyDesignation]
GO
/****** Object:  ForeignKey [FK_CompanyEmployee_User]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee]  WITH CHECK ADD  CONSTRAINT [FK_CompanyEmployee_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyEmployee_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyEmployee]'))
ALTER TABLE [dbo].[CompanyEmployee] CHECK CONSTRAINT [FK_CompanyEmployee_User]
GO
/****** Object:  ForeignKey [FK_CompanyDesignationRole_CompanyDesignation]    Script Date: 12/19/2014 14:19:24 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignationRole_CompanyDesignation]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignationRole]'))
ALTER TABLE [dbo].[CompanyDesignationRole]  WITH CHECK ADD  CONSTRAINT [FK_CompanyDesignationRole_CompanyDesignation] FOREIGN KEY([DesignationId])
REFERENCES [dbo].[CompanyDesignation] ([DesignationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CompanyDesignationRole_CompanyDesignation]') AND parent_object_id = OBJECT_ID(N'[dbo].[CompanyDesignationRole]'))
ALTER TABLE [dbo].[CompanyDesignationRole] CHECK CONSTRAINT [FK_CompanyDesignationRole_CompanyDesignation]
GO
