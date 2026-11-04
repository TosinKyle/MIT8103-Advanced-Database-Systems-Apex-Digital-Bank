# MIT 8103 - Advanced Database Systems

## Student Information

- **Student Name:** Oluwatosin Ogunjemilua
- **Student ID:** 301904697
- **Matriculation Number:** 2026/A/MIT/0050
- **Academic Session:** 2026/2027
- **Course:** MIT 8103 Advanced Database Systems

## GitHub Repository

**Repository URL:**  
https://github.com/TosinKyle/MIT8103-Advanced-Database-Systems-Apex-Digital-Bank

# Portfolio 5: Distributed and Cloud Database

## Objective

To demonstrate the design and evaluation of distributed and cloud database technologies for the Apex Digital Bank case study while examining their role in improving scalability, availability, fault tolerance, and business continuity for modern banking systems.

## Introduction

Apex Digital Bank delivers digital banking services including customer account management, transaction processing, loan administration, card management, and Know Your Customer (KYC) verification.

As customer numbers and transaction volumes increase, traditional single-server database architectures may struggle to provide the scalability, availability, and fault tolerance required for continuous banking operations.

This portfolio explores how distributed database systems and cloud database technologies can address these challenges through data replication, sharding, high availability mechanisms, consistency management, and cloud deployment strategies.

Key topics examined include:

- Distributed Database Systems
- Cloud Database Systems
- Database Replication
- Database Sharding
- Availability and Consistency
- ACID Properties
- CAP Theorem
- BASE Model
- Cloud Database Deployment using Microsoft Azure SQL Database

---

## 1. Distributed Database System

### Overview

A Distributed Database System (DDBS) consists of multiple interconnected databases distributed across different servers or locations that function as a single unified database system.

Distributed databases support:

- Scalability
- Availability
- Fault Tolerance
- Improved Performance

### Apex Digital Bank Application

Customer, account, loan, and transaction data can be distributed across multiple database servers. If one server fails, another database node can continue processing requests, ensuring uninterrupted banking services.

### Benefits

- Improved scalability
- Increased availability
- Better fault tolerance
- Faster processing performance
- Reduced risk of downtime

---

## 2. Cloud Database System

### Overview

A cloud database is a database hosted within a cloud environment such as Microsoft Azure, Amazon Web Services (AWS), or Google Cloud Platform (GCP).

Unlike traditional on-premises databases, cloud databases provide scalable computing resources and managed database services.

### Key Advantages

- Elastic scalability
- Global accessibility
- Automated maintenance
- High availability
- Reduced infrastructure management

### Suitability

For Apex Digital Bank, cloud databases provide the flexibility to handle increasing customer volumes while maintaining secure and reliable access to critical banking information.

---

## 3. Distributed Database Architecture

### Overview

The proposed distributed architecture consists of:

- Mobile Banking Users
- Internet Banking Users
- Load Balancer
- Primary Database
- Secondary Database
- Disaster Recovery Database

### How It Works

Customer requests are routed through a load balancer.

The Primary Database handles core transactions while the Secondary Database maintains replicated data for failover support. A Disaster Recovery Database provides backup and recovery capabilities in the event of a major outage.

### Benefits

- Improved fault tolerance
- Reduced downtime
- Better transaction processing
- Enhanced scalability
- Business continuity support

---

## 4. Replication

### Overview

Replication involves maintaining multiple synchronized copies of the same data across different database servers.

### Apex Digital Bank Application

Customer, account, loan, and transaction data are replicated from the Primary Database to Secondary and Disaster Recovery databases.

### Example

When a customer transfers ₦100,000:

1. The transaction is written to the Primary Database.
2. The record is replicated to the Secondary Database.
3. The information is synchronized with the Disaster Recovery site.

### Benefits

- High availability
- Data redundancy
- Disaster recovery
- Improved fault tolerance

### Suitability

