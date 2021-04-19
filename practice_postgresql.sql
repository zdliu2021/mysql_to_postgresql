1.在Product表中查出所有产品信息（输出格式：Name, ProductNumber, ListPrice），按产品名升序排列。

select Name,ProductNumber,ListPrice

from product

order by product.Name asc;





2.查出每种产品的销售总额和折扣总额。涉及表：product、salesorderdetail，按产品名升序排列。输出格式(Name, LineTotal, discount[OrderQty*UnitPriceDiscount]))。


select Name , LineTotal, OrderQty*UnitPriceDiscount as discount

from product join salesorderdetail

on product.ProductID=salesorderdetail.ProductID

order by Name asc;




3.查出每种产品类型均价等于该类产品最高标价的产品类型号。涉及表：Product。输出格式为(ProductModelID)

select ProductModelID

from product

group by product.ProductModelID

having  MAX(ListPrice)=avg(ListPrice);




4.查出每个销售订单的销售总额。涉及表：SalesOrderDetail。输出格式为(SalesOrderID,total[=sum(LineTotal)])

select salesorderdetail.SalesOrderID,sum(LineTotal) as total

from salesorderdetail

group by SalesOrderID;





5.查出标价大于$1000的产品，求出这些产品的均价(按ProductModelID分组)。涉及表：Product。输出格式为(ProductModelID,avg_price[avg(ListPrice)])

select ProductModelID,

avg(ListPrice)

from product

where ListPrice>1000

group by ProductModelID;



6.查出总销量大于5的产品ID，并按总销量排序。涉及表：salesorderdetail。输出格式为(ProductID,count[=sum(OrderQty])

select ProductID,

sum(OrderQty) as count

from salesorderdetail

group by ProductID

having sum(OrderQty)>5

order by sum(OrderQty) desc;


7.查出总销售额大于$10000且平均单笔销量小于3的产品。三列：ID、均价、总销售额。涉及表：SalesOrderDetail。输出格式为(ProductID,avg_price,sum_LineTotal)

select ProductID,

avg(UnitPrice) avg_price,sum(LineTotal) as sum_LineTotal

from salesorderdetail

group by ProductID

having avg(OrderQty)<3

and sum(LineTotal)>10000;



8.查出所有商品的没有打折之前的销售额NonDiscountSales，打折之后的销售额Discounts，按ProductName逆序返回。输出格式为(ProductName,NonDiscountSales,Discounts)

涉及SalesOrderDetail，Product两个表

SELECT p.Name AS ProductName, 

OrderQty * UnitPrice as NonDiscountSales,

((OrderQty * UnitPrice) * UnitPriceDiscount) as Discounts

FROM product AS p 

INNER JOIN salesorderdetail AS sod

ON p.ProductID = sod.ProductID 

ORDER BY ProductName DESC;



9.查询所有名字以“Chain”开头的ProductID,Name

SELECT ProductID, Name

FROM product

WHERE Name LIKE 'Chain%'; 



10.从Person表中选出MiddleName中包含E或B字符的the business entity ID number, first name, middle name, 和 last name

SELECT BusinessEntityID, FirstName, MiddleName, LastName

FROM person

WHERE MiddleName LIKE '%E%' or MiddleName Like '%B%'; 
                                                                   
