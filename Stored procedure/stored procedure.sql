--------------------------STORED PROCEDURE---------------------------
-- sakl� yordamlar
create procedure Deneme
as
select * from Kitap where KitapSayfa > 150
-- �uan store procedure olu�tu 
--kitaplik --> programmability --> stored procedures

execute Deneme

------------------------------------------------------------------------
create procedure kitapGetir
as
select KitapAd,KitapRenk from Kitap k1 inner join kitap2 k2
on
k1.KitapAd=k2.KitapAdi

exec kitapGetir

 silmek i�in
drop procedure Deneme
