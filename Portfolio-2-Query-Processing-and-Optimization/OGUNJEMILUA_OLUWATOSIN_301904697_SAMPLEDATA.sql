INSERT INTO Branch VALUES
(1,'Victoria Island Branch','VI001','12 Adeola Odeku','Lagos','Lagos','Nigeria','08030000001'),
(2,'Ikeja Branch','IK001','45 Allen Avenue','Lagos','Lagos','Nigeria','08030000002'),
(3,'Abuja Branch','ABJ001','20 Central Business District','Abuja','FCT','Nigeria','08030000003'),
(4,'Port Harcourt Branch','PH001','15 Aba Road','Port Harcourt','Rivers','Nigeria','08030000004'),
(5,'Ibadan Branch','IB001','25 Ring Road','Ibadan','Oyo','Nigeria','08030000005');

INSERT INTO Customer VALUES
(1,'John','Doe','1990-05-10','M','08011111111','john@email.com','12 Palm Avenue','Lagos','Lagos','Nigeria','100001','Individual',GETDATE(),'Active'),
(2,'Mary','James','1992-08-12','F','08022222222','mary@email.com','22 Admiralty Way','Lagos','Lagos','Nigeria','100002','Individual',GETDATE(),'Active'),
(3,'Ahmed','Bello','1988-03-25','M','08033333333','ahmed@email.com','15 Ahmadu Bello','Abuja','FCT','Nigeria','100003','Individual',GETDATE(),'Active'),
(4,'Grace','Eze','1994-07-17','F','08044444444','grace@email.com','10 GRA','Port Harcourt','Rivers','Nigeria','100004','Individual',GETDATE(),'Active'),
(5,'David','Ade','1989-11-30','M','08055555555','david@email.com','5 Ring Road','Ibadan','Oyo','Nigeria','100005','Individual',GETDATE(),'Active'),
(6,'Sarah','Ojo','1996-01-15','F','08066666666','sarah@email.com','7 Awolowo Road','Lagos','Lagos','Nigeria','100006','Individual',GETDATE(),'Active'),
(7,'Michael','Okafor','1987-09-10','M','08077777777','michael@email.com','11 Independence Layout','Enugu','Enugu','Nigeria','100007','Individual',GETDATE(),'Active'),
(8,'Aisha','Usman','1995-04-20','F','08088888888','aisha@email.com','9 Garki','Abuja','FCT','Nigeria','100008','Individual',GETDATE(),'Active'),
(9,'Peter','Johnson','1991-12-12','M','08099999999','peter@email.com','19 Marina','Lagos','Lagos','Nigeria','100009','Individual',GETDATE(),'Active'),
(10,'Chioma','Nwosu','1993-06-08','F','08010101010','chioma@email.com','13 Trans Ekulu','Enugu','Enugu','Nigeria','100010','Individual',GETDATE(),'Active');

INSERT INTO KYC_Record VALUES
(1,1,'11111111111','National ID','NIN1001',GETDATE(),'Verified'),
(2,2,'22222222222','National ID','NIN1002',GETDATE(),'Verified'),
(3,3,'33333333333','International Passport','IP1003',GETDATE(),'Verified'),
(4,4,'44444444444','Driver License','DL1004',GETDATE(),'Verified'),
(5,5,'55555555555','National ID','NIN1005',GETDATE(),'Verified');

INSERT INTO Account VALUES
(101,1,1,'1000000001','Savings',2500000,'NGN',GETDATE(),'Active'),
(102,2,1,'1000000002','Current',800000,'NGN',GETDATE(),'Active'),
(103,3,2,'1000000003','Savings',1200000,'NGN',GETDATE(),'Active'),
(104,4,3,'1000000004','Current',450000,'NGN',GETDATE(),'Active'),
(105,5,4,'1000000005','Savings',3200000,'NGN',GETDATE(),'Active'),
(106,6,2,'1000000006','Savings',950000,'NGN',GETDATE(),'Active'),
(107,7,5,'1000000007','Current',600000,'NGN',GETDATE(),'Active'),
(108,8,3,'1000000008','Savings',1750000,'NGN',GETDATE(),'Active'),
(109,9,1,'1000000009','Current',890000,'NGN',GETDATE(),'Active'),
(110,10,5,'1000000010','Savings',2200000,'NGN',GETDATE(),'Active');

