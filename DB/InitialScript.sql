IF EXISTS(SELECT name FROM sysobjects WHERE name = N'Configuration' AND xtype='U')
	DROP TABLE Configuration
CREATE TABLE Configuration(
	ConfigurationId		INT IDENTITY PRIMARY KEY,
	KeyName				VARCHAR(100),
	Value				VARCHAR(300)
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'Donut' AND xtype='U')
	DROP TABLE Donut
CREATE TABLE Donut(
	DonutId				INT IDENTITY PRIMARY KEY,
	Name				VARCHAR(100) NOT NULL,
	Description			VARCHAR(800),
	Image				VARCHAR(800),
	IsActive			BIT
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'DonutPreference' AND xtype='U')
	DROP TABLE DonutPreference
CREATE TABLE DonutPreference(
	DonutPreferenceId	INT IDENTITY PRIMARY KEY,
	UserId				INT NOT NULL,
	DonutId				INT NOT NULL,
	OrderNum			INT NOT NULL
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'DonutPreference' AND xtype='U')
	DROP TABLE DonutPreference
CREATE TABLE DonutPreference(
	DonutPreferenceId	INT IDENTITY PRIMARY KEY,
	UserId				INT NOT NULL,
	DonutId				INT NOT NULL,
	OrderNum			INT NOT NULL
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'Holiday' AND xtype='U')
	DROP TABLE Holiday
CREATE TABLE Holiday(
	HolidayId			INT IDENTITY PRIMARY KEY,
	Day					DATETIME,
	IsActive			BIT,
	CreatedDate			DATETIME,
	ModifiedDate		DATETIME
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'Role' AND xtype='U')
	DROP TABLE Role
CREATE TABLE Role(
	RoleId				INT IDENTITY PRIMARY KEY,
	RoleName			VARCHAR(100)
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'User' AND xtype='U')
	DROP TABLE [User]
CREATE TABLE [User](
	UserId				INT IDENTITY PRIMARY KEY,
	UserName			VARCHAR(100) NOT NULL,
	Password			VARCHAR(300) NOT NULL,
	Email				VARCHAR(100) NOT NULL,
	Name				VARCHAR(100),
	CreatedDate			DATETIME,
	ModifiedDate		DATETIME,
	RoleId				INT,
	IsActive			BIT
)
GO
IF EXISTS(SELECT name FROM sysobjects WHERE name = N'UserOrder' AND xtype='U')
	DROP TABLE UserOrder
CREATE TABLE UserOrder(
	UserId				INT NOT NULL,
	OrderNum			INT NOT NULL
)