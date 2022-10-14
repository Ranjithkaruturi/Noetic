create table employeaddress(
ID int identity,
Address_Id varchar(20) not null,
Address nvarchar(40) not null,
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);