Replication ensures that banking services remain operational even when a database server becomes unavailable.

---

## 5. Sharding

### Overview

Sharding is a database scaling technique that partitions data across multiple servers known as shards.

### Apex Digital Bank Application

Customer records can be distributed as follows:

| Shard | Customer Range |
|---------|--------------|
| Shard 1 | CustomerID 1 – 50,000 |
| Shard 2 | CustomerID 50,001 – 100,000 |
| Shard 3 | CustomerID 100,001 – 150,000 |

### Benefits

- Faster query execution
- Improved database performance
- Better scalability
- Reduced server workload

### Suitability

Sharding enables the bank to support a growing customer base without overloading a single database server.

---

## 6. Availability

### Overview

Availability ensures that banking services remain accessible even when hardware, software, or network failures occur.

### Availability Measures

- Database Replication
- Failover Clustering
- Backup Servers
- Disaster Recovery Sites
- Cloud Infrastructure

### Example

If the Primary Database becomes unavailable:

- Primary Database → Offline
- Secondary Database → Active

Banking operations continue without interruption.

### Benefits

- Continuous service delivery
- Reduced downtime
- Improved customer experience
- Business continuity

---

## 7. Consistency

### Overview

Consistency ensures that all database copies contain accurate and synchronized information.

### Banking Example

When funds are transferred:

- Account A is debited ₦50,000
- Account B is credited ₦50,000

Both actions must succeed or the transaction is rolled back.

### Importance

- Prevents inaccurate balances
- Prevents duplicate transactions
- Maintains customer trust
- Supports regulatory compliance

---

## 8. ACID Properties

### Overview

ACID properties ensure reliable transaction processing within the banking environment.

### Atomicity

Transactions are completed entirely or not at all.

### Consistency

The database remains accurate and valid before and after every transaction.

### Isolation

Concurrent transactions do not interfere with one another.

### Durability

Committed transactions remain permanently stored.

### Suitability

ACID properties are essential for banking systems because financial transactions require the highest levels of accuracy and reliability.

---

## 9. CAP Theorem

### Overview

The CAP Theorem states that a distributed database can guarantee only two of the following properties simultaneously:

- Consistency (C)
- Availability (A)
- Partition Tolerance (P)

### Apex Digital Bank Application

The bank prioritizes:

✓ Consistency

✓ Partition Tolerance

Availability remains a secondary priority during network failures.

### Benefits

This approach helps prevent:

- Double spending
- Duplicate transactions
- Data inconsistencies
- Incorrect account balances

---

## 10. BASE Model

### Overview

The BASE Model is commonly associated with NoSQL databases and large-scale distributed systems.

| Property | Meaning |
|-----------|-----------|
| Basically Available | System remains operational |
| Soft State | Data may temporarily vary between nodes |
| Eventual Consistency | Data eventually becomes synchronized |

### Example

A customer profile update written to one MongoDB node is gradually propagated to all remaining nodes until consistency is achieved.

### Suitability

The BASE model is useful for highly scalable distributed systems where availability is prioritized.

---

## 11. Cloud Database Deployment

### Overview

Apex Digital Bank can deploy its database using Microsoft Azure SQL Database.

### Benefits

- Managed database service
- Automatic backups
- High availability
- Built-in security
- Automated patching
- Geo-replication
- Disaster recovery support

### Suitability

Azure SQL Database provides a secure, scalable, and highly available platform capable of supporting modern banking operations.

---

## Conclusion

This portfolio demonstrated how distributed and cloud database technologies can be implemented within Apex Digital Bank to improve scalability, availability, fault tolerance, and business continuity.

Key concepts including replication, sharding, consistency, availability, ACID properties, CAP Theorem, BASE Model, and Microsoft Azure SQL Database deployment were examined and evaluated.

The study shows that distributed and cloud database technologies provide a reliable and scalable foundation capable of supporting the operational requirements of a modern digital banking institution.
