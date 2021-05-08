
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
-- dense_rank() over (partition by city
-- order by _count desc )as rank
定义每个员工参与的所有订单的总销售额(sum(LineTotal))作为员工的业绩，列出每个城市的业绩排名前三的员工,涉及表(salesorderheader,salesorderdetail,address,businessentutyaddress)。
                       输出格式为(city,SalesPersonID)

with temp_1 as(select city,SalesPersonID,_count
from (select SalesPersonID,sum(LineTotal) as _count
from salesorderheader inner join salesorderdetail
where salesorderdetail.SalesOrderID=salesorderheader.SalesOrderID
group by SalesPersonID) Temp join businessentityaddress join address 
where Temp.SalesPersonID=businessentityaddress.BusinessEntityID 
and businessentityaddress.AddressID=address.AddressID)

select city,SalesPersonID
from temp_1 a
where (select count(1) from temp_1 b where a.city=b.city and a._count<b._count )<3;

4、找出至少交易过四次的顾客，输出这些顾客对应的订单信息。涉及表(SalesOrderHeader),输出格式为(CustomerID,SalesOrderID,OrderDate)

SELECT CustomerID, SalesOrderID, OrderDate
FROM salesorderheader 
WHERE CustomerID IN     
(SELECT CustomerID     
FROM salesorderheader     
GROUP BY CustomerID    
HAVING COUNT(*) > 4);


