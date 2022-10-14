create table Experience(
ID int Identity,
Employ_Id varchar(30) not null,
Company_Name varchar(30) not null,
Joining_Date datetime not null,
Releaving_Date datetime not null,
Reasonforleaving varchar(50),
Roles varchar(30),
Reporting_1 varchar(40) not null,
Name varchar(30) not null,
Contact varchar(20),
email varchar(30),
Reporting_2 varchar(40),
Name2 varchar(30) not null,
Contact2 varchar(20),
email2 varchar(30),
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);

