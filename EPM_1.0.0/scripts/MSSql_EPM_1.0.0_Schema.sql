/****** Object:  Table [dbo].[ChallengeResponse]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[ChallengeResponse]
GO
/****** Object:  Table [dbo].[ChallengeResponse_Policy]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[ChallengeResponse_Policy]
GO
/****** Object:  Table [dbo].[Password_Policy]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[Password_Policy]
GO
/****** Object:  Table [dbo].[QuestionMaster]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[QuestionMaster]
GO
/****** Object:  Table [dbo].[UserActivities]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[UserActivities]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 06/01/2013 17:37:45 ******/
DROP TABLE [dbo].[UserMaster]
GO
/****** Object:  User [epmdb]    Script Date: 06/01/2013 17:37:43 ******/
DROP USER [epmdb]
GO
/****** Object:  User [epmdb]    Script Date: 06/01/2013 17:37:43 ******/
CREATE USER [epmdb] FOR LOGIN [epmdb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip_code] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Email_Address] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[User_Image] [varchar](max) NULL,
	[Is_Photo_Uploaded] [char](1) NULL,
	[User_Uploaded_Image] [image] NULL,
	[epm_host_name] [varchar](50) NULL,
	[ldap_domain] [varchar](50) NULL,
	[image_type] [varchar](5) NULL,
	[Middle_Name] [varchar](50) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserActivities]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivities](
	[activity_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[epm_host_name] [nvarchar](50) NOT NULL,
	[ldap_domain] [nvarchar](50) NOT NULL,
	[activity_type] [nvarchar](50) NOT NULL,
	[activity_date] [datetime] NOT NULL,
	[activity_op_desc] [nvarchar](max) NULL,
	[activity_from_ip] [nvarchar](20) NOT NULL,
	[activity_by] [nvarchar](50) NOT NULL,
	[activity_by_role] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_UserActivities] PRIMARY KEY CLUSTERED 
(
	[activity_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionMaster]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuestionMaster](
	[Qno] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[Question] [varchar](100) NULL,
	[Set_Question] [char](1) NULL,
	[No_Of_Question] [varchar](50) NULL,
	[No_Of_Answers] [varchar](50) NULL,
	[Set_Answers] [char](1) NULL,
	[Answer] [varchar](50) NULL,
	[Response_Length] [varchar](50) NULL,
	[Mandatory] [char](1) NULL,
	[User_Defined] [char](1) NULL,
	[User_Defined_Question] [varchar](100) NULL,
	[UserID] [int] NULL,
	[Allowed_User_Questions] [char](10) NULL,
 CONSTRAINT [PK_QuestionMaster] PRIMARY KEY CLUSTERED 
(
	[Qno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionMaster] ON
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(1 AS Numeric(5, 0)), N'What is the name of your First School?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(2 AS Numeric(5, 0)), N'What is your Mother''s Maiden Name?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(3 AS Numeric(5, 0)), N'What is your Favourite Cuisine?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(4 AS Numeric(5, 0)), N'What is your Favourite Hobby?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(5 AS Numeric(5, 0)), N'Which is your Place of Birth?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(6 AS Numeric(5, 0)), N'Which is your Favourite Book?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(7 AS Numeric(5, 0)), N'What is your Date of Birth?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(8 AS Numeric(5, 0)), N'What is your Pet''s Name?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(9 AS Numeric(5, 0)), N'Who is your Favourite Actor?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(10 AS Numeric(5, 0)), N'What is your Best Friend''s Name?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(11 AS Numeric(5, 0)), N'What was your childhood nickname?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(12 AS Numeric(5, 0)), N'Who is your inspirational role model?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(13 AS Numeric(5, 0)), N'What is your favorite color?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
INSERT [dbo].[QuestionMaster] ([Qno], [Question], [Set_Question], [No_Of_Question], [No_Of_Answers], [Set_Answers], [Answer], [Response_Length], [Mandatory], [User_Defined], [User_Defined_Question], [UserID], [Allowed_User_Questions]) VALUES (CAST(14 AS Numeric(5, 0)), N'What is your favorite fictional character?', N'N', N'3', N'3', N'N', NULL, N'4', N'N', N'N', NULL, NULL, N'1         ')
SET IDENTITY_INSERT [dbo].[QuestionMaster] OFF
/****** Object:  Table [dbo].[Password_Policy]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Password_Policy](
	[Policy_ID] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[Policy_Date] [datetime] NOT NULL,
	[Password_Length] [varchar](50) NULL,
	[Begins_Numeric] [char](10) NULL,
	[End_Numeric] [char](10) NULL,
	[Begins_Special] [char](10) NULL,
	[End_Special] [char](10) NULL,
	[Special_Words] [varchar](50) NULL,
	[Numeric_Characters_Max_Length] [varchar](50) NULL,
	[Numeric_Characters_Min_Length] [varchar](50) NULL,
	[Special_Characters_Max_Length] [varchar](50) NULL,
	[Special_Characters_Min_Length] [varchar](50) NULL,
	[Enable_Complexity] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Password_Policy] ON
INSERT [dbo].[Password_Policy] ([Policy_ID], [Policy_Date], [Password_Length], [Begins_Numeric], [End_Numeric], [Begins_Special], [End_Special], [Special_Words], [Numeric_Characters_Max_Length], [Numeric_Characters_Min_Length], [Special_Characters_Max_Length], [Special_Characters_Min_Length], [Enable_Complexity]) VALUES (CAST(1 AS Numeric(5, 0)), CAST(0x0000A02301073F4A AS DateTime), N'8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Y')
SET IDENTITY_INSERT [dbo].[Password_Policy] OFF
/****** Object:  Table [dbo].[ChallengeResponse_Policy]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChallengeResponse_Policy](
	[CR_ID] [int] IDENTITY(1,1) NOT NULL,
	[Maximum_No_Questions] [int] NOT NULL,
	[Minimum_No_Questions] [int] NOT NULL,
	[Minimum_No_Correct] [int] NOT NULL,
 CONSTRAINT [PK_ChallengeResponse_Policy] PRIMARY KEY CLUSTERED 
(
	[CR_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChallengeResponse_Policy] ON
INSERT [dbo].[ChallengeResponse_Policy] ([CR_ID], [Maximum_No_Questions], [Minimum_No_Questions], [Minimum_No_Correct]) VALUES (1, 5, 3, 3)
SET IDENTITY_INSERT [dbo].[ChallengeResponse_Policy] OFF
/****** Object:  Table [dbo].[ChallengeResponse]    Script Date: 06/01/2013 17:37:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChallengeResponse](
	[Challenge_Resp_ID] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[Challenge_Response] [varchar](max) NULL,
	[epm_host_name] [varchar](50) NOT NULL,
	[ldap_domain] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ChallengeResponse] PRIMARY KEY CLUSTERED 
(
	[Challenge_Resp_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