INSERT INTO Loan VALUES
(1,1,'Personal',500000,12.5,24,'2025-01-10','2025-01-15','Approved'),
(2,2,'Business',1500000,15.5,36,'2025-02-01','2025-02-10','Approved'),
(3,5,'Mortgage',5000000,10.5,120,'2025-03-01','2025-03-10','Approved'),
(4,8,'Personal',700000,13.0,24,'2025-04-01','2025-04-05','Pending'),
(5,10,'Auto',1200000,11.5,48,'2025-05-01','2025-05-10','Approved');

INSERT INTO Employee VALUES
(1,1,'James','Adeniyi','Branch Manager','Operations','james@apex.com','08070000001',GETDATE()),
(2,2,'Ruth','Okoro','Customer Service Officer','Retail Banking','ruth@apex.com','08070000002',GETDATE()),
(3,3,'Yusuf','Ali','Loan Officer','Credit','yusuf@apex.com','08070000003',GETDATE()),
(4,4,'Ngozi','Eze','Operations Officer','Operations','ngozi@apex.com','08070000004',GETDATE()),
(5,5,'Segun','Adebayo','Branch Manager','Operations','segun@apex.com','08070000005',GETDATE());

INSERT INTO Transactions VALUES
(1001,101,'Deposit',800000,'2026-01-10','REF001','Cash Deposit','Completed'),
(1002,101,'Withdrawal',200000,'2026-01-12','REF002','ATM Withdrawal','Completed'),
(1003,102,'Deposit',650000,'2026-01-13','REF003','Transfer Credit','Completed'),
(1004,103,'Deposit',900000,'2026-01-14','REF004','Cash Deposit','Completed'),
(1005,104,'Withdrawal',100000,'2026-01-15','REF005','ATM Withdrawal','Completed'),
(1006,105,'Deposit',1500000,'2026-01-16','REF006','Salary Credit','Completed'),
(1007,106,'Deposit',700000,'2026-01-17','REF007','Transfer Credit','Completed'),
(1008,107,'Deposit',550000,'2026-01-18','REF008','Cash Deposit','Completed'),
(1009,108,'Withdrawal',300000,'2026-01-19','REF009','POS Transaction','Completed'),
(1010,109,'Deposit',950000,'2026-01-20','REF010','Cash Deposit','Completed'),
(1011,110,'Deposit',1800000,'2026-01-21','REF011','Salary Credit','Completed'),
(1012,105,'Withdrawal',250000,'2026-01-22','REF012','Online Purchase','Completed');

INSERT INTO Card VALUES
(1,101,'5000111122223333','Debit','2025-01-01','2028-01-01','Active'),
(2,102,'5000111122223334','Debit','2025-01-01','2028-01-01','Active'),
(3,103,'5000111122223335','Credit','2025-01-01','2028-01-01','Active'),
(4,104,'5000111122223336','Debit','2025-01-01','2028-01-01','Active'),
(5,105,'5000111122223337','Credit','2025-01-01','2028-01-01','Active')

INSERT INTO Transaction_Log VALUES
(1,1001,'CREATE','System',GETDATE(),'Transaction Created'),
(2,1002,'CREATE','System',GETDATE(),'Transaction Created'),
(3,1003,'CREATE','System',GETDATE(),'Transaction Created'),
(4,1004,'CREATE','System',GETDATE(),'Transaction Created'),
(5,1005,'CREATE','System',GETDATE(),'Transaction Created');