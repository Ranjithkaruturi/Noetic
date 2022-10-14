ALTER PROCEDURE EmployeeMgmt @EmpID nvarchar = NULL,
--G=Get Active Employees , 
--IN-Get Inactive Employees, 
--I-Insert Employee dtls, 
--AL-Get All Employees, 
--U- Update Employee
--D-Delete Employee
@action char(2) = 'G',
@emp_name nvarchar(30),
@emp_desig numeric(10),
@emp_dept numeric(10),
@emp_address numeric(10),
@emp_contact numeric(10),
@emp_type numeric(10),
@emp_role numeric(10)
AS
BEGIN
  IF (@action = 'G')
  BEGIN
    SELECT
      ID,
      Employ_id,
      emp_name,
      emp_desig,
      emp_dept,
      emp_address,
      emp_contact,
      emp_type,
      emp_role
    FROM employee
    WHERE is_active = 'Y'
    AND Employ_id = @EmpID
  END

  IF (@action = 'IN')
  BEGIN
    SELECT
      ID,
      Employ_id,
      emp_name,
      emp_desig,
      emp_dept,
      emp_address,
      emp_contact,
      emp_type,
      emp_role
    FROM employee
    WHERE is_active = 'N'
    AND Employ_id = @EmpID
  END

  IF (@action = 'AL')
  BEGIN
    SELECT
      ID,
      Employ_id,
      emp_name,
      emp_desig,
      emp_dept,
      emp_address,
      emp_contact,
      emp_type,
      emp_role
    FROM employee
    WHERE is_active IN ('Y', 'N')
  END

  IF @action = 'I'
  BEGIN
    INSERT INTO employee (Employ_id, emp_name, emp_desig, emp_dept, emp_address, emp_contact,
    emp_type, emp_role)
      VALUES (@EmpID, @emp_name, @emp_desig, @emp_dept, @emp_address, @emp_contact, @emp_type, @emp_role);
  END

  IF @action = 'U'
  BEGIN
    UPDATE employee
    SET Employ_id = @EmpID,
        emp_name = @emp_name,
        emp_desig = @emp_desig,
        emp_dept = @emp_dept,
        emp_address = @emp_address,
        emp_contact = @emp_contact,
        emp_type = @emp_type,
        emp_role = @emp_role
    WHERE Employ_id = @EmpID

    IF @action = 'D'
    BEGIN
      DELETE FROM employee
      WHERE Employ_id = @EmpID
    END
  END
END