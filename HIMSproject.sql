Use master
GO
Create Database HIMS
Go
Use HIMS
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRights](
	[AccessRightID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[FunctionalityID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AccessRightID] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admission](
	[AdmissionId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCategoryID] [int] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[UnitId] [int] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[AdmissionDate] [datetime] NOT NULL,
	[IPDNumber] [bigint] NOT NULL,
	[RelativeName] [nvarchar](200) NULL,
	[RelationId] [int] NULL,
	[BedId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[IsMLC] [bit] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	CONSTRAINT [PK__Admissio__C97EEC427DFE4C43] PRIMARY KEY CLUSTERED 
	(
		[AdmissionId] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advance](
	[AdvanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[AdvAmount] [numeric](18, 2) NULL,
	[Used] [numeric](18, 2) NULL,
	[Refund] [numeric](18, 2) NULL,
	[Balance] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
	PRIMARY KEY CLUSTERED 
	(
		[AdvanceId] ASC
	) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationFunctionality](
	[FunctionalityID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Level] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FunctionalityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bed](
	[BedId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__BedId__A8A7104054C04A45] PRIMARY KEY CLUSTERED 
(
	[BedId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillId] [bigint] IDENTITY(1,1) NOT NULL,
	[BillDateTime] [datetime] NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[TotalAmount] [numeric](18, 2) NULL,
	[AdvanceAmount] [numeric](18, 2) NULL,
	[Concession] [numeric](18, 2) NULL,
	[FinalBillAmount] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Bill__11F2FC6A9060F41C] PRIMARY KEY CLUSTERED 
(
	[BillId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Charge](
	[ChargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitId] [bigint] NULL,
	[AdmissionId] [bigint] NULL,
	[ServiceId] [bigint] NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [numeric](18, 2) NOT NULL,
	[Concession] [numeric](18, 2) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Charge__17FC361B131A7AE4] PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StateID] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__City__F2D21A96E551186A] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NationalityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Country__10D160BF12515864] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsClinical] [bit] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Departme__BF50FAFB2901D316] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discharge](
	[DischargeId] [bigint] IDENTITY(1,1) NOT NULL,
	[AdmissionId] [bigint] NOT NULL,
	[DoctorId] [bigint] NOT NULL,
	[DischargeDate] [datetime] NOT NULL,
	[DischargeNotes] [nvarchar](2000) NULL,
	[FileAttachedPath] [nvarchar](500) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Discharg__CBC0800799D57BD3] PRIMARY KEY CLUSTERED 
