create or replace procedure insert_credit(
    credit_id credit_card.id%type,
    credit_card_number credit_card.card_number%type,
    credit_card_expire credit_card.card_expire%type,
    holder_name credit_card.name%type,
    card_type credit_card.cc_type%type
) as
begin
    insert into credit_card values(credit_id,credit_card_number,credit_card_expire,holder_name,card_type);
end
insert_credit;
/