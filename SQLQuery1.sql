create database Course
use Course

create table Users(
	[Id] int,
	[Name] nvarchar(20),
	[Surname] nvarchar(20),
	[Age] int,
	[Email] nvarchar(30),
	[Address] nvarchar(40),
	[IsDeleted] bit default 0
)
create table Educations(
	[Id] int,
	[Name] nvarchar(20)
)
create table Teachers(
	[Id] int,
	[FullName] nvarchar(40),
	[Age] int,
	[Email] nvarchar(30),
	[Address] nvarchar(40),
	[IsDeleted] bit default 0	
)

insert into Users([Id],[Name],[Surname],[Age],[Email],[Address],[IsDeleted])
values
(1,'Mahir','Safarov', 20,'mahirsafarovv@gmail.com', 'Nesimi ray', 0),
(2,'Musa','Afandiyev', 19 ,'musa@gmail.com', 'Ehemdli ray', 0),
(3,'Murad','Hasanov', 20,'murad@gmail.com', 'NZS', 0),
(4,'Ramil','Allahverdiyev', 26,'ramil@gmail.com', 'Balaxani', 0),
(5,'Resul','Hasanzade', 20,'resul@gmail.com', 'Nerimanov', 0),
(6,'Novreste','Aslanzade', 20,'nana@gmail.com', '28 may', 0),
(7,'Gultac','Cafarova', 20,'gultac@gmail.com', '20 yanvar', 0),
(8,'Nicat','Novruzzade', 20,'nicat@gmail.com', 'Hezi Aslanov', 0)
insert into Educations([Id],[Name])
values
(1,'programming'),
(2,'Design'),
(3,'CyberSecurity')

insert into Teachers([Id],[FullName],[Age],[Email],[Address],[IsDeleted])
values
(1,'Cavid Bashirov', 29, 'bashirov@gmail.com', 'Ehmedli', 0),
(2,'Fatime Bayramova', 20, 'fatima@gmail.com', 'Genclik', 0)

--Task1
select * from Users


--Task2
select *from Users
where [Age] < 20


--Task3
select COUNT(*) from Users


--Task4
select [FullName],[Age],[Address] from Teachers 
where [IsDeleted] = 1


--Task5
select COUNT(*) from Teachers 
where [Age] > 30