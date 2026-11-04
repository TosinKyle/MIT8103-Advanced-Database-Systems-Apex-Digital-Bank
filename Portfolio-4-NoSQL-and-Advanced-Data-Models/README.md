# ADVANCED DATABASE SYSTEMS PORTFOLIO 4
## MIT 8103 - Advanced Database Systems

### Student Information
- **Student Name:** Oluwatosin Ogunjemilua
- **Student ID:** 301904697
- **Matriculation Number:** 2026/A/MIT/0050
- **Academic Session:** 2026/2027
- **Course:** MIT 8103 Advanced Database Systems

### GitHub Repository
**Repository URL:**  
https://github.com/TosinKyle/MIT8103-Advanced-Database-Systems-Apex-Digital-Bank

---

# Portfolio 4: NoSQL and Advanced Data Models

## Objective

To demonstrate the design and implementation of NoSQL and advanced data models for the Apex Digital Bank case study while evaluating their suitability for modern banking applications.

---

## Introduction

The Apex Digital Bank database was initially developed using a relational database management system (SQL Server). To improve scalability, flexibility, and support for high-volume data processing, the database architecture was redesigned using NoSQL concepts and advanced data models.

This portfolio demonstrates the application of four major NoSQL approaches:

- Document Model (MongoDB)
- Key-Value Model
- Column-Family Model
- Graph Model

The goal is to evaluate how each model can address specific banking requirements and support modern digital banking systems.

---

# 1. Document Model (MongoDB)

## Overview

MongoDB is a popular open-source NoSQL database used to store, manage, and retrieve large volumes of data efficiently. Unlike traditional relational databases that store data in tables and rows, MongoDB stores data as flexible JSON-like BSON documents.

The document model organizes information in self-contained documents that can embed related information.

## Database Creation

### Database
ApexDigitalBank_NoSQL

### Collection
customers

## Sample Customer Document

{
  "CustomerID": 3,
  "CustomerName": "Michael Johnson",
  "Email": "michael.johnson@apexbank.com",
  "Phone": "08011223344",
  "Accounts": [
    {
      "AccountID": 103,
      "AccountNumber": "1000000003",
      "AccountType": "Savings",
      "Balance": 3200000,
      "Currency": "NGN"
    }
  ]
}

## Activities Performed

- Created the MongoDB database.
- Created the customer collection.
- Inserted customer documents.
- Retrieved customer records using query filters.
- Validated data storage and retrieval using MongoDB Compass.

## Suitability

MongoDB is highly suitable for Apex Digital Bank because customer profiles, accounts, loans, and cards can be stored within a single document structure. This reduces the need for complex joins and improves retrieval performance.

### Benefits

- Flexible schema
- Faster data retrieval
- Horizontal scalability
- Rapid application development
- High availability

---

# 2. Key-Value Model

## Overview

The key-value model stores information as unique keys associated with corresponding values.

## Example

{
  "Customer_101": {
    "Balance": 2500000
  }
}

## Banking Use Cases

- Session management
- Authentication token storage
- Account balance caching
- Fast lookup operations

## Suitability

The key-value model provides immediate access to frequently requested banking information, making it highly effective for performance-critical operations.

### Benefits

- Extremely fast retrieval
- Simple data structure
- Easy scalability
- Excellent caching support

---

# 3. Column-Family Model

## Overview

The column-family model stores related data together in grouped columns. This model is commonly implemented in systems such as Apache Cassandra and HBase.

## Example

CustomerID: 101

PersonalInfo:
    Name
    Email
    Phone

Accounts:
    AccountNumber
    Balance

Loans:
    LoanAmount
    LoanStatus

## Banking Use Cases

- Transaction history management
- Financial analytics
- Large-scale reporting
- High-volume customer records

## Suitability

The column-family model is ideal for handling massive banking datasets and analytical workloads.

### Benefits

- High scalability
- Efficient reporting
- Optimized read/write performance
- Distributed architecture support

---

# 4. Graph Model

## Overview

Graph databases store data using nodes, relationships (edges), and properties.

## Example

(Customer)
      |
     OWNS
      |
  (Account)
      |
  PERFORMS
      |
(Transaction)

## Banking Use Cases

- Fraud detection
- Relationship analysis
- Risk assessment
- Transaction pattern identification

## Suitability

Graph databases are highly effective for analyzing relationships between customers, accounts, and transactions, enabling advanced fraud detection and monitoring.

### Benefits

- Relationship-focused analysis
- Faster traversal of connected data
- Effective fraud detection
- Real-time network analysis

---

# Comparative Analysis

| Model | Strength | Banking Use Case |
|---------|-----------|-----------------|
| Document | Flexible schema | Customer profiles and accounts |
| Key-Value | Very fast lookups | Session caching |
| Column-Family | Massive scalability | Transaction analytics |
| Graph | Relationship analysis | Fraud detection |

---

# Conclusion

This portfolio demonstrated the implementation and evaluation of NoSQL and advanced data models using the Apex Digital Bank case study.

MongoDB was used to implement a document-oriented database, while key-value, column-family, and graph database models were analyzed and evaluated. The study showed that each model provides unique advantages depending on business requirements.

Key findings include:

- **Document databases** provide flexibility and simplified data management.
- **Key-value databases** offer extremely fast retrieval performance.
- **Column-family databases** support large-scale analytical processing.
- **Graph databases** excel at relationship analysis and fraud detection.


---

