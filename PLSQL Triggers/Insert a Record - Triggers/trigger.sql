create or replace trigger msg
after insert or update on employee
begin
    DBMS_OUTPUT.put_line('NEW EMPLOYEE DETAILS INSERTED');
end;
/