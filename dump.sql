DROP TABLE IF EXISTS `dbo.awbuildversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "dbo.awbuildversion" (
  SystemInformationID int DEFAULT NULL,
  "Database Version" varchar(25) DEFAULT NULL,
  VersionDate timestamp NULL DEFAULT NULL,
  ModifiedDate timestamp NULL DEFAULT NULL
);

/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbo.databaselog`
--

DROP TABLE IF EXISTS "dbo.databaselog";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "dbo.databaselog" (
  `DatabaseLogID` int DEFAULT NULL,
  `PostTime` timestamp NULL DEFAULT NULL,
  `DatabaseUser` varchar(128) DEFAULT NULL,
  `Event` varchar(128) DEFAULT NULL,
  `Schema` varchar(128) DEFAULT NULL,
  `Object` varchar(128) DEFAULT NULL,
  `TSQL` longtext,
  `XmlEvent` longtext 
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dbo.errorlog`
--

DROP TABLE IF EXISTS "dbo.errorlog";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "dbo.errorlog" (
  ErrorLogID int DEFAULT NULL,
  ErrorTime timestamp NULL DEFAULT NULL,
  UserName varchar(128) DEFAULT NULL,
  ErrorNumber int DEFAULT NULL,
  ErrorSeverity int DEFAULT NULL,
  ErrorState int DEFAULT NULL,
  ErrorProcedure varchar(126) DEFAULT NULL,
  ErrorLine int DEFAULT NULL,
  ErrorMessage varchar(4000)  DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `humanresources.department`
--

DROP TABLE IF EXISTS "humanresources.department";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "humanresources.department" (
  DepartmentID smallint DEFAULT NULL,
  Name varchar(50) DEFAULT NULL,
  GroupName varchar(50) DEFAULT NULL,
  ModifiedDate timestamp NULL DEFAULT NULL
) ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `humanresources.employee`
--

DROP TABLE IF EXISTS "humanresources.employee";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "humanresources.employee" (
  BusinessEntityID int DEFAULT NULL,
  NationalIDNumber varchar(15) DEFAULT NULL,
  LoginID varchar(256) DEFAULT NULL,
  OrganizationNode blob,
  OrganizationLevel smallint DEFAULT NULL,
  JobTitle varchar(50) DEFAULT NULL,
  BirthDate varchar(10) DEFAULT NULL,
  MaritalStatus char(1) DEFAULT NULL,
  Gender char(1) DEFAULT NULL,
  HireDate varchar(10) DEFAULT NULL,
  SalariedFlag tinyint(1) DEFAULT NULL,
  VacationHours smallint DEFAULT NULL,
  SickLeaveHours smallint DEFAULT NULL,
  CurrentFlag tinyint(1) DEFAULT NULL,
  rowguid longtext
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `humanresources.employeedepartmenthistory`
--

DROP TABLE IF EXISTS "humanresources.employeedepartmenthistory";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "humanresources.employeedepartmenthistory" (
  BusinessEntityID int DEFAULT NULL,
  DepartmentID smallint DEFAULT NULL,
  ShiftID int DEFAULT NULL,
  StartDate varchar(10) DEFAULT NULL,
  EndDate varchar(10) DEFAULT NULL,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `humanresources.jobcandidate`
--

DROP TABLE IF EXISTS "humanresources.jobcandidate";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "humanresources.jobcandidate" (
  JobCandidateID int DEFAULT NULL,
  BusinessEntityID int DEFAULT NULL,
  Resume longtext,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `humanresources.shift`
--

DROP TABLE IF EXISTS "humanresources.shift";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "humanresources.shift" (
  ShiftID int DEFAULT NULL,
  Name varchar(50) DEFAULT NULL,
  StartTime varchar(16) DEFAULT NULL,
  EndTime varchar(16) DEFAULT NULL,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.address`
--

DROP TABLE IF EXISTS "person.address";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "person.address" (
  AddressID int DEFAULT NULL,
  AddressLine1 varchar(60) DEFAULT NULL,
  AddressLine2 varchar(60) DEFAULT NULL,
  City varchar(30) DEFAULT NULL,
  StateProvinceID int DEFAULT NULL,
  PostalCode varchar(15) DEFAULT NULL,
  SpatialLocation longblob,
  rowguid longtext,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.addresstype`
--

DROP TABLE IF EXISTS "person.addresstype";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "person.addresstype" (
  AddressTypeID int DEFAULT NULL,
  Name varchar(50) DEFAULT NULL,
  rowguid longtext ,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.businessentity`
--

DROP TABLE IF EXISTS "person.businessentity";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "person.businessentity" (
  BusinessEntityID int DEFAULT NULL,
  rowguid longtext ,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.businessentityaddress`
--

DROP TABLE IF EXISTS "person.businessentityaddress";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "person.businessentityaddress" (
  BusinessEntityID int DEFAULT NULL,
  AddressID int DEFAULT NULL,
  AddressTypeID int DEFAULT NULL,
  rowguid longtext ,
  ModifiedDate timestamp NULL DEFAULT NULL
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.businessentitycontact`
--

DROP TABLE IF EXISTS "person.businessentitycontact";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE "person.businessentitycontact" (
  "BusinessEntityID" int DEFAULT NULL,
  `PersonID` int DEFAULT NULL,
  `ContactTypeID` int DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.contacttype`
--

DROP TABLE IF EXISTS `person.contacttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.contacttype` (
  `ContactTypeID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.countryregion`
--

DROP TABLE IF EXISTS `person.countryregion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.countryregion` (
  `CountryRegionCode` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.emailaddress`
--

DROP TABLE IF EXISTS `person.emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.emailaddress` (
  `BusinessEntityID` int DEFAULT NULL,
  `EmailAddressID` int DEFAULT NULL,
  `EmailAddress` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.password`
--

DROP TABLE IF EXISTS `person.password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.password` (
  `BusinessEntityID` int DEFAULT NULL,
  `PasswordHash` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PasswordSalt` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.person`
--

DROP TABLE IF EXISTS `person.person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.person` (
  `BusinessEntityID` int DEFAULT NULL,
  `PersonType` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `NameStyle` tinyint(1) DEFAULT NULL,
  `Title` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `MiddleName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Suffix` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `EmailPromotion` int DEFAULT NULL,
  `AdditionalContactInfo` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Demographics` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table "person.personphone"
--

DROP TABLE IF EXISTS `person.personphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.personphone` (
  `BusinessEntityID` int DEFAULT NULL,
  `PhoneNumber` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `PhoneNumberTypeID` int DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.phonenumbertype`
--

DROP TABLE IF EXISTS `person.phonenumbertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.phonenumbertype` (
  `PhoneNumberTypeID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person.stateprovince`
--

DROP TABLE IF EXISTS `person.stateprovince`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person.stateprovince` (
  `StateProvinceID` int DEFAULT NULL,
  `StateProvinceCode` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CountryRegionCode` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `IsOnlyStateProvinceFlag` tinyint(1) DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `TerritoryID` int DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.billofmaterials`
--

DROP TABLE IF EXISTS `production.billofmaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.billofmaterials` (
  `BillOfMaterialsID` int DEFAULT NULL,
  `ProductAssemblyID` int DEFAULT NULL,
  `ComponentID` int DEFAULT NULL,
  `StartDate` timestamp NULL DEFAULT NULL,
  `EndDate` timestamp NULL DEFAULT NULL,
  `UnitMeasureCode` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `BOMLevel` smallint DEFAULT NULL,
  `PerAssemblyQty` double DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.culture`
--

DROP TABLE IF EXISTS `production.culture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.culture` (
  `CultureID` char(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.document`
--

DROP TABLE IF EXISTS `production.document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.document` (
  `DocumentNode` blob,
  `DocumentLevel` smallint DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Owner` int DEFAULT NULL,
  `FolderFlag` tinyint(1) DEFAULT NULL,
  `FileName` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `FileExtension` varchar(8) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Revision` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ChangeNumber` int DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `DocumentSummary` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Document` longblob,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.illustration`
--

DROP TABLE IF EXISTS `production.illustration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.illustration` (
  `IllustrationID` int DEFAULT NULL,
  `Diagram` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productcategory`
--

DROP TABLE IF EXISTS `production.productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productcategory` (
  `ProductCategoryID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productdescription`
--

DROP TABLE IF EXISTS `production.productdescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productdescription` (
  `ProductDescriptionID` int DEFAULT NULL,
  `Description` varchar(400) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productdocument`
--

DROP TABLE IF EXISTS `production.productdocument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productdocument` (
  `ProductID` int DEFAULT NULL,
  `DocumentNode` blob,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productinventory`
--

DROP TABLE IF EXISTS `production.productinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productinventory` (
  `ProductID` int DEFAULT NULL,
  `LocationID` smallint DEFAULT NULL,
  `Shelf` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Bin` int DEFAULT NULL,
  `Quantity` smallint DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productmodel`
--

DROP TABLE IF EXISTS `production.productmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productmodel` (
  `ProductModelID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CatalogDescription` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Instructions` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productmodelillustration`
--

DROP TABLE IF EXISTS `production.productmodelillustration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productmodelillustration` (
  `ProductModelID` int DEFAULT NULL,
  `IllustrationID` int DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productmodelproductdescriptionculture`
--

DROP TABLE IF EXISTS `production.productmodelproductdescriptionculture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productmodelproductdescriptionculture` (
  `ProductModelID` int DEFAULT NULL,
  `ProductDescriptionID` int DEFAULT NULL,
  `CultureID` char(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productphoto`
--

DROP TABLE IF EXISTS `production.productphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productphoto` (
  `ProductPhotoID` int DEFAULT NULL,
  `ThumbNailPhoto` longblob,
  `ThumbnailPhotoFileName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `LargePhoto` longblob,
  `LargePhotoFileName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productproductphoto`
--

DROP TABLE IF EXISTS `production.productproductphoto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productproductphoto` (
  `ProductID` int DEFAULT NULL,
  `ProductPhotoID` int DEFAULT NULL,
  `Primary` tinyint(1) DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productreview`
--

DROP TABLE IF EXISTS `production.productreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productreview` (
  `ProductReviewID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `ReviewerName` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ReviewDate` timestamp NULL DEFAULT NULL,
  `EmailAddress` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comments` varchar(3850) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.productsubcategory`
--

DROP TABLE IF EXISTS `production.productsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.productsubcategory` (
  `ProductSubcategoryID` int DEFAULT NULL,
  `ProductCategoryID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.scrapreason`
--

DROP TABLE IF EXISTS `production.scrapreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.scrapreason` (
  `ScrapReasonID` smallint DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.unitmeasure`
--

DROP TABLE IF EXISTS `production.unitmeasure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.unitmeasure` (
  `UnitMeasureCode` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `production.workorder`
--

DROP TABLE IF EXISTS `production.workorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production.workorder` (
  `WorkOrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `OrderQty` int DEFAULT NULL,
  `StockedQty` int DEFAULT NULL,
  `ScrappedQty` smallint DEFAULT NULL,
  `StartDate` timestamp NULL DEFAULT NULL,
  `EndDate` timestamp NULL DEFAULT NULL,
  `DueDate` timestamp NULL DEFAULT NULL,
  `ScrapReasonID` smallint DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchasing.vendor`
--

DROP TABLE IF EXISTS `purchasing.vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchasing.vendor` (
  `BusinessEntityID` int DEFAULT NULL,
  `AccountNumber` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CreditRating` int DEFAULT NULL,
  `PreferredVendorStatus` tinyint(1) DEFAULT NULL,
  `ActiveFlag` tinyint(1) DEFAULT NULL,
  `PurchasingWebServiceURL` varchar(1024) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.countryregioncurrency`
--

DROP TABLE IF EXISTS `sales.countryregioncurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.countryregioncurrency` (
  `CountryRegionCode` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CurrencyCode` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.creditcard`
--

DROP TABLE IF EXISTS `sales.creditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.creditcard` (
  `CreditCardID` int DEFAULT NULL,
  `CardType` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `CardNumber` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ExpMonth` int DEFAULT NULL,
  `ExpYear` smallint DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.currency`
--

DROP TABLE IF EXISTS `sales.currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.currency` (
  `CurrencyCode` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.customer`
--

DROP TABLE IF EXISTS `sales.customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.customer` (
  `CustomerID` int DEFAULT NULL,
  `PersonID` int DEFAULT NULL,
  `StoreID` int DEFAULT NULL,
  `TerritoryID` int DEFAULT NULL,
  `AccountNumber` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.personcreditcard`
--

DROP TABLE IF EXISTS `sales.personcreditcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.personcreditcard` (
  `BusinessEntityID` int DEFAULT NULL,
  `CreditCardID` int DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.salesorderheadersalesreason`
--

DROP TABLE IF EXISTS `sales.salesorderheadersalesreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.salesorderheadersalesreason` (
  `SalesOrderID` int DEFAULT NULL,
  `SalesReasonID` int DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.salesreason`
--

DROP TABLE IF EXISTS `sales.salesreason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.salesreason` (
  `SalesReasonID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ReasonType` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.salesterritoryhistory`
--

DROP TABLE IF EXISTS `sales.salesterritoryhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.salesterritoryhistory` (
  `BusinessEntityID` int DEFAULT NULL,
  `TerritoryID` int DEFAULT NULL,
  `StartDate` timestamp NULL DEFAULT NULL,
  `EndDate` timestamp NULL DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.shoppingcartitem`
--

DROP TABLE IF EXISTS `sales.shoppingcartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.shoppingcartitem` (
  `ShoppingCartItemID` int DEFAULT NULL,
  `ShoppingCartID` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `DateCreated` timestamp NULL DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.specialofferproduct`
--

DROP TABLE IF EXISTS `sales.specialofferproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.specialofferproduct` (
  `SpecialOfferID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales.store`
--

DROP TABLE IF EXISTS `sales.store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales.store` (
  `BusinessEntityID` int DEFAULT NULL,
  `Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `SalesPersonID` int DEFAULT NULL,
  `Demographics` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `rowguid` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15 13:31:08
