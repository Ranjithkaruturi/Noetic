create table Employee(
ID INT Identity,
Employ_Id varchar(20),
Emp_Name varchar(30),
Emp_Desig Numeric(10),
Emp_Dept numeric(10),
Emp_Address numeric(10),
Emp_Contact numeric(10),
Emp_Type numeric(10),
Emp_Role numeric(10),
is_active char(1) not null,
Created_Date datetime not null default getdate(),
Created_By varchar(30),
Modified_Date datetime not null,
Modified_By varchar(30)
);