if object_id('db') is not null
	drop database db
go
	create database db
go
	use db
go
	create table Account(
		Username varchar(32) primary key,
		Password varchar(32) /*not*/ null,
		role bit /*not*/ null
	);
go
	create table Employee(
		EmpID varchar(10) primary key,	
		Name nvarchar(200) /*not*/ null,
		Gender bit /*not*/ null,
		Address nvarchar(500) /*not*/ null,
		Email varchar(101) /*not*/ null,
		Phone varchar(11) /*not*/ null,
		Birthday datetime /*not*/ null,
		Salary float /*not*/ null,
		startDay datetime /*not*/ null,
		endDay datetime null,
		Image varchar(200) null,
		AccountID varchar(32) null unique foreign key references Account(Username)
	);
go
	create table ProductType(
		TypeID int identity primary key,
		TypeName nvarchar(200) /*not*/ null,
		Describe nvarchar(1000) null
		

	);
go
	create table Producer(
		ProducerID int identity primary key,
		ProducerName nvarchar(100) /*not*/ null,
		Image varchar(100) null,--NEW
	)
go
	create table Product(
		ProductID varchar(30) primary key,
		ProductName nvarchar(200) /*not*/ null,
		Price float /*not*/ null,
		Quantity int /*not*/ null,
		productDAY datetime null,--NEW
		Describe nvarchar(1000) null,
		Status bit /*not*/ null,
		Image varchar(100) null,
		TypeID int /*not*/ null foreign key references ProductType(TypeID),
		ProducerID int /*not*/ null foreign key references Producer(ProducerID)
	);

go
	create table Customer(
		Username varchar(32) primary key,
		Password varchar(32) /*not*/ null,
		Fullname nvarchar(200) /*not*/ null,
		Gender bit /*not*/ null,
		Birthday datetime /*not*/ null,
		Phone varchar(11) /*not*/ null,
		Address nvarchar(500)/*not*/ null,
		Email varchar(101) /*not*/ null
		
	);
go 
	create table Orders(
		OrderID int identity primary key,
		OrderDay datetime /*not*/ null,
		Describe nvarchar(1000) /*not*/ null,
		Status bit /*not*/ null,
		CustomerID varchar(32) null foreign key references Customer(Username)
	)
go
	create table OrderDetails(
		ProductID varchar(30) foreign key references Product(ProductID),
		OrderID int foreign key references Orders(OrderID),
		Quantity int /*not*/ null,
		constraint pk_OrderDetails primary key (ProductID,OrderID)
		
	)








