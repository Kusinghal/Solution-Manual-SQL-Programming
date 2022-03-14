create or replace package EMP_DESIGNATION
as
    procedure EMP_DETAILS(design employee.designation%type, incentive number);
end EMP_DESIGNATION;
/

create or replace package body EMP_DESIGNATION
as
    procedure EMP_DETAILS(design employee.designation%type, incentive number)
    is
    begin
        update employee set employee.salary=employee.salary+incentive where
            employee.designation=design;
        DBMS_OUTPUT.put_line(sql%rowcount ||' employee(s) are updated.');
    end EMP_DETAILS;
end EMP_DESIGNATION;
/