--TABLE-1--

create table Account_Data(
	Account_id varchar(100) primary key,
	Account_type varchar (100),
	Account_holder varchar (100),
	Balance float ,
	create_date date
)
select * from Account_Data
insert into Account_Data values(01,'Checking','Holder_01',2964.22,'2/24/2016')

copy Account_Data from 'D:\POWER  BI TASKS\Task 6\Account csv Data.csv' DELIMITER ',' csv header;
select * from Account_Data

--TABLE-2--
	
	create table Loan_Data(
	Loan_id varchar (100) primary key,
	Account_id varchar (100),
	Loan_type varchar (100),
	Loan_amount float,
	Transaction_date date,
	Interest_rate float
)
select * from Loan_Data
insert into Loan_Data values(1,561,'Auto',156116.22,'5/13/2018',6.59)

copy Loan_Data from 'D:\POWER  BI TASKS\Task 6\Loan csv Data.csv' DELIMITER ',' csv header;
select * from Loan_Data

--TABLE-3--

create table Transaction_Data(
	Transaction_id varchar (100),
	Account_id varchar (100),
	Transaction_type varchar (100),
	Amount float,
	Transaction_date date
)
select * from Transaction_Data
insert into Transaction_Data values(1,389,'Withdrawal',7253.07,'7/9/2024')

copy Transaction_Data from 'D:\POWER  BI TASKS\Task 6\Transaction csv Data.csv' DELIMITER ',' csv header;
select * from Transaction_Data

--TABLE-4--

create table Payment_Data(
	Payment_id varchar (100),
	Loan_id varchar (100),
	Paymant_amount float,
	Payment_date date,
	Payment_method varchar (100),
	Status varchar (100)
)
select * from Payment_Data
insert into Payment_Data values(1,440,8776.54,'8/25/2024','Bank Transfer','Completed')

copy Payment_Data from 'D:\POWER  BI TASKS\Task 6\Payment csv Data.csv' DELIMITER ',' csv header;
select * from Payment_Data

--FULL JOIN QUERY--

SELECT * FROM Account_Data AS A
FULL JOIN Loan_Data AS L
ON A.Account_id=L.Loan_id

SELECT * FROM Transaction_Data AS T
FULL JOIN Payment_Data AS P
ON T.Transaction_id=P.Payment_id

	
	