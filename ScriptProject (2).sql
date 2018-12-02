Use[SELAB]
GO
CREATE TABLE dbo.RegisteredUser
(
R_ID int IDENTITY(1,1) NOT NULL PRIMARY KEY,
R_Email nvarchar(256) NOT NULL,
R_Name nvarchar(256) NOT NULL,
R_Gender nvarchar (256) NOT NULL,
R_BloodGroup nvarchar (256) NOT NULL,
R_Contact nvarchar (256) NOT NULL,
R_Dateofbirth datetime NOT NULL,
R_City nvarchar(256) NOT NULL,
R_Address nvarchar (256) NOT NULL,
R_AddedOn datetime NOT NULL,
R_Password nvarchar (256) NOT NULL,
CONSTRAINT UserEmail UNIQUE(R_Email),
CONSTRAINT UserPassword UNIQUE(R_Password),
CONSTRAINT UserContact UNIQUE(R_Contact),
FK_R_ID nvarchar(128) UNIQUE FOREIGN KEY REFERENCES dbo.AspNetUsers(Id) NOT NULL,
);
GO
CREATE TABLE dbo.Donor
(
D_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
D_NoDonations int NULL,
D_candonate nvarchar NULL,
FK_donor_ID nvarchar(128) UNIQUE FOREIGN KEY REFERENCES dbo.AspNetUsers(Id) NOT NULL,
);
GO
CREATE TABLE dbo.Donation
(
DonationsID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Donatdate datetime NOT NULL,
Place nvarchar (256) NOT NULL,
FK_Donation_ID nvarchar(128) FOREIGN KEY REFERENCES dbo.AspNetUsers(Id) NOT NULL,
);
GO
CREATE TABLE [dbo].[GoogleMap](  
    [ID] [int] IDENTITY(1,1) NOT NULL,  
    [CityName] [nvarchar](50) NULL,  
    [Latitude] [numeric](18, 0) NULL,  
    [Longitude] [numeric](18, 0) NULL,  
    [Description] [nvarchar](100) NULL,  
 CONSTRAINT [PK_GoogleMap] PRIMARY KEY CLUSTERED   
(  
    [ID] ASC  
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
) ON [PRIMARY]  
  
GO  
  
CREATE procedure [dbo].[spAddNewLocation]  
(  
@CityName nvarchar(50),  
@Latitude numeric(18, 0),  
@Longitude numeric(18, 0),  
@Description nvarchar(100)  
)  
as  
begin  
insert into [dbo].[GoogleMap](CityName,Latitude,Longitude,Description)  
values(@CityName,@Latitude,@Longitude,@Description)  
end  
GO
CREATE procedure [dbo].[spGetMap]  
as  
begin  
select CityName,Latitude,Longitude,Description from [dbo].[GoogleMap]  
end  
GO
CREATE TABLE dbo.PostRequest
(
Request_ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Name nvarchar(50) NOT NULL,
Contact nvarchar (256) NOT NULL,
BloodGroup nvarchar (256) NOT NULL,
Address nvarchar(Max) NOT NULL,
Status nvarchar(50) NOT NULL,
FK_ID nvarchar(128) FOREIGN KEY REFERENCES dbo.AspNetUsers(Id) NOT NULL,
);
GO
CREATE TABLE dbo.Feedback
(
ID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
Name nvarchar(50) NOT NULL,
Email nvarchar (256) NOT NULL,
Message nvarchar (256) NOT NULL,
FK_ID nvarchar(128) FOREIGN KEY REFERENCES dbo.AspNetUsers(Id) NOT NULL,
);
GO
