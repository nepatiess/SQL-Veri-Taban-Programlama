/*-----------------  UPDATE  ----------------------*/
-- update tabloAdý set AlanAdý = 'Yeni Deðer' where þart

use kitaplik
update Kitap set KitapYazar='Dostoyevski', KitapFiyat=25 where  KitapAd='Suç ve Ceza'
-- kitabýn yazarý ve fiyatý önceden NULL olarak gözüküyordu sonradan kitap adý suç ve ceza olarak güncellendi.

update Kitap set KitapFiyat=5 where KitapFiyat<5
-- kitap fiyatý 5ten küçük bütün kitaplarýn fiyatlarýný 5 olarak düzenledik.

-----------ÖDEV----------------
--kitap fiyatý 5 olan kitaplara %20 zam yap.
update Kitap set KitapFiyat+= (KitapFiyat*20)/100 where KitapFiyat=5 
