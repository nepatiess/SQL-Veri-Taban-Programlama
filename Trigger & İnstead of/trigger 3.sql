--------------------------TRIGGER 3-------------------------------
create trigger SilmeKontrol
on kitap2
after delete
as
begin
select 'Kayýt tablodan silindi'
end

delete from kitap2 where KitapOzet = 'eeee'

create trigger SilmeKontrol2
on kitap2
after delete
as
begin
update Guncelleme set Sayac= Sayac+1
end

delete from kitap2 where KitapPuan = 10