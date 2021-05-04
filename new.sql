
salesorderdetail:(SalesOrderID,
                 SalesOrderDetailID,
                 CarrierTrackingNumber,
                 OrderQty,
                 ProductID,
                 SpecialOfferID,
                 UnitPrice,
                 UnitPriceDiscount,
                 LineTotal,
                 rowguid,)

salesorderheader:(SalesOrderID,
                 RevisionNumber,
                 orderDate,
                 DueDate,
                 ShipDate,
                 Status,
                 onlineOrderFlag,
                 SalesOrderNumber,
                 PurchaseOrderNumber,
                 AccountNumber,
                 CustomerID,
                 SalesPersonID,
                 )
businessentityaddress:(BusinessEntityID,
                      AddressID,
                      AddressTypeID,
                      )
address:(AddressID,
        city)
        
3.

select SalesPersonID,city
from (select SalesPersonID,sum(LineTotal) as _count
from salesorderheader join salesorderdetail
where salesorderdetail.SalesOrderID=salesorderheader.SalesOrderID
group by SalesOrderPerson) Temp join businessentityaddress join address 
where Temp.SalesPersonID=businessenetityaddress.BusinessEntityID 
and businessentityaddress.AddressID=address.AddressID
group by city
order by _count desc limit 3; 
