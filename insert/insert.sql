/*-----------------  INSERT  ----------------------*/
-- insert into tabloAd� values(veriler)
use kitaplik
--insert into Kitap values(30,'�nsan Ne ile Ya�ar', 'Tolstoy', 110, 15, '2016-08-12 00:00:00', 'MaviBulut', 5)
--select * from Kitap -- Kitap tablosuna �nsan ne ile ya�ar kitab�n� ekledi.

insert into Kitap (KitapNo, KitapAd, KitapSayfa, Vergi)
values (29, 'Su� ve ceza', 1250, 6); -- girilmeyen verileri NULL olarak g�sterdi.

insert into Kitap (KitapNo, KitapAd, KitapFiyat)
values(33, 'Serenad', 21)
select * from Kitap order by KitapNo