(
	[DischargeId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[Qualification] [nvarchar](150) NULL,
	[GenderID] [int] NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Doctor__2DC00EDF448A8A51] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Gender__4E24E81738FADBDD] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCompany](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[NationalityID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__National__F628E7A4F44C1021] PRIMARY KEY CLUSTERED 
(
	[NationalityID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[PatientID] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[GenderID] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatientCategory](
	[PatientCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__PatientC__F659E81CA9686ED9] PRIMARY KEY CLUSTERED 
(
	[PatientCategoryID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relation](
	[RelationID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Relation__E2DA1695492E1EFE] PRIMARY KEY CLUSTERED 
(
	[RelationID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[WardID] [int] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Room__32863939FACFA302] PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[ServiceCategoryId] [int] NOT NULL,
	[Rate] [numeric](18, 2) NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
	[CompanyId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Service__C51BB00A08435475] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceCategory](
	[ServiceCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__ServiceC__E4CC7EAA0B2769CC] PRIMARY KEY CLUSTERED 
(
	[ServiceCategoryId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[ServiceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceTypeID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [bigint] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[FirstName] [nvarchar](150) NOT NULL,
	[MiddleName] [nvarchar](150) NULL,
	[LastName] [nvarchar](150) NOT NULL,
	[GenderID] [int] NOT NULL,
	[DateOfBirth] [date] NULL,
	[ContactNo1] [nvarchar](15) NULL,
	[ContactNo2] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[AddressLine1] [nvarchar](150) NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[Pincode] [nvarchar](10) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Staff__96D4AAF72C6A8DDE] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryID] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__State__C3BA3B5A33A88EFB] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Unit__44F5EC95BCB1E006] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[StaffID] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__User__1788CCACE974F580] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visit](
	[VisitId] [bigint] IDENTITY(1,1) NOT NULL,
	[PatientCategoryID] [int] NOT NULL,
	[PatientId] [bigint] NOT NULL,
	[DoctorID] [bigint] NOT NULL,
	[UnitId] [int] NOT NULL,
	[VisitDate] [datetime] NOT NULL,
	[OPDNumber] [bigint] NOT NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Visit__4D3AA1DE33E909FD] PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
) 
) 
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[WardID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitId] [int] NULL,
	[Status] [bit] NULL,
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL,
 CONSTRAINT [PK__Ward__C6BD9BEA33313C46] PRIMARY KEY CLUSTERED 
(
	[WardID] ASC
) 
) 
GO
CREATE TABLE [dbo].[Prescription](
	[PrescriptionId] [bigint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[VisitId] [bigint] NOT NULL,
	[Path] Varchar(500),
	[Status] [bit] NULL DEFAULT (1),
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL DEFAULT (getdate()),
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL DEFAULT (getdate())
)
ALTER TABLE [dbo].[Prescription]  ADD CONSTRAINT [FK_Prescription_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
CREATE TABLE [dbo].[ClinicalNote](
	[ClinicalNoteId] [bigint] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[AdmissionId] [bigint] NOT NULL,
	[Path] Varchar(500),
	[Status] [bit] NULL DEFAULT (1),
	[AddedBy] [int] NULL,
	[AddedDateTime] [datetime] NULL DEFAULT (getdate()),
	[UpdatedBy] [bigint] NULL,
	[UpdatedDateTime] [datetime] NULL DEFAULT (getdate())
)
ALTER TABLE [dbo].[ClinicalNote]  ADD CONSTRAINT [FK_ClinicalNote_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[AccessRights] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Admis__18B6AB08]  DEFAULT (getdate()) FOR [AdmissionDate]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Statu__19AACF41]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Added__1A9EF37A]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF__Admission__Updat__1B9317B3]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Advance] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ApplicationFunctionality] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__Status__0EF836A4]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__AddedDate__0FEC5ADD]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Bed] ADD  CONSTRAINT [DF__BedId__UpdatedDa__10E07F16]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__BillDateTi__29E1370A]  DEFAULT (getdate()) FOR [BillDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__Status__2AD55B43]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__AddedDateT__2BC97F7C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__UpdatedDat__2CBDA3B5]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__Status__2F9A1060]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__AddedDat__308E3499]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Charge] ADD  CONSTRAINT [DF__Charge__UpdatedD__318258D2]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__Status__02FC7413]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__AddedDateT__03F0984C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF__City__UpdatedDat__04E4BC85]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__Status__71D1E811]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__AddedDa__72C60C4A]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF__Country__Updated__73BA3083]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Statu__1F98B2C1]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Added__208CD6FA]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF__Departmen__Updat__2180FB33]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Disch__22401542]  DEFAULT (getdate()) FOR [DischargeDate]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Statu__2334397B]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Added__24285DB4]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Discharge] ADD  CONSTRAINT [DF__Discharge__Updat__251C81ED]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__Status__2739D489]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__AddedDat__282DF8C2]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Doctor] ADD  CONSTRAINT [DF__Doctor__UpdatedD__29221CFB]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__Status__4BAC3F29]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__AddedDat__4CA06362]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF__Gender__UpdatedD__4D94879B]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[InsuranceCompany] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Statu__5070F446]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Added__5165187F]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Nationality] ADD  CONSTRAINT [DF__Nationali__Updat__52593CB8]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Patient] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Statu__46E78A0C]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Added__47DBAE45]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[PatientCategory] ADD  CONSTRAINT [DF__PatientCa__Updat__48CFD27E]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__Status__13F1F5EB]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__AddedD__14E61A24]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Relation] ADD  CONSTRAINT [DF__Relation__Update__15DA3E5D]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__Status__0A338187]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__AddedDateT__0B27A5C0]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Room] ADD  CONSTRAINT [DF__Room__UpdatedDat__0C1BC9F9]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__Status__57DD0BE4]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__AddedDa__58D1301D]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Service] ADD  CONSTRAINT [DF__Service__Updated__59C55456]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Statu__531856C7]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Added__540C7B00]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ServiceCategory] ADD  CONSTRAINT [DF__ServiceCa__Updat__55009F39]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[ServiceType] ADD  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__Status__3F115E1A]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__AddedDate__40058253]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [DF__Staff__UpdatedDa__40F9A68C]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__Status__6383C8BA]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__AddedDate__6477ECF3]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF__State__UpdatedDa__656C112C]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__Status__5535A963]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__AddedDateT__5629CD9C]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Unit] ADD  CONSTRAINT [DF__Unit__UpdatedDat__571DF1D5]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__Status__45BE5BA9]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__AddedDateT__46B27FE2]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__UpdatedDat__47A6A41B]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__VisitDate__607251E5]  DEFAULT (getdate()) FOR [VisitDate]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__Status__6166761E]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__AddedDate__625A9A57]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Visit] ADD  CONSTRAINT [DF__Visit__UpdatedDa__634EBE90]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__Status__056ECC6A]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__AddedDateT__0662F0A3]  DEFAULT (getdate()) FOR [AddedDateTime]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF__Ward__UpdatedDat__075714DC]  DEFAULT (getdate()) FOR [UpdatedDateTime]
GO
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_ApplicationFunctionality] FOREIGN KEY([FunctionalityID])
REFERENCES [dbo].[ApplicationFunctionality] ([FunctionalityID])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_ApplicationFunctionality]
GO
ALTER TABLE [dbo].[AccessRights]  WITH CHECK ADD  CONSTRAINT [FK_AccessRights_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[AccessRights] CHECK CONSTRAINT [FK_AccessRights_User]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_BedId] FOREIGN KEY([BedId])
REFERENCES [dbo].[Bed] ([BedId])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_BedId]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Doctor]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_InsuranceCompany] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[InsuranceCompany] ([CompanyId])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_InsuranceCompany]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Patient]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_PatientCategory] FOREIGN KEY([PatientCategoryID])
REFERENCES [dbo].[PatientCategory] ([PatientCategoryID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_PatientCategory]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Relation] FOREIGN KEY([RelationId])
REFERENCES [dbo].[Relation] ([RelationID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Relation]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admission_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admission_Unit]
GO
ALTER TABLE [dbo].[Advance]  WITH CHECK ADD  CONSTRAINT [FK_Advance_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Advance] CHECK CONSTRAINT [FK_Advance_Patient]
GO
ALTER TABLE [dbo].[Bed]  WITH CHECK ADD  CONSTRAINT [FK_BedId_Room] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Room] ([RoomId])
GO
ALTER TABLE [dbo].[Bed] CHECK CONSTRAINT [FK_BedId_Room]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Admission1] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Admission1]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Visit]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Admission]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Service]
GO
ALTER TABLE [dbo].[Charge]  WITH CHECK ADD  CONSTRAINT [FK_Charge_Visit] FOREIGN KEY([VisitId])
REFERENCES [dbo].[Visit] ([VisitId])
GO
ALTER TABLE [dbo].[Charge] CHECK CONSTRAINT [FK_Charge_Visit]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_State] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([StateID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_State]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Nationality] FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Nationality] ([NationalityID])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Nationality]
GO
ALTER TABLE [dbo].[Discharge]  WITH CHECK ADD  CONSTRAINT [FK_Discharge_Admission] FOREIGN KEY([AdmissionId])
REFERENCES [dbo].[Admission] ([AdmissionId])
GO
ALTER TABLE [dbo].[Discharge] CHECK CONSTRAINT [FK_Discharge_Admission]
GO
ALTER TABLE [dbo].[Discharge]  WITH CHECK ADD  CONSTRAINT [FK_Discharge_Doctor] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Discharge] CHECK CONSTRAINT [FK_Discharge_Doctor]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_City]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Department]
GO
ALTER TABLE [dbo].[Doctor]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Doctor] CHECK CONSTRAINT [FK_Doctor_Gender]
GO
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_City]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Gender]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Ward] FOREIGN KEY([WardID])
REFERENCES [dbo].[Ward] ([WardID])
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Ward]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_InsuranceCompany] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[InsuranceCompany] ([CompanyId])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_InsuranceCompany]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_Service_ServiceCategory] FOREIGN KEY([ServiceCategoryId])
REFERENCES [dbo].[ServiceCategory] ([ServiceCategoryId])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_Service_ServiceCategory]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_City] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_City]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Department]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([GenderID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Gender]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Staff]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Doctor] FOREIGN KEY([DoctorID])
REFERENCES [dbo].[Doctor] ([DoctorID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Doctor]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Patient] FOREIGN KEY([PatientId])
REFERENCES [dbo].[Patient] ([PatientID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Patient]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_PatientCategory] FOREIGN KEY([PatientCategoryID])
REFERENCES [dbo].[PatientCategory] ([PatientCategoryID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_PatientCategory]
GO
ALTER TABLE [dbo].[Visit]  WITH CHECK ADD  CONSTRAINT [FK_Visit_Unit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Visit] CHECK CONSTRAINT [FK_Visit_Unit]
GO
Create View View_ServiceDetails
AS
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from Service S
Inner Join ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Inner Join ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
Go
Create View View_Patient
AS
Select [PatientID]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Patient P
Inner Join Gender g
On P.GenderID=g.GenderID
Inner Join City C
On P.CityID=C.CityID
Go
Create View View_Doctor
AS
Select DoctorID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,Qualification
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Doctor d
Inner Join Gender g
On d.GenderID=g.GenderID
Inner Join City C
On d.CityID=C.CityID
Inner Join Department dp
On d.DepartmentID=dp.DepartmentID
GO
Create View View_Staff
AS
Select StaffID
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,dp.Name AS Department
      ,g.Name As Gender
      ,[DateOfBirth]
      ,[ContactNo1]
      ,[ContactNo2]
      ,[Email]
      ,[AddressLine1]
      ,[AddressLine2]
      ,[Pincode]
	  ,C.Name As City
	  from Staff s
Inner Join Gender g
On s.GenderID=g.GenderID
Inner Join City C
On s.CityID=C.CityID
Inner Join Department dp
On s.DepartmentID=dp.DepartmentID





SET NOCOUNT ON
Print 'Master Data Insert'
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Company',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('Staff',1,1)
Insert Into PatientCategory(Name,AddedBy,UpdatedBy) Values ('StaffDependent',1,1)
GO
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Cardiology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Gynaecology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Medicine',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nephrology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Orthopedic',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Paediatrics',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Neurology',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Surgery',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Dental',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('ENT',1,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Administration',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Reception',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Billing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Store',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Account',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Maintainance',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Bio-Medical',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Computer(IT)',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Nursing',0,1,1)
Insert Into Department(Name,isClinical,AddedBy,UpdatedBy) Values ('Pharmacy',0,1,1)
GO
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Male',1,1)
Insert Into Gender(Name,AddedBy,UpdatedBy) Values ('Female',1,1)
GO
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Star Health',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Vidal Healthcare',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Aditya Birla',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('HDFC Ergo',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('ICICI Lombard',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('The oriental Insurance company',1,1)
Insert Into InsuranceCompany(Name,AddedBy,UpdatedBy) Values ('Care Health Insurance',1,1)
GO
Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Self',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Spouse',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Child',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Friend',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Mother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Son',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Daughter',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Sister In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Brother In Law',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Father',1,1)
Insert Into Relation(Name,AddedBy,UpdatedBy) Values ('Grand Mother',1,1)
GO
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Cardiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Gynaecology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Medicine',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nephrology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Ophthalmology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Orthopedic',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Paediatrics',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Physiotherapy',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Neurology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Surgery',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Dental',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('ENT',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Pathology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Radiology',1,1)
Insert Into ServiceCategory(Name,AddedBy,UpdatedBy) Values ('Nursing',1,1)
GO
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 1',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 2',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 3',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 4',1,1)
Insert Into Unit(Name,AddedBy,UpdatedBy) Values ('Unit 5',1,1)
GO
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Male Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Female Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('pediatric ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Special Ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Semi Special ward',1,1,1)
Insert Into Ward(Name,UnitId,AddedBy,UpdatedBy) Values ('Geneal Ward II',1,1,1)
GO
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 1',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 2',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 3',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 4',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 5',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 6',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 7',5,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 8',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 9',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 10',6,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 11',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 12',7,1,1)
Insert Into Room(Name,Wardid,AddedBy,UpdatedBy) Values ('Room 13',7,1,1)
GO
--------------Bed
Declare @i INT=1
While (@i<=20)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),1,NULL,1,1)
	--Select  @i
	Set @i=@i+1
