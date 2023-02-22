create database PSMS
go

use PSMS
go




create table PlantTypes
(
	ID int identity primary key ,
	PlantType nvarchar(50) not null
)
go

select* from PlantTypes
go


   
   
   insert into PlantTypes values
   ('flower plant'),
   ('fruit plant')
   go



create table  SeasonPlant

(
	S_ID int identity primary key not null,
	PlantBySeason nvarchar(50) not null
)

go

select * from SeasonPlant
go

create table Plants
(
	P_ID int identity primary key ,
	PlantName nvarchar(50) not null,
	ID int references PlantTypes(ID) not null,
	S_ID int references SeasonPlant(S_ID) not null,
	Quantity_pc nvarchar(50)not null,

	P_Price Money not null,
	IsAvaible bit  null,
	picture nvarchar(200) not null

)
go

 select * from Plants  
-- inner join  PlantTypes t on p.ID=t.ID
-- inner join  se
--go
 
 select * from Plants
go

  
   create table customer
   (
	c_ID INT IDENTITY PRIMARY KEY,
	 customerName nvarchar(100) not null,
	 Contact nvarchar(50) not null,
	  Email nvarchar(50)not null,
      DeliveryLocation nvarchar(20) not null
   )

    
	select * from customer
go



create table  OrderInfo
(
	 id int identity primary key ,
	  P_ID int references Plants(P_ID) not null,
	 typeId int references PlantTypes(ID) not null,
	 ProductPrice nvarchar(100) not null,
     DeliveryLocation nvarchar(20) not null,
	 OrderDate date not null,


)

go

  select*from OrderInfo
  go



create table  ordersInfor
(
	orderid int identity primary key ,
	PlantName nvarchar(50) not null,
	PlantType nvarchar(50) not null,
	Quantity nvarchar(50)not null,
	Price Money not null,
	 DeliveryLocation nvarchar(20) not null,
	OrderDate date not null,

)
select*from ordersInfor
  go



  
 create table OrdersDetail
 (
   order_id  int identity primary key,
   --Payment nvarchar (60) not null,
   OrderDate date not null,
   P_ID int references Plants(P_ID)NOT NULL,
   c_ID int references customer(c_ID)NOT NULL

 )
 select * from OrdersDetail
go









