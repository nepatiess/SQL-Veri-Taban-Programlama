------------------------------TRIGGER 2----------------------------------------
create trigger GuncelleKontrol
on kitap2
after update
as
begin
select 'Güncelleme iþlemi gerçekleþti'
end

update kitap2 set KitapPuan = 10 where KitapAdi='Müfettiþ'

create trigger GuncelleKontrol2
on kitap2
after update
as
begin
update Guncelleme set sayac=sayac + 1
end

update kitap2 set KitapPuan = 5 where KitapAdi='sefiller'
-- gün içinde kaç tan edeðiþiklik yapýldýðýna sayaç ile kontrol edilebilir