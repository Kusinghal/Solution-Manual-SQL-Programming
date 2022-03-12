create or replace procedure select_city (user_id in number, city_details out varchar2)

as begin
    select 'User is from ' ||
    case when city in ('Bangalore', 'Chennai') then city
    else 'other cities' 
    end 
    into city_details from contact where id=user_id;
end;
/