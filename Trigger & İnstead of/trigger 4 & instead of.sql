---------------------------TRIGGER 4 & INSTEAD OF------------------------------
create trigger insdeneme
on kitap2
instead of insert
as
begin
select 'Ekleme iþleminde sorun yok'
end

insert into kitap2 values('sefiller', 'roman', 'fffff', 'mavi', 5)

create trigger insdeneme2
on kitap2
instead of insert
as
begin
select 'Kayýt güncellenebilir'
end
-- Cannot create trigger 'insdeneme2' on table 'kitap2' because an INSTEAD OF INSERT trigger already exists on this object.. Bu yüzden de yeni bir query açmamýz vgerekiyor.