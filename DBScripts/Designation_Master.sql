CREATE TABLE DESIGNATION(
ID INT IDENTITY,
Desig_ID VARCHAR(20) not null,
Desig_Abbr VARCHAR(30) not null,
Desig_Desc varchar(30) not null,
is_active char(1) not null default 'Y',
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime,
Modified_By varchar(30)
);


