---------------------DELETE--------------------------------
-- delete from tabloAdı [tablonun içindeki rowsları sildi bütün tabloyu silmedi]

use kitaplik
delete from Kitap where KitapNo=8
select * from Kitap 
-- kitap numarası 8 olan kitabı sildi

delete from Kitap where KitapSayfa>880 or KitapFiyat=11
-- kitap sayfasının 880den büyük olduğu veya kitap fiyatı 11 olan kitapların rowsunu sildi.

