/*-----------------  INSERT  ----------------------*/
-- insert into tabloAdý values(veriler)
use kitaplik
--insert into Kitap values(30,'Ýnsan Ne ile Yaþar', 'Tolstoy', 110, 15, '2016-08-12 00:00:00', 'MaviBulut', 5)
--select * from Kitap -- Kitap tablosuna Ýnsan ne ile yaþar kitabýný ekledi.

insert into Kitap (KitapNo, KitapAd, KitapSayfa, Vergi)
values (29, 'Suç ve ceza', 1250, 6); -- girilmeyen verileri NULL olarak gösterdi.

insert into Kitap (KitapNo, KitapAd, KitapFiyat)
values(33, 'Serenad', 21)
select * from Kitap order by KitapNo