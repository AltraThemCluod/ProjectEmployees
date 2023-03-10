USE [ProjectEmployee]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[Email] [varchar](max) NULL,
	[Password] [varchar](50) NULL,
	[BirthDate] [varchar](50) NULL,
	[JoiningDate] [varchar](50) NULL,
	[ProfileImage] [varchar](max) NULL,
	[Salary] [decimal](18, 2) NULL,
	[DepartmentId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedAt] [datetime] NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterDepartment]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDepartment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_MasterDepartment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (1, N'Amipara Kartik', N'amiparakartik@gmail.com', N'123', N'2000-05-07', N'2022-12-25', N'\EmployeeProfile\\24122022044012_avatar-5.jpg', CAST(12000.00 AS Decimal(18, 2)), 2, 0, CAST(N'2022-12-24T11:13:39.693' AS DateTime), CAST(N'2022-12-24T11:01:21.853' AS DateTime), CAST(N'2022-12-24T11:33:44.760' AS DateTime))
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (2, N'John Den', N'johnden@gmail.com', N'123', N'2022-12-09', N'2023-01-01', N'\EmployeeProfile\\24122022044217_avatar-4.jpg', CAST(130000.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-12-24T11:15:04.743' AS DateTime), CAST(N'2022-12-24T11:12:17.540' AS DateTime), CAST(N'2022-12-24T11:36:05.753' AS DateTime))
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (3, N'Karan Patel', N'karan@gmail.com', N'123', N'1998-06-10', N'2022-12-27', N'\EmployeeProfile\\24122022061802_avatar-6.jpg', CAST(12000.00 AS Decimal(18, 2)), 2, 0, NULL, CAST(N'2022-12-24T12:48:02.260' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (4, N'Piter Mark', N'pitermark@gmail.com', N'123', N'1998-01-28', N'2022-12-24', N'\EmployeeProfile\\24122022061847_avatar-1.jpg', CAST(60000.00 AS Decimal(18, 2)), 3, 0, NULL, CAST(N'2022-12-24T12:48:47.077' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (5, N'Harsh Patel', N'harsh@gmail.com', N'123', N'2000-06-17', N'2022-12-10', N'\EmployeeProfile\\24122022062059_avatar-4.jpg', CAST(50000.00 AS Decimal(18, 2)), 1, 0, NULL, CAST(N'2022-12-24T12:49:58.290' AS DateTime), CAST(N'2022-12-24T12:51:08.407' AS DateTime))
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (6, N'Mohan Kumar', N'mohank@gmail.com', N'123', N'1996-03-08', N'2022-12-17', N'\EmployeeProfile\\24122022062301_pexels-photo-4100482.jpeg', CAST(120000.00 AS Decimal(18, 2)), 3, 0, NULL, CAST(N'2022-12-24T12:52:18.360' AS DateTime), CAST(N'2022-12-24T12:53:04.330' AS DateTime))
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (7, N'Devang Patel', N'devang@gmail.com', N'123', N'2000-12-02', N'2022-12-17', N'\EmployeeProfile\\24122022062356_pexels-photo-6334886.jpeg', CAST(120000.00 AS Decimal(18, 2)), 3, 1, CAST(N'2022-12-24T14:26:49.237' AS DateTime), CAST(N'2022-12-24T12:53:56.820' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [Name], [Email], [Password], [BirthDate], [JoiningDate], [ProfileImage], [Salary], [DepartmentId], [IsDeleted], [DeletedAt], [CreatedAt], [UpdatedAt]) VALUES (8, N'Vivek Patel', N'vivek@gmail.com', N'123', N'2001-06-06', N'2022-12-21', N'\EmployeeProfile\\24122022075607_avatar-2.jpg', CAST(12300.00 AS Decimal(18, 2)), 2, 0, NULL, CAST(N'2022-12-24T14:26:07.600' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[MasterDepartment] ON 

INSERT [dbo].[MasterDepartment] ([Id], [Name]) VALUES (1, N'Hr')
INSERT [dbo].[MasterDepartment] ([Id], [Name]) VALUES (2, N'Employee')
INSERT [dbo].[MasterDepartment] ([Id], [Name]) VALUES (3, N'Manager')
SET IDENTITY_INSERT [dbo].[MasterDepartment] OFF
GO
/****** Object:  StoredProcedure [dbo].[Employee_ById]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec [Employee_ById] 1
CREATE PROCEDURE [dbo].[Employee_ById]
	@Id bigint = 0
AS
BEGIN

	SET NOCOUNT ON;
	declare @Message varchar(max) = null,@Code bigint = 0

	SET @Code = 200
	SET @Message = 'Data retrieved successfully'

	select @Code as Code,@Message as Message
	select 
		Id,
		[Name],
		Email,
		[Password],
		BirthDate,
		JoiningDate,
		ProfileImage,
		Salary,
		DepartmentId,
		IsDeleted,
		DeletedAt,
		CreatedAt,
		UpdatedAt
	from 
		Employee
	where 
		Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[Employee_Delete]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec Employee_Delete 1
CREATE PROCEDURE [dbo].[Employee_Delete]
	@Id bigint = 0
AS
BEGIN
	SET NOCOUNT ON;
	
	if @Id = 0
	begin
		select 0  as IsDeleted
	end
	else if @Id > 0
	begin
		update Employee set IsDeleted = 1 , DeletedAt = getutcdate() where Id = @Id
		select 1 as IsDeleted
	end
	else
	begin
		select 0 as IsDeleted
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Employee_SelectAll]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec Employee_SelectAll '',0,10,'DESC','Id'
CREATE PROCEDURE [dbo].[Employee_SelectAll]
	@Search nvarchar(max) = null,
	@Offset bigint = 0,
	@Limit bigint = 0,
	@OrderBy varchar(50) = null,
	@ColumName varchar(50) = null
AS
BEGIN
	SET NOCOUNT ON;
	Declare @TotalRecords bigint = 0;

	SET @TotalRecords = (
		select count(E.Id) from Employee E
		left join
		MasterDepartment MD ON MD.Id = E.DepartmentId 
		where
		(
			isnull(@Search,'')='' OR
			(lower(E.[Name]) like '%'+lower(@Search)+'%')
			OR
			(lower(E.Email) like '%'+lower(@Search)+'%')
			OR
			(lower(E.BirthDate) like '%'+lower(@Search)+'%')
			OR
			(lower(E.JoiningDate) like '%'+lower(@Search)+'%')
			OR
			(lower(E.Salary) like '%'+lower(@Search)+'%')
			OR
			(lower(MD.[Name]) like '%'+lower(@Search)+'%')
		)
		and
		IsDeleted = 0
	)

	If @Limit = 0
	begin
		SET @Limit = @TotalRecords
	end

	select 
		E.Id,
		E.[Name],
		E.Email,
		E.[Password],
		E.BirthDate,
		(CONVERT(int,ROUND(DATEDIFF(hour,E.BirthDate,GETUTCDATE())/8766.0,0))) AS Age,
		E.JoiningDate,
		E.ProfileImage,
		E.Salary,
		E.DepartmentId,
		MD.[Name] as DepartmentName,
		E.IsDeleted,
		E.DeletedAt,
		E.CreatedAt,
		E.UpdatedAt
	from 
		Employee E
		left join
		MasterDepartment MD ON MD.Id = E.DepartmentId 
	where
	(
		isnull(@Search,'')='' OR
		(lower(E.[Name]) like '%'+lower(@Search)+'%')
		OR
		(lower(E.Email) like '%'+lower(@Search)+'%')
		OR
		(lower(E.BirthDate) like '%'+lower(@Search)+'%')
		OR
		(lower(E.JoiningDate) like '%'+lower(@Search)+'%')
		OR
		(lower(E.Salary) like '%'+lower(@Search)+'%')
		OR
		(lower(MD.[Name]) like '%'+lower(@Search)+'%')
	)
	and
	IsDeleted = 0

	Order By 
	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'Id'  THEN E.Id END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'Id'  THEN E.Id END DESC,

	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'Name'  THEN E.[Name] END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'Name'  THEN E.[Name] END DESC,

	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'Email'  THEN E.Email END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'Email'  THEN E.Email END DESC,

	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'BirthDate'  THEN E.BirthDate END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'BirthDate'  THEN E.BirthDate END DESC,

	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'JoiningDate'  THEN E.JoiningDate END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'JoiningDate'  THEN E.JoiningDate END DESC,

	  CASE WHEN @OrderBy = 'asc' and @ColumName = 'Salary'  THEN E.Salary END ASC,
	  CASE WHEN @OrderBy = 'desc' and @ColumName = 'Salary'  THEN E.Salary END DESC


	OFFSET @Offset rows fetch next @Limit rows only

	select @TotalRecords as TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[Employee_Upsert]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec Employee_Upsert 0,'Amipara Kartik','amiparakartik@gmail.com','123','07/05/2022','01/02/2021','NO','34000',1
CREATE PROCEDURE [dbo].[Employee_Upsert]
	@Id int = 0,
	@Name varchar(500) = null,
	@Email varchar(max) = null,
	@Password varchar(50) = null,
	@BirthDate varchar(50) = null,
	@JoiningDate varchar(50) = null,
	@ProfileImage varchar(max) = null,
	@Salary decimal(18,2) = null,
	@DepartmentId int = 0
AS
BEGIN
	SET NOCOUNT ON;
	Declare @Message varchar(max) = null,@Code bigint = 0

	if @Id = 0
	begin
		if (select count(Id) from Employee where Email = @Email) > 0
		begin
			SET @Id = 0
			SET @Code = 400
			SET @Message = 'Email is already exit please try other email !'
		end
		else if (@ProfileImage is null or @ProfileImage = '') and @Id = 0
		begin
			SET @Id = 0
			SET @Code = 400
			SET @Message = 'Profile image is required'
		end
		else
		begin
			insert into Employee 
			(
				Name,
				Email,
				Password,
				BirthDate,
				JoiningDate,
				ProfileImage,
				Salary,
				DepartmentId,
				IsDeleted,
				CreatedAt
			) 
			values
			(
				@Name,
				@Email,
				@Password,
				@BirthDate,
				@JoiningDate,
				@ProfileImage,
				@Salary,
				@DepartmentId,
				0,
				getutcdate()
			)

			SET @Id = SCOPE_IDENTITY();
			SET @Code = 200
			SET @Message = 'Employee created successfully'
		end
	end
	else if @Id > 0
	begin
		if (select count(Id) from Employee where Email = @Email and Id != @Id) > 0
		begin
			SET @Code = 400
			SET @Message = 'Email is already exit please try other email !'
		end
		else
		begin
			update Employee set
				Name = isnull(@Name,Name),
				Email = isnull(@Email,Email),
				Password = isnull(@Password,Password),
				BirthDate = isnull(@BirthDate,BirthDate),
				JoiningDate = isnull(@JoiningDate,JoiningDate),
				ProfileImage = isnull(@ProfileImage,ProfileImage),
				Salary = isnull(@Salary,Salary),
				DepartmentId = @DepartmentId,
				UpdatedAt = getutcdate()
			where 
			Id = @Id

			SET @Code = 200
			SET @Message = 'Employee updated successfully'
		end
	end
    
	select @Code as Code,@Message as Message
	select * from Employee where Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[MasterDepartment_SelectAll]    Script Date: 24-12-2022 20:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- exec MasterDepartment_SelectAll
CREATE PROCEDURE [dbo].[MasterDepartment_SelectAll]
AS
BEGIN
	SET NOCOUNT ON;
	Declare @TotalRecords bigint = 0;

	SET @TotalRecords = (select count(Id) from MasterDepartment)

	select * from MasterDepartment Order By Id desc

	select @TotalRecords as TotalRecords
END
GO
