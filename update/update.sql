/*-----------------  UPDATE  ----------------------*/
-- update tabloAd� set AlanAd� = 'Yeni De�er' where �art

use kitaplik
update Kitap set KitapYazar='Dostoyevski', KitapFiyat=25 where  KitapAd='Su� ve Ceza'
-- kitab�n yazar� ve fiyat� �nceden NULL olarak g�z�k�yordu sonradan kitap ad� su� ve ceza olarak g�ncellendi.

update Kitap set KitapFiyat=5 where KitapFiyat<5
-- kitap fiyat� 5ten k���k b�t�n kitaplar�n fiyatlar�n� 5 olarak d�zenledik.

-----------�DEV----------------
--kitap fiyat� 5 olan kitaplara %20 zam yap.
update Kitap set KitapFiyat+= (KitapFiyat*20)/100 where KitapFiyat=5 