END
go
Declare @i INT=1
While (@i<=20)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),2,NULL,1,1)
	--Select  @i
	Set @i=@i+1
END
Go
Declare @i INT=1
While (@i<=5)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),NULL,1,1,1)
	--Select  @i
	Set @i=@i+1
END
go
Declare @i INT=1
While (@i<=5)
BEGIN
	Insert Into Bed(Name,WardId,RoomId,AddedBy,UpdatedBy) Values ('Bed-'+Convert(varchar(5),@i),NULL,2,1,1)
	--Select  @i
	Set @i=@i+1
END
GO
Insert Into Nationality(Name,AddedBy,UpdatedBy) Values ('Indian',1,1)
GO
Insert Into Country(Name,NationalityId,AddedBy,UpdatedBy) Values ('India',1,1,1)
GO
Insert Into State(Name,CountryID,AddedBy,UpdatedBy) Values ('maharashtra',1,1,1)
GO
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Pune',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nagpur',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Mumbai',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('Nasik',1,1,1)
Insert Into City(Name,StateID,AddedBy,UpdatedBy) Values ('washim',1,1,1)
GO
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('OPD',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-General',1,1)
Insert Into ServiceType(Name,AddedBy,UpdatedBy) Values ('IPD-Special',1,1)
Go
Print 'Staff Data Insert'
Declare @MinDeptID INT=(Select min(DepartmentId) from Department where IsClinical=0)
Declare @MaxDeptID INT=(Select Max(DepartmentId) from Department where IsClinical=0)

While (@MinDeptID<=@MaxDeptID)
BEGIN
        --Print @MinDeptID
		------------------Internal loop - Department wise Insert Records
		Declare @i INT=1
			While (@i<=10) ------------Per Dept 10 Staff
			BEGIN
	
			INSERT INTO [dbo].[Staff]
					   ([DepartmentID]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastName]
					   ,[GenderID]
					   ,[DateOfBirth]
					   ,[ContactNo1]
					   ,[ContactNo2]
					   ,[Email]
					   ,[AddressLine1]	
					   ,[AddressLine2]
					   ,[Pincode]
					   ,[CityID]
					   ,[AddedBy]           
					   ,[UpdatedBy]
					  )
				 VALUES
					   (@MinDeptID
					   ,'SFname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'SMname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'SLname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)
					   ,(Select Top 1 GenderID from Gender order by NEWID())
					   ,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
					   ,'1234567890'
					   ,'1234567890'
					   ,'SFname'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)+'@gmail.com'      
					   ,'Address Line 1'
					   ,'Address Line 2'
					   ,'123456'
					   ,(Select Top 1 CityId from City order by NEWID())
					   ,1          
					   ,1)
         
				Set @i=@i+1
			END

	Set @MinDeptID=@MinDeptID+1
 END
 --------------------- Doctor
 Print 'Doctor Data Insert' 
