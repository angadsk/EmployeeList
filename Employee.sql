USE [master]
GO
/****** Object:  Database [Employee]    Script Date: 2/6/2020 10:25:31 PM ******/
CREATE DATABASE [Employee]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Employee.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employee_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Employee_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Employee] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employee].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employee] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employee] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employee] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employee] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employee] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employee] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employee] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employee] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employee] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employee] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employee] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employee] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employee] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employee] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employee] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employee] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employee] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employee] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employee] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employee] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employee] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employee] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employee] SET RECOVERY FULL 
GO
ALTER DATABASE [Employee] SET  MULTI_USER 
GO
ALTER DATABASE [Employee] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employee] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employee] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employee] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Employee] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Employee', N'ON'
GO
ALTER DATABASE [Employee] SET QUERY_STORE = OFF
GO
USE [Employee]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Employee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/6/2020 10:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Address1] [nvarchar](200) NULL,
	[Age] [int] NULL,
	[Mobile] [nvarchar](10) NULL,
	[PinCode] [nvarchar](10) NULL,
	[EmailId] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](200) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address1], [Age], [Mobile], [PinCode], [EmailId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Venkatesh', N'Mahendru', N'8/2, SJS avenue Ajna', 25, N'8879154996', N'14300', N'mahendruvenkatesh@gmail.com', NULL, CAST(N'2019-09-09T13:28:14.807' AS DateTime), NULL, CAST(N'2020-02-06T18:55:41.610' AS DateTime))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address1], [Age], [Mobile], [PinCode], [EmailId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Rohan', N'Mehra', N'Gurgaon', 24, N'8879154996', N'120021', N'mahendruvenkatesh@gmail.com', NULL, CAST(N'2019-09-09T13:40:42.593' AS DateTime), NULL, CAST(N'2019-09-11T10:48:33.417' AS DateTime))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address1], [Age], [Mobile], [PinCode], [EmailId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Dheerah', N'Mahendru', N'Gurgaon', 25, N'8879154996', N'143001', N'mahendruvenkatesh@gmail.com', NULL, CAST(N'2019-09-09T15:17:47.257' AS DateTime), NULL, CAST(N'2019-09-09T15:35:20.060' AS DateTime))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Address1], [Age], [Mobile], [PinCode], [EmailId], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'the', N'new', N'name', 21, N'are', N'entering', N'mahe', NULL, CAST(N'2019-09-09T15:36:03.723' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 2/6/2020 10:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Angad Singh Khurana
-- Description:	Delete Employee data.
-- =============================================

Create PROCEDURE [dbo].[DeleteEmployee]
	@employeeId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Begin Try
		if exists (Select Id from  [dbo].[Employee] where id = @employeeId)
		Begin
				delete from [dbo].[Employee] where id = @employeeId

					-- if successfully deleted return succes resposnse
				select	1 as Status, 'Record Delted' as Message, SCOPE_IDENTITY() as ReturnId
		End
	End Try
	Begin Catch
		Rollback Tran
		select	0 as Status, ERROR_MESSAGE() as Message, @@IDENTITY as ReturnId
	End Catch
END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployee]    Script Date: 2/6/2020 10:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Angad Singh Khurana
-- Description:	Return the list of Employees.
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployee]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from [dbo].[Employee]
END
GO
/****** Object:  StoredProcedure [dbo].[InsertAndUpdateEmployeeData]    Script Date: 2/6/2020 10:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Angad Singh Khurana
-- Description:	Insert Employee data.
-- =============================================

CREATE PROCEDURE [dbo].[InsertAndUpdateEmployeeData]
	@id int,
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@address1 nvarchar(50),
	@age nvarchar(50),
	@mobile nvarchar(10),
	@pincode nvarchar(20),
	@emailId nvarchar(200),
	@logedInBy nvarchar(200) = 'Admin'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Begin Try
		if(@id = 0)
		Begin
			Begin Tran
				Insert into [dbo].[Employee](FirstName,LastName,Address1,Age,Mobile,PinCode,EmailId,CreatedBy, CreatedDate)
				select @firstName, @lastName, @address1, @age, @mobile,@pincode,@emailId,@logedInBy, GETDATE()

				-- if successfully inserted return succes resposnse
				select	1 as Status, 'Record Inserted' as Message, SCOPE_IDENTITY() as ReturnId
			Commit Tran
		End
		Else
		Begin
			Begin Tran
				Update [dbo].[Employee] Set 
					FirstName = @firstName,
					LastName = @lastName,
					Address1 = @address1,
					Age = @age,
					Mobile = @mobile,
					PinCode = @pincode,
					EmailId = @emailId,
					UpdatedBy = @logedInBy,
					UpdatedDate = GETDATE()
					where Id = @id

					select	1 as Status, 'Record Updated' as Message, @id as ReturnId
			Commit Tran
		End
	End Try
	Begin Catch
		Rollback Tran
		select	0 as Status, ERROR_MESSAGE() as Message, SCOPE_IDENTITY() as ReturnId
	End Catch
END
GO
USE [master]
GO
ALTER DATABASE [Employee] SET  READ_WRITE 
GO
