------------------INSTEAD OF 2 ------------------------
create trigger insdeneme3
on kitap2
instead of delete
as
begin
select 'Kay�t silinebilir'
end