-- =====================================
-- INDEXES FOR PORTFOLIO 2
-- =====================================

CREATE INDEX IDX_Account_Customer
ON Account(CustomerID);

CREATE INDEX IDX_Account_Branch
ON Account(BranchID);

CREATE INDEX IDX_Loan_Customer
ON Loan(CustomerID);

CREATE INDEX IDX_Card_Account
ON Card(AccountID);

CREATE INDEX IDX_Transaction_Account
ON Transactions(AccountID);

CREATE INDEX IDX_Transaction_Amount
ON Transactions(Amount);
GO