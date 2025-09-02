------------------------TRANSACTION KULLANIMI--------------------------
Begin transaction -- işlem başlangıcı
update Kitap set KitapSayfa = 50
update Kitap set KitapFiyat = 1
select * from Kitap -- bütün kitapların kitap sayfasını 50, bütün kitapların kitap fiyatlarını 1 olarak ayarladı
rollback
select * from Kitap
-- save transaction
