-- Converted by db_converter
START TRANSACTION;
SET standard_conforming_strings=off;
SET escape_string_warning=off;
SET CONSTRAINTS ALL DEFERRED;

CREATE TABLE "address" (
    "AddressID" integer DEFAULT NULL,
    "AddressLine1" varchar(120) DEFAULT NULL,
    "AddressLine2" varchar(120) DEFAULT NULL,
    "City" varchar(60) DEFAULT NULL,
    "StateProvinceID" integer DEFAULT NULL,
    "PostalCode" varchar(30) DEFAULT NULL,
    --"SpatialLocation" text ,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "addresstype" (
    "AddressTypeID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "awbuildversion" (
    "SystemInformationID" integer DEFAULT NULL,
    "Database Version" varchar(50) DEFAULT NULL,
    "VersionDate" timestamp NULL DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "billofmaterials" (
    "BillOfMaterialsID" integer DEFAULT NULL,
    "ProductAssemblyID" integer DEFAULT NULL,
    "ComponentID" integer DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    "UnitMeasureCode" char(3) DEFAULT NULL,
    "BOMLevel" int2 DEFAULT NULL,
    "PerAssemblyQty" double precision DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "businessentity" (
    "BusinessEntityID" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "businessentityaddress" (
    "BusinessEntityID" integer DEFAULT NULL,
    "AddressID" integer DEFAULT NULL,
    "AddressTypeID" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "businessentitycontact" (
    "BusinessEntityID" integer DEFAULT NULL,
    "PersonID" integer DEFAULT NULL,
    "ContactTypeID" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "contacttype" (
    "ContactTypeID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "countryregion" (
    "CountryRegionCode" varchar(6) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "countryregioncurrency" (
    "CountryRegionCode" varchar(6) DEFAULT NULL,
    "CurrencyCode" char(3) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "creditcard" (
    "CreditCardID" integer DEFAULT NULL,
    "CardType" varchar(100) DEFAULT NULL,
    "CardNumber" varchar(50) DEFAULT NULL,
    "ExpMonth" integer DEFAULT NULL,
    "ExpYear" int2 DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "culture" (
    "CultureID" char(6) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "currency" (
    "CurrencyCode" char(3) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "currencyrate" (
    "CurrencyRateID" integer DEFAULT NULL,
    "CurrencyRateDate" timestamp NULL DEFAULT NULL,
    "FromCurrencyCode" char(3) DEFAULT NULL,
    "ToCurrencyCode" char(3) DEFAULT NULL,
    "AverageRate" decimal(19,5) DEFAULT NULL,
    "EndOfDayRate" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "customer" (
    "CustomerID" integer DEFAULT NULL,
    "PersonID" integer DEFAULT NULL,
    "StoreID" integer DEFAULT NULL,
    "TerritoryID" integer DEFAULT NULL,
    "AccountNumber" varchar(20) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "databaselog" (
    "DatabaseLogID" integer DEFAULT NULL,
    "PostTime" timestamp NULL DEFAULT NULL,
    "DatabaseUser" varchar(256) DEFAULT NULL,
    "Event" varchar(256) DEFAULT NULL,
    "Schema" varchar(256) DEFAULT NULL,
    "Object" varchar(256) DEFAULT NULL,
    --"TSQL" text ,
    --"XmlEvent" text
);

CREATE TABLE "department" (
    "DepartmentID" int2 DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "GroupName" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "document" (
    --"DocumentNode" text ,
    "DocumentLevel" int2 DEFAULT NULL,
    "Title" varchar(100) DEFAULT NULL,
    "Owner" integer DEFAULT NULL,
    "FolderFlag" int4 DEFAULT NULL,
    "FileName" varchar(800) DEFAULT NULL,
    "FileExtension" varchar(16) DEFAULT NULL,
    "Revision" char(5) DEFAULT NULL,
    "ChangeNumber" integer DEFAULT NULL,
    "Status" integer DEFAULT NULL,
    --"DocumentSummary" text ,
    --"Document" bytea ,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "emailaddress" (
    "BusinessEntityID" integer DEFAULT NULL,
    "EmailAddressID" integer DEFAULT NULL,
    "EmailAddress" varchar(100) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "employee" (
    "BusinessEntityID" integer DEFAULT NULL,
    "NationalIDNumber" varchar(30) DEFAULT NULL,
    "LoginID" varchar(512) DEFAULT NULL,
    --"OrganizationNode" text ,
    "OrganizationLevel" int2 DEFAULT NULL,
    "JobTitle" varchar(100) DEFAULT NULL,
    "BirthDate" date DEFAULT NULL,
    "MaritalStatus" char(1) DEFAULT NULL,
    "Gender" char(1) DEFAULT NULL,
    "HireDate" date DEFAULT NULL,
    "SalariedFlag" int4 DEFAULT NULL,
    "VacationHours" int2 DEFAULT NULL,
    "SickLeaveHours" int2 DEFAULT NULL,
    "CurrentFlag" int4 DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "employeedepartmenthistory" (
    "BusinessEntityID" integer DEFAULT NULL,
    "DepartmentID" int2 DEFAULT NULL,
    "ShiftID" integer DEFAULT NULL,
    "StartDate" date DEFAULT NULL,
    "EndDate" date DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "employeepayhistory" (
    "BusinessEntityID" integer DEFAULT NULL,
    "RateChangeDate" timestamp NULL DEFAULT NULL,
    "Rate" decimal(19,5) DEFAULT NULL,
    "PayFrequency" integer DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "errorlog" (
    "ErrorLogID" integer DEFAULT NULL,
    "ErrorTime" timestamp NULL DEFAULT NULL,
    "UserName" varchar(256) DEFAULT NULL,
    "ErrorNumber" integer DEFAULT NULL,
    "ErrorSeverity" integer DEFAULT NULL,
    "ErrorState" integer DEFAULT NULL,
    "ErrorProcedure" varchar(252) DEFAULT NULL,
    "ErrorLine" integer DEFAULT NULL,
    "ErrorMessage" varchar(8000) DEFAULT NULL
);

CREATE TABLE "illustration" (
    "IllustrationID" integer DEFAULT NULL,
    --"Diagram" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "jobcandidate" (
    "JobCandidateID" integer DEFAULT NULL,
    "BusinessEntityID" integer DEFAULT NULL,
    --"Resume" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "location" (
    "LocationID" int2 DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "CostRate" decimal(19,5) DEFAULT NULL,
    "Availability" double precision DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "password" (
    "BusinessEntityID" integer DEFAULT NULL,
    "PasswordHash" varchar(256) DEFAULT NULL,
    "PasswordSalt" varchar(20) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "person" (
    "BusinessEntityID" integer DEFAULT NULL,
    "PersonType" char(2) DEFAULT NULL,
    "NameStyle" int4 DEFAULT NULL,
    "Title" varchar(16) DEFAULT NULL,
    "FirstName" varchar(100) DEFAULT NULL,
    "MiddleName" varchar(100) DEFAULT NULL,
    "LastName" varchar(100) DEFAULT NULL,
    "Suffix" varchar(20) DEFAULT NULL,
    "EmailPromotion" integer DEFAULT NULL,
    --"AdditionalContactInfo" text ,
    --"Demographics" text ,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "personcreditcard" (
    "BusinessEntityID" integer DEFAULT NULL,
    "CreditCardID" integer DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "personphone" (
    "BusinessEntityID" integer DEFAULT NULL,
    "PhoneNumber" varchar(50) DEFAULT NULL,
    "PhoneNumberTypeID" integer DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "phonenumbertype" (
    "PhoneNumberTypeID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "product" (
    "ProductID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ProductNumber" varchar(50) DEFAULT NULL,
    "MakeFlag" int4 DEFAULT NULL,
    "FinishedGoodsFlag" int4 DEFAULT NULL,
    "Color" varchar(30) DEFAULT NULL,
    "SafetyStockLevel" int2 DEFAULT NULL,
    "ReorderPoint" int2 DEFAULT NULL,
    "StandardCost" decimal(19,5) DEFAULT NULL,
    "ListPrice" decimal(19,5) DEFAULT NULL,
    "Size" varchar(10) DEFAULT NULL,
    "SizeUnitMeasureCode" char(3) DEFAULT NULL,
    "WeightUnitMeasureCode" char(3) DEFAULT NULL,
    "Weight" double precision DEFAULT NULL,
    "DaysToManufacture" integer DEFAULT NULL,
    "ProductLine" char(2) DEFAULT NULL,
    "Class" char(2) DEFAULT NULL,
    "Style" char(2) DEFAULT NULL,
    "ProductSubcategoryID" integer DEFAULT NULL,
    "ProductModelID" integer DEFAULT NULL,
    "SellStartDate" timestamp NULL DEFAULT NULL,
    "SellEndDate" timestamp NULL DEFAULT NULL,
    "DiscontinuedDate" timestamp NULL DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productcategory" (
    "ProductCategoryID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productcosthistory" (
    "ProductID" integer DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    "StandardCost" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productdescription" (
    "ProductDescriptionID" integer DEFAULT NULL,
    "Description" varchar(800) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productdocument" (
    "ProductID" integer DEFAULT NULL,
    --"DocumentNode" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productinventory" (
    "ProductID" integer DEFAULT NULL,
    "LocationID" int2 DEFAULT NULL,
    "Shelf" varchar(20) DEFAULT NULL,
    "Bin" integer DEFAULT NULL,
    "Quantity" int2 DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productlistpricehistory" (
    "ProductID" integer DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    "ListPrice" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productmodel" (
    "ProductModelID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"CatalogDescription" text ,
    --"Instructions" text ,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productmodelillustration" (
    "ProductModelID" integer DEFAULT NULL,
    "IllustrationID" integer DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productmodelproductdescriptionculture" (
    "ProductModelID" integer DEFAULT NULL,
    "ProductDescriptionID" integer DEFAULT NULL,
    "CultureID" char(6) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productphoto" (
    "ProductPhotoID" integer DEFAULT NULL,
    "ThumbnailPhotoFileName" varchar(100) DEFAULT NULL,
    "LargePhotoFileName" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productproductphoto" (
    "ProductID" integer DEFAULT NULL,
    "ProductPhotoID" integer DEFAULT NULL,
    "Primary" int4 DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productreview" (
    "ProductReviewID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "ReviewerName" varchar(100) DEFAULT NULL,
    "ReviewDate" timestamp NULL DEFAULT NULL,
    "EmailAddress" varchar(100) DEFAULT NULL,
    "Rating" integer DEFAULT NULL,
    "Comments" varchar(7700) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productsubcategory" (
    "ProductSubcategoryID" integer DEFAULT NULL,
    "ProductCategoryID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "productvendor" (
    "ProductID" integer DEFAULT NULL,
    "BusinessEntityID" integer DEFAULT NULL,
    "AverageLeadTime" integer DEFAULT NULL,
    "StandardPrice" decimal(19,5) DEFAULT NULL,
    "LastReceiptCost" decimal(19,5) DEFAULT NULL,
    "LastReceiptDate" timestamp NULL DEFAULT NULL,
    "MinOrderQty" integer DEFAULT NULL,
    "MaxOrderQty" integer DEFAULT NULL,
    "OnOrderQty" integer DEFAULT NULL,
    "UnitMeasureCode" char(3) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "purchaseorderdetail" (
    "PurchaseOrderID" integer DEFAULT NULL,
    "PurchaseOrderDetailID" integer DEFAULT NULL,
    "DueDate" timestamp NULL DEFAULT NULL,
    "OrderQty" int2 DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "UnitPrice" decimal(19,5) DEFAULT NULL,
    "LineTotal" decimal(19,5) DEFAULT NULL,
    "ReceivedQty" double precision DEFAULT NULL,
    "RejectedQty" double precision DEFAULT NULL,
    "StockedQty" double precision DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "purchaseorderheader" (
    "PurchaseOrderID" integer DEFAULT NULL,
    "RevisionNumber" integer DEFAULT NULL,
    "Status" integer DEFAULT NULL,
    "EmployeeID" integer DEFAULT NULL,
    "VendorID" integer DEFAULT NULL,
    "ShipMethodID" integer DEFAULT NULL,
    "OrderDate" timestamp NULL DEFAULT NULL,
    "ShipDate" timestamp NULL DEFAULT NULL,
    "SubTotal" decimal(19,5) DEFAULT NULL,
    "TaxAmt" decimal(19,5) DEFAULT NULL,
    "Freight" decimal(19,5) DEFAULT NULL,
    "TotalDue" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesorderdetail" (
    "SalesOrderID" integer DEFAULT NULL,
    "SalesOrderDetailID" integer DEFAULT NULL,
    "CarrierTrackingNumber" varchar(50) DEFAULT NULL,
    "OrderQty" int2 DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "SpecialOfferID" integer DEFAULT NULL,
    "UnitPrice" decimal(19,5) DEFAULT NULL,
    "UnitPriceDiscount" decimal(19,5) DEFAULT NULL,
    "LineTotal" double precision DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesorderheader" (
    "SalesOrderID" integer DEFAULT NULL,
    "RevisionNumber" integer DEFAULT NULL,
    "OrderDate" timestamp NULL DEFAULT NULL,
    "DueDate" timestamp NULL DEFAULT NULL,
    "ShipDate" timestamp NULL DEFAULT NULL,
    "Status" integer DEFAULT NULL,
    "OnlineOrderFlag" int4 DEFAULT NULL,
    "SalesOrderNumber" varchar(50) DEFAULT NULL,
    "PurchaseOrderNumber" varchar(50) DEFAULT NULL,
    "AccountNumber" varchar(30) DEFAULT NULL,
    "CustomerID" integer DEFAULT NULL,
    "SalesPersonID" integer DEFAULT NULL,
    "TerritoryID" integer DEFAULT NULL,
    "BillToAddressID" integer DEFAULT NULL,
    "ShipToAddressID" integer DEFAULT NULL,
    "ShipMethodID" integer DEFAULT NULL,
    "CreditCardID" integer DEFAULT NULL,
    "CreditCardApprovalCode" varchar(30) DEFAULT NULL,
    "CurrencyRateID" integer DEFAULT NULL,
    "SubTotal" decimal(19,5) DEFAULT NULL,
    "TaxAmt" decimal(19,5) DEFAULT NULL,
    "Freight" decimal(19,5) DEFAULT NULL,
    "TotalDue" decimal(19,5) DEFAULT NULL,
    "Comment" varchar(256) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesorderheadersalesreason" (
    "SalesOrderID" integer DEFAULT NULL,
    "SalesReasonID" integer DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesperson" (
    "BusinessEntityID" integer DEFAULT NULL,
    "TerritoryID" integer DEFAULT NULL,
    "SalesQuota" decimal(19,5) DEFAULT NULL,
    "Bonus" decimal(19,5) DEFAULT NULL,
    "CommissionPct" decimal(10,5) DEFAULT NULL,
    "SalesYTD" decimal(19,5) DEFAULT NULL,
    "SalesLastYear" decimal(19,5) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salespersonquotahistory" (
    "BusinessEntityID" integer DEFAULT NULL,
    "QuotaDate" timestamp NULL DEFAULT NULL,
    "SalesQuota" decimal(19,5) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesreason" (
    "SalesReasonID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ReasonType" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salestaxrate" (
    "SalesTaxRateID" integer DEFAULT NULL,
    "StateProvinceID" integer DEFAULT NULL,
    "TaxType" integer DEFAULT NULL,
    "TaxRate" decimal(10,5) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesterritory" (
    "TerritoryID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "CountryRegionCode" varchar(6) DEFAULT NULL,
    "Group" varchar(100) DEFAULT NULL,
    "SalesYTD" decimal(19,5) DEFAULT NULL,
    "SalesLastYear" decimal(19,5) DEFAULT NULL,
    "CostYTD" decimal(19,5) DEFAULT NULL,
    "CostLastYear" decimal(19,5) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "salesterritoryhistory" (
    "BusinessEntityID" integer DEFAULT NULL,
    "TerritoryID" integer DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "scrapreason" (
    "ScrapReasonID" int2 DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "shift" (
    "ShiftID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    --"StartTime" text ,
    --"EndTime" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "shipmethod" (
    "ShipMethodID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ShipBase" decimal(19,5) DEFAULT NULL,
    "ShipRate" decimal(19,5) DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "shoppingcartitem" (
    "ShoppingCartItemID" integer DEFAULT NULL,
    "ShoppingCartID" varchar(100) DEFAULT NULL,
    "Quantity" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "DateCreated" timestamp NULL DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "specialoffer" (
    "SpecialOfferID" integer DEFAULT NULL,
    "Description" varchar(510) DEFAULT NULL,
    "DiscountPct" decimal(10,5) DEFAULT NULL,
    "Type" varchar(100) DEFAULT NULL,
    "Category" varchar(100) DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    "MinQty" integer DEFAULT NULL,
    "MaxQty" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "specialofferproduct" (
    "SpecialOfferID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "stateprovince" (
    "StateProvinceID" integer DEFAULT NULL,
    "StateProvinceCode" char(3) DEFAULT NULL,
    "CountryRegionCode" varchar(6) DEFAULT NULL,
    "IsOnlyStateProvinceFlag" int4 DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "TerritoryID" integer DEFAULT NULL,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "store" (
    "BusinessEntityID" integer DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "SalesPersonID" integer DEFAULT NULL,
    --"Demographics" text ,
    --"rowguid" text ,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "transactionhistory" (
    "TransactionID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "ReferenceOrderID" integer DEFAULT NULL,
    "ReferenceOrderLineID" integer DEFAULT NULL,
    "TransactionDate" timestamp NULL DEFAULT NULL,
    "TransactionType" char(1) DEFAULT NULL,
    "Quantity" integer DEFAULT NULL,
    "ActualCost" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "transactionhistoryarchive" (
    "TransactionID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "ReferenceOrderID" integer DEFAULT NULL,
    "ReferenceOrderLineID" integer DEFAULT NULL,
    "TransactionDate" timestamp NULL DEFAULT NULL,
    "TransactionType" char(1) DEFAULT NULL,
    "Quantity" integer DEFAULT NULL,
    "ActualCost" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "unitmeasure" (
    "UnitMeasureCode" char(3) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "vendor" (
    "BusinessEntityID" integer DEFAULT NULL,
    "AccountNumber" varchar(30) DEFAULT NULL,
    "Name" varchar(100) DEFAULT NULL,
    "CreditRating" integer DEFAULT NULL,
    "PreferredVendorStatus" int4 DEFAULT NULL,
    "ActiveFlag" int4 DEFAULT NULL,
    "PurchasingWebServiceURL" varchar(2048) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "workorder" (
    "WorkOrderID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "OrderQty" integer DEFAULT NULL,
    "StockedQty" integer DEFAULT NULL,
    "ScrappedQty" int2 DEFAULT NULL,
    "StartDate" timestamp NULL DEFAULT NULL,
    "EndDate" timestamp NULL DEFAULT NULL,
    "DueDate" timestamp NULL DEFAULT NULL,
    "ScrapReasonID" int2 DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);

CREATE TABLE "workorderrouting" (
    "WorkOrderID" integer DEFAULT NULL,
    "ProductID" integer DEFAULT NULL,
    "OperationSequence" int2 DEFAULT NULL,
    "LocationID" int2 DEFAULT NULL,
    "ScheduledStartDate" timestamp NULL DEFAULT NULL,
    "ScheduledEndDate" timestamp NULL DEFAULT NULL,
    "ActualStartDate" timestamp NULL DEFAULT NULL,
    "ActualEndDate" timestamp NULL DEFAULT NULL,
    "ActualResourceHrs" double precision DEFAULT NULL,
    "PlannedCost" decimal(19,5) DEFAULT NULL,
    "ActualCost" decimal(19,5) DEFAULT NULL,
    "ModifiedDate" timestamp NULL DEFAULT NULL
);


-- Post-data save --
COMMIT;
START TRANSACTION;

-- Typecasts --
ALTER TABLE "document" ALTER COLUMN "FolderFlag" DROP DEFAULT, ALTER COLUMN "FolderFlag" TYPE boolean USING CAST("FolderFlag" as boolean);
ALTER TABLE "employee" ALTER COLUMN "SalariedFlag" DROP DEFAULT, ALTER COLUMN "SalariedFlag" TYPE boolean USING CAST("SalariedFlag" as boolean);
ALTER TABLE "employee" ALTER COLUMN "CurrentFlag" DROP DEFAULT, ALTER COLUMN "CurrentFlag" TYPE boolean USING CAST("CurrentFlag" as boolean);
ALTER TABLE "person" ALTER COLUMN "NameStyle" DROP DEFAULT, ALTER COLUMN "NameStyle" TYPE boolean USING CAST("NameStyle" as boolean);
ALTER TABLE "product" ALTER COLUMN "MakeFlag" DROP DEFAULT, ALTER COLUMN "MakeFlag" TYPE boolean USING CAST("MakeFlag" as boolean);
ALTER TABLE "product" ALTER COLUMN "FinishedGoodsFlag" DROP DEFAULT, ALTER COLUMN "FinishedGoodsFlag" TYPE boolean USING CAST("FinishedGoodsFlag" as boolean);
ALTER TABLE "productproductphoto" ALTER COLUMN "Primary" DROP DEFAULT, ALTER COLUMN "Primary" TYPE boolean USING CAST("Primary" as boolean);
ALTER TABLE "salesorderheader" ALTER COLUMN "OnlineOrderFlag" DROP DEFAULT, ALTER COLUMN "OnlineOrderFlag" TYPE boolean USING CAST("OnlineOrderFlag" as boolean);
ALTER TABLE "stateprovince" ALTER COLUMN "IsOnlyStateProvinceFlag" DROP DEFAULT, ALTER COLUMN "IsOnlyStateProvinceFlag" TYPE boolean USING CAST("IsOnlyStateProvinceFlag" as boolean);
ALTER TABLE "vendor" ALTER COLUMN "PreferredVendorStatus" DROP DEFAULT, ALTER COLUMN "PreferredVendorStatus" TYPE boolean USING CAST("PreferredVendorStatus" as boolean);
ALTER TABLE "vendor" ALTER COLUMN "ActiveFlag" DROP DEFAULT, ALTER COLUMN "ActiveFlag" TYPE boolean USING CAST("ActiveFlag" as boolean);

-- Foreign keys --

-- Sequences --

-- Full Text keys --

COMMIT;
