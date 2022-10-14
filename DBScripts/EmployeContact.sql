create table employeContact(
ID int Identity,
Contact_Id varchar(20),
Contact_Num varchar(30),
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);