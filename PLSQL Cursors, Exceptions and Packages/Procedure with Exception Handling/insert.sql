delete from employee where empid=102;
set serveroutput on;
/
create or replace procedure check_age_eligibility(
    v_id in employee.empid%type,
    v_name in employee.empname%type,
    v_age in employee.age%type
) as 
invalid_age exception;
begin
    if v_age >=18 then
        insert into employee values(v_id, v_name, v_age);
        dbms_output.put_line('Age valid - Record inserted');
    else
        raise invalid_age;
    end if;
    exception
        when invalid_age then
            dbms_output.put_line('Age invalid - Record not inserted');
end;
/