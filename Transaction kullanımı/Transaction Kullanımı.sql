------------------------TRANSACTION KULLANIMI--------------------------
Begin transaction -- i�lem ba�lang�c�
update Kitap set KitapSayfa = 50
update Kitap set KitapFiyat = 1
select * from Kitap -- b�t�n kitaplar�n kitap sayfas�n� 50, b�t�n kitaplar�n kitap fiyatlar�n� 1 olarak ayarlad�
rollback
select * from Kitap
-- save transaction