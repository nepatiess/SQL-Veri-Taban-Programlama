/*-----------------  UPDATE  ----------------------*/
-- update tabloAdı set AlanAdı = 'Yeni Değer' where şart

use kitaplik
update Kitap set KitapYazar='Dostoyevski', KitapFiyat=25 where  KitapAd='Suç ve Ceza'
-- kitabın yazarı ve fiyatı önceden NULL olarak gözüküyordu sonradan kitap adı suç ve ceza olarak güncellendi.

update Kitap set KitapFiyat=5 where KitapFiyat<5
-- kitap fiyatı 5ten küçük bütün kitapların fiyatlarını 5 olarak düzenledik.

-----------ÖDEV----------------
--kitap fiyatı 5 olan kitaplara %20 zam yap.
update Kitap set KitapFiyat+= (KitapFiyat*20)/100 where KitapFiyat=5 
