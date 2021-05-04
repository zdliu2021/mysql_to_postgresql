
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
select SalesPersonID
from salesorderheader join salesorderdetail
where salesorderdetail.SalesOrderID=salesorderheader.SalesOrderID
group by SalesPersonID
by 
