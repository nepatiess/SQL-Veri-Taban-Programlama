/*-----------------  INSERT  ----------------------*/
-- insert into tabloAdı values(veriler)
use kitaplik
--insert into Kitap values(30,'İnsan Ne ile Yaşar', 'Tolstoy', 110, 15, '2016-08-12 00:00:00', 'MaviBulut', 5)
--select * from Kitap -- Kitap tablosuna İnsan ne ile yaşar kitabını ekledi.

insert into Kitap (KitapNo, KitapAd, KitapSayfa, Vergi)
values (29, 'Suç ve ceza', 1250, 6); -- girilmeyen verileri NULL olarak gösterdi.

insert into Kitap (KitapNo, KitapAd, KitapFiyat)
values(33, 'Serenad', 21) -- kitap adı serenad olan ve kitap fiyatı 21 olan kitabı eklemiş olduk

select * from Kitap order by KitapNo -- kitapları kitap numaralarına göre sıraladık

insert into kitap values(23, 'Beyaz Geceler', 'Dostoyevski', 80, 5 , '2015-09-11 00:00:00', 'Mavi Bulut')
select * from Kitap -- kitap no 17 olan yerin yerine beyaz geceleri ekledik ve beyaz geceler toplam 2 tan olmuş oldu
