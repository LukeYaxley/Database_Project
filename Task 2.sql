#Customers
Create Table if not exists Customers(
CustomerNumber int primary key not null,
FullName varchar(41) generated always as (concat_ws(" ",FirstName,LastName)),
FirstName Varchar(20) not null,
LastName Varchar(20) not null,
PhoneNo Varchar(15) not null,
AddressLine1 varchar(30) not null,
AddressLine2 varchar(30),
City varchar(10) ,
County varchar(20) not null,
Postcode varchar(7) not null,
Country varchar(60) not null,
SalesAmount int not null,
CreditLimitNumber int not null,
RepresentativeEmployeeNo int not null
);

#Employees
Create Table if not exists Employees(
EmployeeNumber int primary key not null,
FullName varchar(41) generated always as (concat_ws(" ",FirstName,LastName)),
FirstName Varchar(20) not null,
LastName Varchar(20) not null,
Extension Varchar(10) not null,
EmailAddress varchar(30) not null,
OfficeCode int not null,
JobTitle varchar(20) not null,
ReportingTo int 
);

#Orders
Create Table if not exists Orders(
OrderNumber int primary key,
OrderDate date not null,
RequiredDate date not null,
ShippedDate date,
OrderStatus Varchar(10) not null,
Comments varchar(30) ,
CustomerNumber int,
ProductCode int not null,
QuantityOrdered int
);

#Offices
Create Table if not exists Offices(
OfficeCode int primary key not null,
City varchar(10) ,
PhoneNo Varchar(15) not null,
AddressLine1 varchar(30) not null,
AddressLine2 varchar(30),
County varchar(20) not null,
Postcode varchar(7) not null,
Country varchar(60) not null,
Territory varchar(10) not null
);

#Drugs
Create Table if not exists Drugs(
ProductCode int primary key not null,
ProductName varchar(20),
ProductLine int not null,
ScaleWeight int not null,
Vendor varchar(10) not null,
Description varchar(30),
QuantityinStock int not null,
BuyingPrice int not null,
MSRP int not null
);

#ProductLine
Create Table if not exists ProductLine(
ProductLineNo int primary key not null,
ProductLineText varchar(30),
Description varchar(30),
Website varchar(40),
ProductImage blob
);

#Payment Info
Create table if not exists PaymentInfo(
PaymentID int primary key not null,
CustomerNumber int not null,
ChequeNumber int not null,
PaymentDate date,
AmountPaid int not null
);

#Alter table statements (Foreign Keys)
alter table Customers add foreign key (RepresentativeEmployeeNo) references Employees(EmployeeNumber);
alter table Employees add foreign key (OfficeCode) references Offices(OfficeCode);
alter table Drugs add foreign key (ProductLine) references ProductLine(ProductLineNo);
alter table Orders add foreign key (ProductCode) references Drugs(ProductCode);
alter table Orders add foreign key (CustomerNumber) references Customers(CustomerNumber);
alter table PaymentInfo add foreign key (CustomerNumber) references Customers(CustomerNumber);
alter table Employees add foreign key(ReportingTo) references Employees(EmployeeNumber);

