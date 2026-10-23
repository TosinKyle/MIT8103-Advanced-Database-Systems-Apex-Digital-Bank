# MIT 8103 – Advanced Database Systems
## Portfolio 3: Transactions and Concurrency

### Student Information

- **Student Name:** Oluwatosin Ogunjemilua
- **Student ID:** 301904697
- **Matriculation Number:** 2026/A/MIT/0050
- **Academic Session:** 2026/2027
- **Course:** MIT 8103 – Advanced Database Systems

### Repository

GitHub Repository:
[MIT8103-Advanced-Database-Systems-Apex-Digital-Bank](https://github.com/TosinKyle/MIT8103-Advanced-Database-Systems-Apex-Digital-Bank)

---

# Portfolio 3: Transactions and Concurrency

## Overview

This portfolio demonstrates the implementation of transaction management and concurrency control mechanisms within the Apex Digital Bank database using Microsoft SQL Server. The practical exercises focus on maintaining data integrity, consistency, reliability, and secure concurrent access to banking records.

The portfolio provides evidence of transactional processing through COMMIT and ROLLBACK operations, isolation level implementation, concurrency control mechanisms, and the application of ACID properties.

---

## Objectives

- Demonstrate transaction management using SQL Server.
- Implement COMMIT and ROLLBACK operations.
- Explore transaction isolation levels.
- Demonstrate concurrency control and locking mechanisms.
- Explain and apply ACID properties in a banking environment.
- Provide practical evidence through SQL queries, outputs, and screenshots.

---

## Database Environment

**Database Name:** ApexDigitalBank

### Core Tables Used

- Account
- Customer
- Branch
- Transactions
- Transaction_Log
- Loan
- Card
- Employee
- KYC_Record

The Account table was primarily used for transaction and concurrency demonstrations due to its role in managing customer balances and account information.

---

## Activities Performed

### 1. COMMIT Transaction Demonstration

A fund transfer of ₦50,000 was executed between two customer accounts using SQL Server transactions.

The transaction was completed successfully using the COMMIT statement, making all updates permanent.

**Demonstrated Concepts:**

- Transaction processing
- Atomic operations
- Permanent data persistence
- Consistency maintenance

---

### 2. ROLLBACK Transaction Demonstration

An account balance update was attempted and later reversed using the ROLLBACK statement.

SQL Server successfully restored the original account balance and cancelled all uncommitted changes.

**Demonstrated Concepts:**

- Transaction recovery
- Error handling
- Data consistency
- Atomicity

---

### 3. Isolation Level Demonstration

The READ COMMITTED isolation level was implemented to ensure that only committed data could be accessed during transaction execution.

**Demonstrated Concepts:**

- Isolation levels
- Prevention of dirty reads
- Consistent data access

---

### 4. Concurrency Control Demonstration

Two SQL Server sessions were used to simulate concurrent database access.

An active transaction updated AccountID 101 while maintaining a lock on the affected record. A second session attempted to access the same record and experienced a delay until the transaction was committed.

After the COMMIT operation, the lock was released and access was granted.

**Demonstrated Concepts:**

- Concurrent transaction management
- Locking mechanisms
- Resource control
- Data integrity preservation

---

## ACID Properties Demonstrated

### Atomicity

Transactions were executed as a single logical unit of work. Operations were either fully committed or fully rolled back.

### Consistency

Database integrity rules remained valid before and after transaction execution.

### Isolation

SQL Server ensured that concurrent transactions operated independently through locking and isolation mechanisms.

### Durability

Committed transactions remained permanently stored in the database even after transaction completion.

---

## Evidence Included

This portfolio contains:

- COMMIT transaction screenshots
- ROLLBACK transaction screenshots
- Isolation level implementation screenshots
- Concurrency control screenshots
- Transaction output evidence
- Analysis and explanations

---

## Key Learning Outcomes

Through this exercise, practical experience was obtained in:

- SQL Server transaction management
- Concurrency control mechanisms
- Transaction recovery techniques
- Database consistency management
- Isolation level implementation
- ACID-compliant database operations

These concepts are critical requirements for modern banking and financial database systems where reliability, accuracy, and multi-user access must be carefully controlled.

---

## Conclusion

Portfolio 3 successfully demonstrated the use of SQL Server transaction management and concurrency control techniques within the Apex Digital Bank database. COMMIT and ROLLBACK operations ensured reliable transaction execution, while isolation levels and locking mechanisms maintained consistency during concurrent access. The implementation of ACID principles further strengthened the integrity and reliability of banking operations within the database environment.

---