GO
Declare @MinDeptID INT=(Select min(DepartmentId) from Department where IsClinical=1)
Declare @MaxDeptID INT=(Select Max(DepartmentId) from Department where IsClinical=1)
While (@MinDeptID<=@MaxDeptID)
BEGIN
        --Print @MinDeptID
		------------------Internal loop - Department wise Insert Records
		Declare @i INT=1
			While (@i<=3) ------------Per Dept 3 Doctors
			BEGIN
	
			INSERT INTO [dbo].[Doctor]
					   ([DepartmentID]
					   ,[FirstName]
					   ,[MiddleName]
					   ,[LastName]
					   ,[Qualification]
					   ,[GenderID]
					   ,[DateOfBirth]
					   ,[ContactNo1]
					   ,[ContactNo2]
					   ,[Email]
					   ,[AddressLine1]	
					   ,[AddressLine2]
					   ,[Pincode]
					   ,[CityID]
					   ,[AddedBy]           
					   ,[UpdatedBy]
					  )
				 VALUES
					   (@MinDeptID
					   ,'Dr.DFname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'DMname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)	
					   ,'DLname-'+Convert(varchar(5),@MinDeptID)+'-'+Convert(varchar(5),@i)
					   ,'MBBS.MD.'
					   ,(Select Top 1 GenderID from Gender order by NEWID())
					   ,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
					   ,'1234567890'
					   ,'1234567890'
					   ,'DFname'+Convert(varchar(5),@MinDeptID)+Convert(varchar(5),@i)+'@gmail.com'      
					   ,'Address Line 1'
					   ,'Address Line 2'
					   ,'123456'
					   ,(Select Top 1 CityId from City order by NEWID())
					   ,1          
					   ,1)
         
				Set @i=@i+1
			END

	Set @MinDeptID=@MinDeptID+1
 END
 GO
 ---------------------------Service OPD
 Print 'Service Data Insert'
