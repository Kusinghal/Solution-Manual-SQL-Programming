declare
    id department.department_id%type;
begin
    select max(department_id)+10 into id from department;
    insert into department values(id,'TESTING','CHN-102');
end;
/