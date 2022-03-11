declare
    Radius number(5);
    Area number(14,2);
    Pi constant number:=3.14;
    begin
        Radius:=3;
        while(Radius<=7)
        loop
            Area:=Pi*Radius*Radius;
            insert into Circle values(Radius,Area);
            Radius:=Radius+1;
        end loop;
    end;
/