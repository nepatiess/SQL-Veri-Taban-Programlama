--------------------ALT SORGULAR----------------------------
select * from Kitap where Vergi= (select Vergi from kitap where KitapAd = 'Çalýkuþu')
-- kitap adý çalýkuþu olan kitabýn vergisiyle eþit vergide olan kitaplarý sýraladýk

select * from Kitap where KitapFiyat=(select KitapFiyat from Kitap where KitapAd = 'Son Ada')
-- Son ada kitabýnýn kitap fiyatýyla ayný olan kitaplarý listeledi

