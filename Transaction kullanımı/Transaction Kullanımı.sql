------------------------TRANSACTION KULLANIMI--------------------------
Begin transaction -- iþlem baþlangýcý
update Kitap set KitapSayfa = 50
update Kitap set KitapFiyat = 1
select * from Kitap -- bütün kitaplarýn kitap sayfasýný 50, bütün kitaplarýn kitap fiyatlarýný 1 olarak ayarladý
rollback
select * from Kitap
-- save transaction