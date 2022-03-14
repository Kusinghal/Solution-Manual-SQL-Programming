set serveroutput on;
declare 
cursor departc
is select department_name from department order by department_name;
    temp departc%rowtype;
begin
    open departc;
    dbms_output.put_line('Department Names are :');
    loop
        fetch departc into temp;
        exit when departc%notfound;
        dbms_output.put_line(upper(temp.department_name));
    end loop;
    close departc;
end;
/
    