(1)在Product表中查出所有产品信息（列：Name, ProductNumber, ListPrice），按产品名升序排列。

select * 

from product

order by Name asc;





(2)查出每种产品的销售总额和折扣总额。涉及表：Product、SalesOrderDetail，按产品名升序排列。共三列。必须使用join

select * from product

order by Name asc;

select Name 产品,LineTotal 销售总额,OrderQty*UnitPriceDiscount 折扣总额

from product join salesorderdetail

on product.ProductID=salesorderdetail.ProductID

order by Name asc





(3)查出产品型号为“Long-Sleeve Logo Jersey*”（*为任意字符）的每种产品名。涉及表：Product、ProductModel。

一列。使用EXISTS和IN两种方法完成。

select product.Name 

from product

where exists(select productmodel.ProductModelID 

from productmodel 

where productmodel.Name="Long-Sleeve Logo Jersey" and productmodel.ProductModelID=product.ProductModelID);



(4)查出每种产品类型均价等于该类产品最高标价的产品类型号。涉及表：Product。GROUP BY、子查询。

select ProductModelID, MAX(ListPrice)

from Product

group by Product.ProductModelID

having  MAX(ListPrice)=avg(ListPrice)





(5)查出每个销售订单的销售总额。两列：订单号、销售总额。涉及表：SalesOrderDetail。

select SalesOrderDetail.SalesOrderID as 订单号,sum(LineTotal) as 销售总额

from SalesOrderDetail

group by SalesOrderDetail.SalesOrderID





(6)查出标价大于$1000的产品，求出这些产品的均价并按类型号分组。涉及表：Product。

select Product.ProductModelID,

avg(ListPrice)

from Product

where ListPrice>1000

group by Product.ProductModelID



(7)查出总销量大于5的产品ID，并排序。必须使用HAVING。涉及表：SalesOrderDetail。

select SalesOrderDetail.ProductID,

sum(OrderQty)

from SalesOrderDetail

group by SalesOrderDetail.ProductID

having sum(OrderQty)>5

order by sum(OrderQty) desc



(8)查出总销售额大于$10000且平均单笔销量小于3的产品。三列：ID、均价、总销售额。涉及表：SalesOrderDetail。

select SalesOrderDetail.ProductID ID,

avg(UnitPrice) 均价,sum(LineTotal) 总销售额

from SalesOrderDetail

group by SalesOrderDetail.ProductID

having avg(OrderQty)<3

and sum(LineTotal)>10000



(9)查出所有商品的没有打折之前的销售额NonDiscountSales，打折之后的销售额Discounts，按ProductName逆序返回。

列名：ProductName，NonDiscountSales，Discounts

涉及SalesOrderDetail，Product两个表

SELECT p.Name AS ProductName, 

NonDiscountSales = (OrderQty * UnitPrice),

Discounts = ((OrderQty * UnitPrice) * UnitPriceDiscount)

FROM Product AS p 

INNER JOIN SalesOrderDetail AS sod

ON p.ProductID = sod.ProductID 

ORDER BY ProductName DESC;



(10)查询所有名字以“Chain”开头的ProductID,name（Production.Product）

SELECT ProductID, Name

FROM Product

WHERE Name LIKE 'Chain%'; 



(11)从Person表中选出MiddleName中包含E或B字符的the business entity ID number, first name, middle name, 和 last

name

SELECT BusinessEntityID, FirstName, MiddleName, LastName

FROM Person

WHERE MiddleName LIKE '[E,B]'; 

(12)查询在2011-09-01和2011-09-30之间并且TotalDue超过1000的orderID,orderdata,TotalDue（Sales.SalesOrderHeader）

SELECT SalesOrderID, OrderDate, TotalDue

FROM SalesOrderHeader

WHERE OrderDate BETWEEN '2011-09-01' AND '2011-09-30'

 AND TotalDue > 1000; 



(13)查询出color为空的ProductID,Name,Color（Production.Product）

SELECT ProductID, Name, Color

FROM Product

WHERE Color IS NULL; 



(15). Write a query that displays all the products along with the SalesOrderID even if an order has never

been placed for that product. Join to the Sales.SalesOrderDetail table using the ProductID

column. 

SELECT SalesOrderID, P.ProductID, P.Name

FROM Product AS P

LEFT OUTER JOIN SalesOrderDetail

 AS SOD ON P.ProductID = SOD.ProductID; 



(16)Write a query using the Sales.SalesOrderHeader table that returns the count of unique

TerritoryID values per customer.

SELECT COUNT(DISTINCT TerritoryID) AS CountOfTerritoryID, CustomerID

FROM SalesOrderHeader

GROUP BY CustomerID; 



(17)Write a query using the Sales.SalesOrderHeader, Sales.SalesOrderDetail, and

Production.Product tables to display the total sum of products by ProductID and OrderDate.



SELECT SUM(OrderQty) SumOfOrderQty, P.ProductID, SOH.OrderDate

FROM SalesOrderHeader AS SOH

INNER JOIN SalesOrderDetail AS SOD

 ON SOH.SalesOrderID = SOD.SalesOrderDetailID

INNER JOIN Product AS P ON SOD.ProductID = P.ProductID

GROUP BY P.ProductID, SOH.OrderDate; 





(18) Write a query that joins the HumanResources.Employee table to the Person.Person table so that you

can display the FirstName, LastName, and HireDate columns for each employee. Display the

JobTitle along with a count of employees for the title. Use a derived table to solve this query. 



SELECT FirstName, LastName, e.JobTitle, HireDate, CountOfTitle

FROM Employee AS e

INNER JOIN Person AS p ON e.BusinessEntityID = p.BusinessEntityID

INNER JOIN (

 SELECT COUNT(*) AS CountOfTitle, JobTitle

 FROM Employee

 GROUP BY JobTitle) AS j ON e.JobTitle = j.JobTitle; 



(20) 查询出至少有五笔订单的顾客的CustomerID,SalesOrderID,orderData（Sales.SalesOrderHeader）

SELECT CustomerID, SalesOrderID, OrderDate

FROM SalesOrderHeader

WHERE CustomerID IN

 (SELECT CustomerID

 FROM SalesOrderHeader

 GROUP BY CustomerID

 HAVING COUNT(*) > 4); 
