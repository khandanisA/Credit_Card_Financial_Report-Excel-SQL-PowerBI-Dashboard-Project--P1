---Create Database.
create database ccdb

---Create Tables.
create table cc_details(Client_Num int,
                        Card_Category varchar(10),
						Annual_Fees int,
						Activation_30_Days int,
						Customer_Acq_Cost int,
						Week_Start_Date date,
						Week_Num varchar(10),
						Qtr varchar(5),
						current_year int,
						Credit_Limit numeric(10,2),
						Total_Revolving_Bal int,
						Total_Trans_Amt int,
						Total_Trans_Vol int,
						Avg_Utilization_Ratio numeric(10,3),
						Use_Chip varchar(10),
						Exp_Type varchar(20),
						Interest_Earned numeric(10,2),
						Delinquent_Acc int
						);

create table cust_details(Client_Num int,
                       Customer_Age int,
					   Gender varchar(5),
					   Dependent_Count int,
					   Education_Level varchar(20),
					   Marital_Status varchar(10),
					   state_cd varchar(5),
					   Zipcode int,
					   Car_Owner varchar(5),
					   House_Owner varchar(5),
					   Personal_loan varchar(5),
					   contact varchar(10),
					   Customer_Job varchar(15),
					   Income int,
					   Cust_Satisfaction_Score int
					   );

---Import Data.

--Importing data into cc_details table.
select * from cc_details;

COPY cc_details(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost,
                Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit,
                Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Vol,
                Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
FROM 'C:\\Users\\MD DANISH KHAN\\OneDrive\\Desktop\\Credit Card Financial Dashboard\\credit_card.csv'
DELIMITER ','
CSV HEADER;

--Importing data into cust_details table.
select * from cust_details;

COPY cust_details(Client_Num, Customer_Age, Gender, Dependent_Count, Education_Level, Marital_Status, state_cd,
               Zipcode, Car_Owner, House_Owner, Personal_loan, contact, Customer_Job, Income,
               Cust_Satisfaction_Score)
FROM 'C:\\Users\\MD DANISH KHAN\\OneDrive\\Desktop\\Credit Card Financial Dashboard\\customer.csv'
DELIMITER ','
CSV HEADER;


---Add Data...
--Insert Data into cc_details table.
COPY cc_details(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost,
                Week_Start_Date, Week_Num, Qtr, current_year, Credit_Limit,
                Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Vol,
                Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
FROM 'C:\\Users\\MD DANISH KHAN\\OneDrive\\Desktop\\Credit Card Financial Dashboard\\credit_card.add.csv'
DELIMITER ','
CSV HEADER;

--Insert data into cust_details table.
COPY cust_details(Client_Num, Customer_Age, Gender, Dependent_Count, Education_Level, Marital_Status, state_cd,
               Zipcode, Car_Owner, House_Owner, Personal_loan, contact, Customer_Job, Income,
               Cust_Satisfaction_Score)
FROM 'C:\\Users\\MD DANISH KHAN\\OneDrive\\Desktop\\Credit Card Financial Dashboard\\customer.add.csv'
DELIMITER ','
CSV HEADER;

 