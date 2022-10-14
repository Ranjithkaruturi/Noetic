create table employetype(
ID int Identity,
Type_Id varchar(30) not null,
Type_Desc varchar(30) not null,
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);
