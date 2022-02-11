CREATE TABLE [customer] (
[C_SSN] nvarchar(255) not null primary key,
[sex] nvarchar(255),
[C_Fname] nvarchar(255),
[C_Lname] nvarchar(255),
[C_Country] nvarchar(255),
[H_ID] nvarchar(255),
[RES_no] float, FOREIGN KEY (H_ID) REFERENCES hotel(H_ID),FOREIGN KEY (RES_no) REFERENCES reservation(res_no)
)

CREATE TABLE [CustomerMail] (
[C_SSN] nvarchar(255),
[C_Email] nvarchar(255), CONSTRAINT CUS_mail PRIMARY KEY (C_SSN,C_Email),FOREIGN KEY (C_SSN) REFERENCES customer(C_SSN)
)

CREATE TABLE [CustomerMobile] (
[C_SSN] nvarchar(255),
[C_mobile] nvarchar(255),CONSTRAINT CUS_mob PRIMARY KEY (C_SSN,C_mobile),FOREIGN KEY (C_SSN) REFERENCES customer(C_SSN)
)

CREATE TABLE [dependant] (
[relation] nvarchar(255),
[D_name] nvarchar(255),
[E_SSN] nvarchar(255),CONSTRAINT DEP_no PRIMARY KEY (E_SSN,D_name), FOREIGN KEY (E_SSN) REFERENCES employee(E_SSN)
)

CREATE TABLE [EmployeeMail] (
[E_mail] nvarchar(255),
[E_SSN] nvarchar(255),PRIMARY KEY (E_SSN,E_mail),FOREIGN KEY (E_SSN) REFERENCES employee(E_SSN)
)

CREATE TABLE [EmpolyeeMobile] (
[E_mobile] nvarchar(255),
[E_SSN] nvarchar(255),PRIMARY KEY (E_SSN,E_mobile),FOREIGN KEY (E_SSN) REFERENCES employee(E_SSN)
)

CREATE TABLE [employee] (
[E_Fname] nvarchar(255),
[E_Lname] nvarchar(255),
[E_sex] nvarchar(255),
[E_DOB] datetime,
[E_ID] float ,
[E_SSN] nvarchar(255) not null primary key,
[SUP_SSN] nvarchar(255),
[H_ID] nvarchar(255),
[E_Salary] float, FOREIGN KEY (SUP_SSN) REFERENCES employee(E_SSN),FOREIGN KEY (H_ID) REFERENCES hotel(H_ID)
)

CREATE TABLE [hotel] (
[H_zone] nvarchar(255),
[H_description] nvarchar(max),
[H_street] nvarchar(255),
[H_name] nvarchar(255),
[H_type] nvarchar(255),
[H_ID] nvarchar(255) not null primary key
)

CREATE TABLE [reservation] (
[res_no] float not null primary key,
[no_of_rooms] float,
[no_of_guests] float,
[date_in] datetime,
[date_out] datetime,
[payment($)] float
)

CREATE TABLE [room] (
[R_category] nvarchar(255),
[R_description] nvarchar(255),
[R_number] float not null primary key,
[R_price] float,
[H_ID] nvarchar(255) ,
[RES_no] float, FOREIGN KEY (H_ID) REFERENCES hotel(H_ID), FOREIGN KEY (RES_no) REFERENCES reservation(res_no)
)