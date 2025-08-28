--------------------------STORED PROCEDURE---------------------------
-- saklý yordamlar
create procedure Deneme
as
select * from Kitap where KitapSayfa > 150
-- þuan store procedure oluþtu 
--kitaplik --> programmability --> stored procedures

execute Deneme

------------------------------------------------------------------------
create procedure kitapGetir
as
select KitapAd,KitapRenk from Kitap k1 inner join kitap2 k2
on
k1.KitapAd=k2.KitapAdi

exec kitapGetir

 silmek için
drop procedure Deneme
