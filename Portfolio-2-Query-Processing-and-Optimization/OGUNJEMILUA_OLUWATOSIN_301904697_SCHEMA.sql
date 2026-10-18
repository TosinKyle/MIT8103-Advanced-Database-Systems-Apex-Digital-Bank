--DATABASE CREATION SCRIPTS

CREATE DATABASE ApexDigitalBank;
GO

USE ApexDigitalBank;
GO

-- BRANCH

CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100) NOT NULL,
    BranchCode VARCHAR(10) UNIQUE NOT NULL,
    StreetAddress VARCHAR(150),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    PhoneNumber VARCHAR(15)
);

-- CUSTOMER

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Gender CHAR(1),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50),
    StreetAddress VARCHAR(150),
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    PostalCode VARCHAR(20),
    CustomerType VARCHAR(20),
    RegistrationDate DATETIME,
    Status VARCHAR(20)
);

-- KYC RECORD

CREATE TABLE KYC_Record (
    KYC_ID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    BVN VARCHAR(11) UNIQUE,
    DocumentType VARCHAR(50),
    DocumentNumber VARCHAR(50),
    VerificationDate DATETIME,
    VerificationStatus VARCHAR(20),

    CONSTRAINT FK_KYC_Customer
    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID)
);

-- ACCOUNT

CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    BranchID INT NOT NULL,
    AccountNumber VARCHAR(20) UNIQUE NOT NULL,
    AccountType VARCHAR(20),
    Balance DECIMAL(18,2),
    Currency VARCHAR(10),
    DateOpened DATETIME,
    AccountStatus VARCHAR(20),

    CONSTRAINT FK_Account_Customer
    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID),

    CONSTRAINT FK_Account_Branch
    FOREIGN KEY (BranchID)
    REFERENCES Branch(BranchID)
);

-- LOAN

CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    LoanType VARCHAR(30),
    LoanAmount DECIMAL(18,2),
    InterestRate DECIMAL(5,2),
    LoanTerm INT,
    ApplicationDate DATETIME,
    ApprovalDate DATETIME,
    LoanStatus VARCHAR(20),

    CONSTRAINT FK_Loan_Customer
    FOREIGN KEY (CustomerID)
    REFERENCES Customer(CustomerID)
);

-- EMPLOYEE

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    BranchID INT NOT NULL,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    JobTitle VARCHAR(50),
    Department VARCHAR(50),
    Email VARCHAR(50),
    PhoneNumber VARCHAR(15),
    EmploymentDate DATETIME,

    CONSTRAINT FK_Employee_Branch
    FOREIGN KEY (BranchID)
    REFERENCES Branch(BranchID)
);

-- TRANSACTIONS

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT NOT NULL,
    TransactionType VARCHAR(30),
    Amount DECIMAL(18,2),
    TransactionDate DATETIME,
    ReferenceNumber VARCHAR(50),
    Description VARCHAR(255),
    TransactionStatus VARCHAR(20),

    CONSTRAINT FK_Transactions_Account
    FOREIGN KEY (AccountID)
    REFERENCES Account(AccountID)
);

-- CARD

CREATE TABLE Card (
    CardID INT PRIMARY KEY,
    AccountID INT NOT NULL,
    CardNumber VARCHAR(20) UNIQUE,
    CardType VARCHAR(20),
    IssueDate DATETIME,
    ExpiryDate DATETIME,
    CardStatus VARCHAR(20),

    CONSTRAINT FK_Card_Account
    FOREIGN KEY (AccountID)
    REFERENCES Account(AccountID)
);
-- TRANSACTION LOG

CREATE TABLE Transaction_Log (
    LogID INT PRIMARY KEY,
    TransactionID INT NOT NULL,
    ActionPerformed VARCHAR(100),
    PerformedBy VARCHAR(100),
    LogTimestamp DATETIME,
    Remarks VARCHAR(255),

    CONSTRAINT FK_Log_Transaction
    FOREIGN KEY (TransactionID)
    REFERENCES Transactions(TransactionID)
);
GO

