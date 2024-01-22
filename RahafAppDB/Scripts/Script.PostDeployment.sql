/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
if not exists (select 1 from dbo.OccasionTypes)
begin
    insert into dbo.OccasionTypes (Title, Description, Price)
	values	('Wedding', 'Wedding Bride', 3000),
		   ('Engagement', 'Engagement Bride', 2000),
		   ('Soiree', 'Occasion Guest', 5000);
end

if not exists (select 1 from dbo.Clients)
begin
	insert into dbo.Clients (FirstName, LastName, PhoneNumber)
	values ('Rahaf', 'Bakr', '+20555555555'),
		   ('Sara', 'Ahmed', '+20555555555'),
		   ('Nora', 'Alaa', '+20555555555');
end

if not exists (select 1 from dbo.Occasions)
begin
	declare @OccasionId1 int;
	declare @OccasionId2 int;
	declare @OccasionId3 int;
	select @OccasionId1 = Id from dbo.OccasionTypes where Title = 'Wedding';
	select @OccasionId2 = Id from dbo.OccasionTypes where Title = 'Engagement';
	select @OccasionId3 = Id from dbo.OccasionTypes where Title = 'Soiree';
	insert into dbo.Occasions (OccasionTypeId, OccasionDate)
	values (@OccasionId1, '2024-01-01'),
		   (@OccasionId2, '2024-01-02'),
		   (@OccasionId3, '2024-01-03');
end