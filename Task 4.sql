create view Customer_Order_Restricted_Info as(
select c.CustomerNumber, c.FullName, concat_ws(" ",c.AddressLine1, c.AddressLine2, c.Postcode,c.Country) as FullAddress,o.OrderStatus,o.QuantityOrdered 
from Customers c
left join
Orders o
on
c.CustomerNumber = o.CustomerNumber
where  (CreditLimitNumber > 1000 and ShippedDate < '2010-01-01')
);
select * from Customer_Order_Restricted_Info;