------------------------------TRIGGER 2----------------------------------------
create trigger GuncelleKontrol
on kitap2
after update
as
begin
select 'G�ncelleme i�lemi ger�ekle�ti'
end

update kitap2 set KitapPuan = 10 where KitapAdi='M�fetti�'

create trigger GuncelleKontrol2
on kitap2
after update
as
begin
update Guncelleme set sayac=sayac + 1
end

update kitap2 set KitapPuan = 5 where KitapAdi='sefiller'
-- g�n i�inde ka� tan ede�i�iklik yap�ld���na saya� ile kontrol edilebilir