---------------------DELETE--------------------------------
-- delete from tabloAd� [tablonun i�indeki rowslar� sildi b�t�n tabloyu silmedi]

use kitaplik
delete from Kitap where KitapNo=8
select * from Kitap 
-- kitap numaras� 8 olan kitab� sildi

delete from Kitap where KitapSayfa>880 or KitapFiyat=11
-- kitap sayfas�n�n 880den b�y�k oldu�u veya kitap fiyat� 11 olan kitaplar�n rowsunu sildi.

