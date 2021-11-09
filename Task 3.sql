#Insert Statements for Offices#
insert into Offices values(1,"Norwich","01603663423","3a Riverside",null,"Norfolk","NR11WX","United Kingdom","British");
insert into Offices values(2,"Cambridge","01223335058","Language Centre","Downing Pl","Cambridge","CB23EL","United Kingdom","British");
insert into Offices values(3,"Leicester","08705426426","20-40 New Walk",null,"Leicestershire","LE16TF","United Kingdom","British");
insert into Offices values(4,"London","08444997111","32 London Bridge St",null,"London","SE19SG","United Kingdom","British");

#Insert Statements for Employees#
insert into Employees(EmployeeNumber,FirstName,LastName,Extension,EmailAddress,OfficeCode,JobTitle,ReportingTo) values(2,"Luke","Yaxley","007","ly105@student.le.ac.uk",1,"Student",null);
insert into Employees(EmployeeNumber,FirstName,LastName,Extension,EmailAddress,OfficeCode,JobTitle,ReportingTo) values(1,"Benjamin","McGregor","420","BMcGregor@custardkarim.org",2,"Registered Defender",2);
insert into Employees(EmployeeNumber,FirstName,LastName,Extension,EmailAddress,OfficeCode,JobTitle,ReportingTo) values(3,"Karim","Mualla","001","kjm49@leicester.ac.uk",3,"Database Admin",null);
insert into Employees(EmployeeNumber,FirstName,LastName,Extension,EmailAddress,OfficeCode,JobTitle,ReportingTo) values(4,"Richard","Craggs","002","rc340@leicester.ac.uk",4,"Project Manager",3);

#Insert Statements for Customers#
insert into Customers(CustomerNumber,FirstName,LastName,PhoneNo,AddressLine1,AddressLine2,City,County,Postcode,Country,SalesAmount,CreditLimitNumber,RepresentativeEmployeeNo) values(1,"Nishan","Canagarajah","01162522522","University Rd",null,"Leiceister","Leicestershire","LE17RH","England",10,200,1);
insert into Customers(CustomerNumber,FirstName,LastName,PhoneNo,AddressLine1,AddressLine2,City,County,Postcode,Country,SalesAmount,CreditLimitNumber,RepresentativeEmployeeNo) values(2,"Glynn","Hambling","01362697033","Northgate High School","Dereham",null,"Norfolk","NR192EU","England",5,1500,2);
insert into Customers(CustomerNumber,FirstName,LastName,PhoneNo,AddressLine1,AddressLine2,City,County,Postcode,Country,SalesAmount,CreditLimitNumber,RepresentativeEmployeeNo) values(3,"Lance","Armstrong","7783847520","1 Bicycle Avenue",null,"Paris","Paris","75008","France",500,1001,3);
insert into Customers(CustomerNumber,FirstName,LastName,PhoneNo,AddressLine1,AddressLine2,City,County,Postcode,Country,SalesAmount,CreditLimitNumber,RepresentativeEmployeeNo) values(4,"Dwayne","Johnson","07864126821","2 Rock Road",null,"PewterCity","Kanto","KA13BG","Japan",50,10001,3);

#Insert Statements for ProductLine#
insert into ProductLine values(1,"Xenomorph","A pill to subdue horses","www.horsepills.com",null);
insert into ProductLine values(2,"Xena","A pill to increase horse size","www.hugehay.com",null);
insert into ProductLine values(3,"Aspartame","Wow that's sweet!","www.DrPrepper.com",null);
insert into ProductLine values(4,"Death Sticks","Bad name but good product","www.Coruscant.org",null);

#Insert Statements for Drugs#
insert into Drugs values(1,"WD40",3,12,"Michael",null,10,70,80);
insert into Drugs values(2,"R2D2",2,14,"Jabba",null,1,700,850);
insert into Drugs values(3,"BH30",1,10,"Benjamin",null,100,4,10);
insert into Drugs values(4,"C3PO",4,8,"Anakin",null,1,40,110);

#Insert Statements for Orders#
insert into Orders values(1,"2009-10-1","2009-10-10","209-10-3","shipped","Steroids sent off",1,1,10);
insert into Orders values(2,"2001-11-21","2001-12-5","2001-12-1","shipped","Not Recieved",3,2,1);
insert into Orders values(3,"2019-10-14","2019-11-10",null,"Delayed", "Out of stock",2,1,4);
insert into Orders values(4,"2021-1-17","2021-1-19","2021-1-18","Shipped", "Recieved",1,2,3);

#Insert Statements for PaymentInfo#
insert into PaymentInfo values(1,2,3,"2020-10-1",100);
insert into PaymentInfo values(2,1,1,"2020-11-16",50);
insert into PaymentInfo values(4,3,3,"2020-7-12",75);
insert into PaymentInfo values(3,4,5,"2020-10-15",65)