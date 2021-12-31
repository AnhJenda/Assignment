if exists (select * from sys.databases where name = 'Assignment2')
	drop database Assignment2
create database Assignment2
use Assignment2

-- Tạo bảng lưu tên các hãng sản xuất
create table Manufacturer (
	ManufacturerID int primary key,
	ManufacturerName nvarchar(250) not null,
	Address nvarchar(400),
	Tel varchar(40)
)

-- Tạo bảng lưu các sản phẩm
create table Product (
	ProductID int primary key,
	ProductName nvarchar(300) not null,
	Status nvarchar(500),
	Unit nvarchar(50),
	Price money,
	CurrentQuantity int,
	ManufacturerID int foreign key references Manufacturer(ManufacturerID)
)

-- Thêm các dữ liệu vào bảng
Insert into Manufacturer (ManufacturerID, ManufacturerName, Address, Tel)
	values
		(),
		(),
		()