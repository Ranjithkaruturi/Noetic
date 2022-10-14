create table Qualification(
ID int Identity,
Employ_Id varchar(30) not null,
Qualification varchar(30) not null,
YOP datetime not null,
Grade varchar(5) not null,
Percentage varchar(10) not null,
Institution varchar(30) not null,
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);