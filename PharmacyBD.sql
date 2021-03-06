USE [master]
GO
/****** Object:  Database [pharmacy]    Script Date: 3/20/2020 9:18:57 PM ******/
CREATE DATABASE [pharmacy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pharmacy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pharmacy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pharmacy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\pharmacy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pharmacy] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pharmacy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pharmacy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pharmacy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pharmacy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pharmacy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pharmacy] SET ARITHABORT OFF 
GO
ALTER DATABASE [pharmacy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [pharmacy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pharmacy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pharmacy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pharmacy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pharmacy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pharmacy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pharmacy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pharmacy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pharmacy] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pharmacy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pharmacy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pharmacy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pharmacy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pharmacy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pharmacy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pharmacy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pharmacy] SET RECOVERY FULL 
GO
ALTER DATABASE [pharmacy] SET  MULTI_USER 
GO
ALTER DATABASE [pharmacy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pharmacy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pharmacy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pharmacy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pharmacy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pharmacy] SET QUERY_STORE = OFF
GO
USE [pharmacy]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_Id] [int] IDENTITY(201,1) NOT NULL,
	[admin_Name] [varchar](50) NULL,
	[admin_Email] [varchar](50) NULL,
	[admin_Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[User_Id] [int] IDENTITY(101,1) NOT NULL,
	[User_Name] [varchar](50) NOT NULL,
	[User_Email] [varchar](50) NOT NULL,
	[User_Password] [varchar](50) NOT NULL,
	[User_confirmpassword] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[capsules]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[capsules](
	[cap_id] [int] IDENTITY(501,1) NOT NULL,
	[cap_Name] [varchar](50) NULL,
	[output] [varchar](50) NULL,
	[cap_Size] [varchar](50) NULL,
	[machine_dimension] [varchar](50) NULL,
	[shiping_weight] [varchar](50) NULL,
	[Capsules_Image] [varchar](50) NULL,
 CONSTRAINT [PK_capsules] PRIMARY KEY CLUSTERED 
(
	[cap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[career]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[career](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firsrt_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[gendre] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[phone_no] [int] NULL,
	[email] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Experience] [varchar](50) NULL,
	[cover_letter] [varchar](50) NULL,
	[resume] [varchar](50) NULL,
 CONSTRAINT [PK_career] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[phone_no] [int] NULL,
	[message] [varchar](50) NULL,
 CONSTRAINT [PK_contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liquid fillings]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liquid fillings](
	[Lq_Id] [int] IDENTITY(1,1) NOT NULL,
	[lq_Name] [varchar](50) NULL,
	[Air_Pressure] [varchar](50) NULL,
	[Air_Volume] [varchar](50) NULL,
	[Filling_Speed] [varchar](50) NULL,
	[Filing_Range] [varchar](50) NULL,
	[LQ_Image] [varchar](50) NULL,
 CONSTRAINT [PK_Liquid fillings] PRIMARY KEY CLUSTERED 
(
	[Lq_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qoute_Us]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qoute_Us](
	[Id] [int] IDENTITY(301,1) NOT NULL,
	[Full_Name] [varchar](50) NULL,
	[Company_Name] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Postal_Code] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Phone] [int] NULL,
	[Comments] [varchar](50) NULL,
 CONSTRAINT [PK_Qoute_Us] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tablets]    Script Date: 3/20/2020 9:18:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tablets](
	[TB_ID] [int] IDENTITY(301,1) NOT NULL,
	[Tb_Name] [varchar](50) NULL,
	[Model_No] [varchar](50) NULL,
	[Dies] [varchar](50) NULL,
	[Max_Pressure] [varchar](50) NULL,
	[Max_Diametere] [varchar](50) NULL,
	[Max_Depth] [varchar](50) NULL,
	[Production_Capacity] [varchar](50) NULL,
	[Machine_Size] [varchar](50) NULL,
	[Net_Weight] [varchar](50) NULL,
	[tablet_Image] [varchar](max) NULL,
 CONSTRAINT [PK_Tablets] PRIMARY KEY CLUSTERED 
(
	[TB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([admin_Id], [admin_Name], [admin_Email], [admin_Password]) VALUES (201, N'salman', N'uzairansari1998@gmail.com', N'12345')
INSERT [dbo].[Admin] ([admin_Id], [admin_Name], [admin_Email], [admin_Password]) VALUES (202, N'test', N't@t.com', N'123')
INSERT [dbo].[Admin] ([admin_Id], [admin_Name], [admin_Email], [admin_Password]) VALUES (203, N'ANSARI', N'abc@123', N'258')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (101, N'uzair', N'uzairansari1998@gmail.com', N'123', N'123')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (102, N'uzair', N'uzairansari1998@gmail.com', N'123', N'123')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (103, N'ayesha', N'tahir@hotmail.com', N'258', N'258')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (104, N'ayesha', N'dsvfbgesfb gb', N'tenherjzbdgjetn', N'htrjncterhetmngm')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (105, N'ayesha', N'uzairansari1998@gmail.com', N'123', N'123')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (106, N'uzair', N'uzairansari1998@gmail.com', N'123', N'123')
INSERT [dbo].[Candidate] ([User_Id], [User_Name], [User_Email], [User_Password], [User_confirmpassword]) VALUES (107, N'uzair', N'uzairansari1998@gmail.com', N'123', N'123')
SET IDENTITY_INSERT [dbo].[Candidate] OFF
SET IDENTITY_INSERT [dbo].[capsules] ON 

INSERT [dbo].[capsules] ([cap_id], [cap_Name], [output], [cap_Size], [machine_dimension], [shiping_weight], [Capsules_Image]) VALUES (505, N'ac', N'gw', N'JHIYTG', N'UG', N'LOOU', NULL)
INSERT [dbo].[capsules] ([cap_id], [cap_Name], [output], [cap_Size], [machine_dimension], [shiping_weight], [Capsules_Image]) VALUES (506, N'wd54', N'kjbkjbk', N'obojjogo', N'ljbljgifklfiyi.kiyu', N'ihcufknbilyfribouo6467989', NULL)
SET IDENTITY_INSERT [dbo].[capsules] OFF
SET IDENTITY_INSERT [dbo].[career] ON 

INSERT [dbo].[career] ([id], [firsrt_name], [last_name], [gendre], [country], [address], [phone_no], [email], [Qualification], [Experience], [cover_letter], [resume]) VALUES (1, N'salman', N'ansari', NULL, N'Pakistan', N'cjbj', 301279240, N'uzairansari1998@gmail.com', N'engg', N'2 years', N'cc', N'Screenshot (3).png')
INSERT [dbo].[career] ([id], [firsrt_name], [last_name], [gendre], [country], [address], [phone_no], [email], [Qualification], [Experience], [cover_letter], [resume]) VALUES (2, N'uzair', N'ansari', NULL, N'Pakistan', N'cjbj', 301279240, N'uzairansari1998@gmail.com', N'bsse', N'2 years', N'asdgrwHBwt', NULL)
INSERT [dbo].[career] ([id], [firsrt_name], [last_name], [gendre], [country], [address], [phone_no], [email], [Qualification], [Experience], [cover_letter], [resume]) VALUES (3, N'mehroz', N'ansari', N'Male', N'Pakistan', N'cjbj', 301279240, N'uzairansari1998@gmail.com', N'bsse', N'2 years', N'ffegrwfawf', NULL)
INSERT [dbo].[career] ([id], [firsrt_name], [last_name], [gendre], [country], [address], [phone_no], [email], [Qualification], [Experience], [cover_letter], [resume]) VALUES (4, N'uzair', N'fv  fvf', NULL, N'Pakistan', N'cjbj', 301279240, N'uzairansari1998@gmail.com', NULL, N'5', N'gfgjzrgm', NULL)
INSERT [dbo].[career] ([id], [firsrt_name], [last_name], [gendre], [country], [address], [phone_no], [email], [Qualification], [Experience], [cover_letter], [resume]) VALUES (5, N'uzair', NULL, NULL, N'Pakistan', N'cjbj', 301279240, N'uzairansari1998@gmail.com', N'bsse', N'2 years', N'EQFEGFE', NULL)
SET IDENTITY_INSERT [dbo].[career] OFF
SET IDENTITY_INSERT [dbo].[contacts] ON 

INSERT [dbo].[contacts] ([Id], [Name], [Email], [phone_no], [message]) VALUES (1, N'uzair', N'uzairansari1998@gmail.com', 301279240, N'msg recived')
INSERT [dbo].[contacts] ([Id], [Name], [Email], [phone_no], [message]) VALUES (2, N'uzair', N'uzairansari1998@gmail.com', 301279240, N'msg recived')
INSERT [dbo].[contacts] ([Id], [Name], [Email], [phone_no], [message]) VALUES (3, N'uzair', N'uzairansari1998@gmail.com', 301279240, N'adfgeahet')
INSERT [dbo].[contacts] ([Id], [Name], [Email], [phone_no], [message]) VALUES (4, N'uzair', N'uzairansari1998@gmail.com', 301279240, N'adfgeahet')
INSERT [dbo].[contacts] ([Id], [Name], [Email], [phone_no], [message]) VALUES (5, N'uzair', N'uzairansari1998@gmail.com', 301279240, N'kbcily')
SET IDENTITY_INSERT [dbo].[contacts] OFF
SET IDENTITY_INSERT [dbo].[Liquid fillings] ON 

INSERT [dbo].[Liquid fillings] ([Lq_Id], [lq_Name], [Air_Pressure], [Air_Volume], [Filling_Speed], [Filing_Range], [LQ_Image]) VALUES (2, N'3246', N'3512', N'11', N'316', N'31633', NULL)
SET IDENTITY_INSERT [dbo].[Liquid fillings] OFF
SET IDENTITY_INSERT [dbo].[Qoute_Us] ON 

INSERT [dbo].[Qoute_Us] ([Id], [Full_Name], [Company_Name], [Address], [City], [State], [Postal_Code], [Country], [Email], [Phone], [Comments]) VALUES (301, N'uzair', N'ne', N'cjbj', N'karachi', N'north', N'75850q', N'pakistan', N'uzairansari1998@gmail.com', 301279240, N'xccdcdcd')
INSERT [dbo].[Qoute_Us] ([Id], [Full_Name], [Company_Name], [Address], [City], [State], [Postal_Code], [Country], [Email], [Phone], [Comments]) VALUES (302, N'uzair', NULL, NULL, NULL, NULL, NULL, NULL, N'uzairansari1998@gmail.com', 301279240, N'hello')
INSERT [dbo].[Qoute_Us] ([Id], [Full_Name], [Company_Name], [Address], [City], [State], [Postal_Code], [Country], [Email], [Phone], [Comments]) VALUES (303, N'uzair', N'ne', N'cjbj', N'karachi', N'north', N'75850q', N'Pakistan', N'uzairansari1998@gmail.com', 301279240, N'jcjf')
SET IDENTITY_INSERT [dbo].[Qoute_Us] OFF
USE [master]
GO
ALTER DATABASE [pharmacy] SET  READ_WRITE 
GO
