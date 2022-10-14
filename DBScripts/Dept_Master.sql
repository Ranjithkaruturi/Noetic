create table departments(
ID INT IDENTITY,
Dept_Id varchar(30),
Dept_Name varchar(30),
Dept_Desc varchar(50),
is_active char(1),
Created_Date datetime,
Created_By varchar(30),
Modified_Date datetime,
Modified_By varchar(30)
);