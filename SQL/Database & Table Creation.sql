CREATE DATABASE [DA P#1]
USE [DA P#1]
GO

CREATE TABLE [Customers] (
  [CustomerID] int,
  [Name] varchar(50),
  [Gender] varchar(10),
  [Age] int,
  [Location] varchar(100),
  [JoinDate] date,
  PRIMARY KEY ([CustomerID])
);
CREATE TABLE [Products] (
  [ProductID] int,
  [ProductN ame] varchar(50),
  [Category] varchar(30),
  [SubCategory] varchar(30),
  [UnitPrice] decimal(10,2),
  PRIMARY KEY ([ProductID])
);
CREATE TABLE [Sales] (
  [SaleID] int,
  [CustomerID] int,
  [ProductID] int,
  [Quantity] int,
  [Discount] decimal(4,2),
  [SaleDate] date,
  PRIMARY KEY ([SaleID]),
CONSTRAINT [FK_Sales_CustomerID]
    FOREIGN KEY ([CustomerID])
      REFERENCES [Customers]([CustomerID]),
CONSTRAINT [FK_Sales_ProductID]
    FOREIGN KEY ([ProductID])
      REFERENCES [Products]([ProductID])
);
CREATE TABLE [Payments] (
  [PaymentID] int,
  [SaleID] int,
  [PaymentMethod] varchar(20),
  [Amount] decimal(10,2),
  [PaymentDate] date,
  PRIMARY KEY ([PaymentID]),
  CONSTRAINT [FK_Payments_SaleID]
    FOREIGN KEY ([SaleID])
      REFERENCES [Sales]([SaleID])
);

select * from Sales
select * from Customers
select * from Products
select * from Payments