Create Table #Temp 
(ID Int Identity(1,1),
ServiceName varchar(200)) 
Insert Into #Temp Values 
('Consulatation')
,('Follow-up Consulatation')
,('Procedure')
,('Operation Charges')
,('Anesthesist Charges')
,('OT Charges')
GO
Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
			------------------Internal loop
			Declare @MinDeptID INT=(Select min(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			Declare @MaxDeptID INT=(Select Max(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			While (@MinDeptID<=@MaxDeptID)
			BEGIN
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,200,1,NULL,1,1)  --ServiceTypeId- OPD
				Set @MinDeptID=@MinDeptID+1
			 END
		Set @i=@i+1
 END
 GO
  ------------------------Service IPD 
  Truncate Table #temp
Insert Into #Temp Values 
('Bed Charges')
,('Nursing Charges')
,('IPD Visit Charges')
,('Operation Charges')
,('Anesthesist Charges')
,('OT Charges')
,('O2 Charges')
,('Procedure')

--Select * from #Temp
--GO

Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
			------------------Internal loop
			Declare @MinDeptID INT=(Select min(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			Declare @MaxDeptID INT=(Select Max(ServiceCategoryId) from ServiceCategory where Name Not In ('Pathology','Radiology','Nursing'))
			While (@MinDeptID<=@MaxDeptID)
			BEGIN
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@MinDeptID,600,3,NULL,1,1)  --ServiceTypeId- IPD Special
				Set @MinDeptID=@MinDeptID+1
			 END
		Set @i=@i+1
 END
-----------------------------------Service Pathology Test
Truncate Table #temp
Insert Into #Temp Values 
('SGOT (AST)')
,('SGPT (ALT)')
,('ALBUMIN')
,('WIDAL')
,('BILLIRUBIN TOTAL')
,('BILLIRUBIN DIRECT')
,('BLOOD GROUP')
,('PERIPHERAL SMEAR')
,('RETICULOCYTE COUNT')
,('TOTAL WBC COUNT')
,('CBC')
,('ZINC (SERUM / URINE)')
,('VITAMIN D 25 HYDROXY')
,('VITAMIN A')
,('UROBILINOGEN (URINE)')
,('BILIRUBIN (URINE)')

GO
Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
		
				 Declare @ServiceCategoryId INT=(Select ServiceCategoryId from ServiceCategory where Name In ('Pathology'))
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,300,1,NULL,1,1)  --ServiceTypeId- OPD
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,500,3,NULL,1,1)  --ServiceTypeId- IPD Special				
		Set @i=@i+1
 END
 
 
----------------------------Service Radiology Test
 Go
Truncate Table #temp
Insert Into #Temp Values 
('X-RAY')
,('CT Scan')
,('Sonography')

Declare @i INT=(Select Min(id) from #Temp)
Declare @ServiceName varchar(200) 
While (@i<=(Select Max(id) from #Temp))
BEGIN
        
		Set @ServiceName=(Select ServiceName From #Temp where ID= @i)
		--Print @ServiceName
			
		
				 Declare @ServiceCategoryId INT=(Select ServiceCategoryId from ServiceCategory where Name In ('Radiology'))
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,300,1,NULL,1,1)  --ServiceTypeId- OPD
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,400,2,NULL,1,1)  --ServiceTypeId- IPD General
				 Insert Into Service (Name,ServiceCategoryId,Rate,ServiceTypeId,CompanyId,AddedBy,UpdatedBy)
				 Values (@ServiceName,@ServiceCategoryId,500,3,NULL,1,1)  --ServiceTypeId- IPD Special				
		Set @i=@i+1
 END
 
----------------------------------Patient
  Print 'Patient Data Insert'
 GO
Declare @i INT=1
While (@i<=50000) 
BEGIN
	
	--print @i
	INSERT INTO [dbo].[Patient]
			([FirstName]
			,[MiddleName]
			,[LastName]
			,[GenderID]
			,[DateOfBirth]
			,[ContactNo1]
			,[ContactNo2]
			,[Email]
			,[AddressLine1]	
			,[AddressLine2]
			,[Pincode]
			,[CityID]
			,[AddedBy]           
			,[UpdatedBy]
			)
		VALUES
			(
			'PFname'+'_'+Convert(varchar(15),@i)	
			,'PMname'+'_'+Convert(varchar(15),@i)	
			,'PLname'+'_'+Convert(varchar(15),@i)
			,(Select Top 1 GenderID from Gender order by NEWID())
			,(Select GETDATE()-10000-( SELECT RAND()*(245-10)+10))
			,'1234567890'
			,'1234567890'
			,'PFname'+Convert(varchar(15),@i)+'@gmail.com'      
			,'Address Line 1'
			,'Address Line 2'
			,'123456'
			,(Select Top 1 CityId from City order by NEWID())
			,1          
			,1)
         
	Set @i=@i+1
END
-------------------------------Visit
  Print 'Visit Data Insert'
GO
Declare @i INT=1
While (@i<=10000)
BEGIN
         --Print @i
		 INSERT INTO [dbo].[Visit]
           ([PatientCategoryID]
           ,[PatientId]
           ,[DoctorID]
           ,[UnitId]
           ,[VisitDate]
           ,[OPDNumber]         
           ,[AddedBy]          
           ,[UpdatedBy]
           )
		VALUES
           ((Select Top 1 PatientCategoryId from PatientCategory order by NEWID())
           ,(Select Top 1 PatientId from Patient order by NEWID())
           ,(Select Top 1 DoctorID from Doctor order by NEWID())
           ,(Select Top 1 UnitId from Unit order by NEWID())
           ,(Select GETDATE()-300-( SELECT RAND()*(245-10)+10))
           ,@i
			,1
			,1	)
		 Set @i=@i+1
 END
 
 ---------------------------OPD First Record Per Visit
   Print 'OPD Charge Data Insert'

Declare @MinVisitId INT=(Select min(VisitId) from Visit)
Declare @MaxVisitId INT=(Select Max(VisitId) from Visit)
While (@MinVisitId<=@MaxVisitId)
BEGIN
        --Print @MinVisitId
		
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (@MinVisitId
           ,NULL
           ,(Select top 1 serviceid from Service where ServiceTypeId=1 order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
       Set @MinVisitId=@MinVisitId+1
 END
  -----------Second record for Visit --2/3 Services for some visit
 Go
Declare @i INT=1
While (@i<=1500)
BEGIN
        --Print @i
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           ((Select top 1 VisitId from Visit order by NEWID())
           ,NULL
           ,(Select top 1 serviceid from Service where ServiceTypeId=1 order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
        Set @i=@i+1
 END
GO 
Update C
Set C.Rate=S.Rate
from Charge C
left join Service S
ON C.ServiceId=S.ServiceId
GO 
Update Charge Set Amount=Rate*Quantity 
GO 
Update Charge Set Concession=(Amount*10)/100       ----10% conession applied
-------------------------------------OPD Bill 
Print 'OPD Bill Data Insert'
Go
INSERT INTO [dbo].[Bill]
           ([VisitId]
           ,[AdmissionId]
           ,[TotalAmount]
		   ,Concession
           ,AddedBy          
           ,UpdatedBy)
Select VisitId,NULL As [AdmissionId],Sum(Amount) As TotalAmount,Sum(Concession) As Concession,1 As AddedBy,1 As UpdatedBy from Charge 
Group By VisitId
order by VisitId

Update Bill Set Concession=(TotalAmount*10)/100 ----10% conession applied
Update Bill Set FinalBillAmount=TotalAmount-Concession
-----------------------------Admission
Print 'Admission Data Insert'
GO
Declare @i INT=1
While (@i<=1000)
BEGIN
         --Print @i
		 INSERT INTO [dbo].Admission
           ([PatientCategoryID]
           ,[PatientId]
		   ,UnitId
           ,[DoctorID]           
           ,[AdmissionDate]
           ,[IPDNumber]
		   ,RelativeName
		   ,RelationId
		   ,BedId
		   ,CompanyId
		   ,IsMLC
           ,[AddedBy]          
           ,[UpdatedBy]
           )
		VALUES
           ((Select Top 1 PatientCategoryId from PatientCategory order by NEWID())
           ,(Select Top 1 PatientId from Patient order by NEWID())
		   ,(Select Top 1 UnitId from Unit order by NEWID())
           ,(Select Top 1 DoctorID from Doctor order by NEWID())           
           ,(Select GETDATE()-300-( SELECT RAND()*(245-10)+10))
           ,@i
		   ,'R Name-'+Convert(varchar(10),@i)
		   ,(Select Top 1 RelationID from Relation order by NEWID())
		   ,(Select Top 1 BedId from Bed order by NEWID())
		   ,(Select Top 1 CompanyId from InsuranceCompany order by NEWID())
		   ,0
		   ,1
		   ,1)
		 Set @i=@i+1
 END
--------------------------IPD -First Record Per Admission
GO
Print 'Admission Charge Data Insert'
Declare @MinAdmitId INT=(Select min(AdmissionId) from Admission)
Declare @MaxAdmitId INT=(Select Max(AdmissionId) from Admission)
While (@MinAdmitId<=@MaxAdmitId)
BEGIN
        --Print @MinAdmitId
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (NULL
           ,@MinAdmitId
           ,(Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
       Set @MinAdmitId=@MinAdmitId+1
 END
 
 
--------------------------IPD -Second Record Per Admission 
Go
Declare @i INT=1
While (@i<=1000)
BEGIN
        --Print @i
		INSERT INTO [dbo].[Charge]
           ([VisitId]
           ,[AdmissionId]
           ,[ServiceId]
		   ,Rate
		   ,Amount
           ,[Quantity]  
		   ,[AddedBy]           
           ,[Updatedby])
		VALUES
           (NULL
           ,(Select top 1 AdmissionId from Admission order by NEWID())
           ,(Select top 1 serviceid from Service where ServiceTypeId in(2,3) order by NEWID())
		   ,0
		   ,0
           ,1
		   ,1
		   ,1
          )
		  
	Set @i=@i+1
 END
 
 Update C
Set C.Rate=S.Rate
from Charge C
left join Service S
ON C.ServiceId=S.ServiceId
where VisitId IS NULL
Update Charge Set Amount=Rate*Quantity where VisitId IS NULL
Update Charge Set Concession=(Amount*10)/100  where VisitId IS NULL       ----10% conession applied
---------------------------------------------Bill 
Print 'Admission Bill Data Insert'
GO
INSERT INTO [dbo].[Bill]
           ([VisitId]
           ,[AdmissionId]
           ,[TotalAmount]
		   ,Concession
           ,AddedBy          
           ,UpdatedBy)
Select NULL AS [VisitId], AdmissionId,Sum(Amount) As TotalAmount,Sum(Concession)As TotalConcession,1 As AddedBy,1 As UpdatedBy from Charge 
where AdmissionId IS NOT NULL
Group By AdmissionId
order by AdmissionId
Update Bill Set FinalBillAmount=TotalAmount-Concession where VisitId IS NULL
GO
-----------------------Discharge 
INSERT INTO [dbo].Discharge
           (
		    [AdmissionId]
           ,DoctorId
		   ,DischargeDate
		   ,[AddedBy]           
           ,[Updatedby]
		   )
Select AdmissionId,DoctorId,AdmissionDate+(SELECT Round(RAND()*(5-10)+10,0)) As DischargeDate,
1 AS AddedBy,1 As UpdatedBy From Admission
GO
--------------------------------ApplicationFunctionality
Print 'ApplicationFunctionality Data Insert'
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Masters',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('IPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('OPD Billing',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Pathology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Radiology',0,1,1)
Insert Into ApplicationFunctionality(Name,Level,AddedBy,UpdatedBy) Values ('Administartion',0,1,1)
GO
------------------USER
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (1,1,1)
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (21,1,1)
Insert Into [User](StaffID,AddedBy,UpdatedBy) Values (22,1,1)
GO
---Admin User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,1,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,4,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,5,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (1,6,1,1)
GO
-----Billing User
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (2,3,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,2,1,1)
Insert Into AccessRights(UserID,FunctionalityID,AddedBy,UpdatedBy) Values (3,3,1,1)
GO
Insert Into [Prescription](VisitId,Path,AddedBy,UpdatedBy) Values (2,'\\RecordRoomServer\Patint\1\OPD\2\Prescription_1.jpg',1,1)
----2 is Visitid in Path 
GO
Insert Into [ClinicalNote](AdmissionId,Path,AddedBy,UpdatedBy) Values (5,'\\RecordRoomServer\Patint\3\IPD\5\Note_5154_1.jpg',1,1)
----5 is AdmissionId in Path 
GO
Drop Table #Temp

 ------Masters
Select * from Department
Select * from Gender
Select * from InsuranceCompany
Select * from Nationality
Select * from PatientCategory
Select * from Relation
Select * from ServiceCategory
Select * from ServiceType
Select * from Unit
Select * from Ward
Select * from Country
Select * from Room
Select * from Service
Select * from Bed
Select * from State
Select * from City
Select * from Doctor
Select * from Patient
Select * from Staff
Select * from Visit
Select * from Admission
Select * from Advance
Select * from Charge
Select * from Bill
Select * from Discharge
Select * from ApplicationFunctionality
Select * from [User]
Select * from AccessRights
Select top 10 * from Admission
Select * from Discharge
------------------OPD---------------------------
Select * from Patient where PatientId=28203 
Select * from Visit where VisitId=4394
Select * from Admission where PatientId=28615
Select * from Charge where VisitId=4394
Select * from Bill  where VisitId=4394
Select * from Discharge
Select * from Advance
-------------------IPD--------------------------
Select * from Patient where PatientId=6396 
Select * from Visit where PatientId=6396 
Select * from Admission where PatientId=6396
Select * from Charge where AdmissionId=11
Select * from Bill  where AdmissionId=11
Select * from Discharge where AdmissionId=11
-----------------Service 
Select ST.Name As ServiceType,SC.Name As ServiceCategory,S.Name As ServiceName,Rate,CompanyId
from Service S
Left Join ServiceCategory SC On S.ServiceCategoryId=SC.ServiceCategoryId
Left Join ServiceType ST On S.[ServiceTypeID]=ST.[ServiceTypeID]
Order by ST.Name