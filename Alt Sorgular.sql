--------------------ALT SORGULAR----------------------------
select * from Kitap where Vergi= (select Vergi from kitap where KitapAd = '�al�ku�u')
-- kitap ad� �al�ku�u olan kitab�n vergisiyle e�it vergide olan kitaplar� s�ralad�k

select * from Kitap where KitapFiyat=(select KitapFiyat from Kitap where KitapAd = 'Son Ada')
-- Son ada kitab�n�n kitap fiyat�yla ayn� olan kitaplar� listeledi

