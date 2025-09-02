/*-----------------  SELECT  ----------------------*/
use kitaplik
select * from Kitap -- * olduğu için bütün satırları gösterdi

select KitapAd, KitapFiyat from Kitap -- sadece kitap adlarını ve kitap fiyatlarını gösterdi

select * from Kitap where KitapAd='Nutuk' -- kitap adı Palto olan kitabı getirdi

select * from Kitap where KitapSayfa>150 -- kitap sayfa sayısı 150den fazla olanları yazdırdı

select * from Kitap where KitapYazar='Reşat Nuri Güntekin' -- Kitap yazarı Reşat Nuri Güntekin olan kitapları yazdırdı

select * from Kitap where KitapYayınEvi='Güneş' and KitapFiyat>8 -- Kitap yayın evi Güneş ve kitap fiyatı 8den büyük olan kitapları yazdırdı

select * from Kitap where KitapSayfa>200 or KitapFiyat>8 -- Kitap Sayfa sayısı 200den fazla veya kitap fiyatı 8den büyük olan kitapları yazdırdı.

select * from Kitap where KitapSayfa>299 or KitapFiyat>12 or KitapYazar = 'Reşat Nuri Güntekin' -- Kitap sayfa sayısı 299dan büyük veya kitap fiyatı 12den büyük veya kitap yazarı Reşat Nuri Güntekin olan kitapları yazdırdı. 

select * from Kitap where KitapSayfa in(200,300,220) -- Parantezin içindeki değerleri sağlayan kitapları yazdırdı

select * from Kitap where KitapYayınEvi in('Ay', 'Güneş', 'Jüpiter') -- Parantezin içindeki yayınevlerini sıraladı or ile de yapılabilir.

-------------- Like -------------------------
select * from Kitap where KitapAd like '%a%' and KitapSayfa in(120,200,300) and KitapFiyat>1 -- Kitap adında a harfi geçen ve Kitap sayfa sayısı 120,200,300 olan ve kitap fiyatı 1den büyük olan kitapları getirdi.

select * from Kitap where KitapAd like '[ab]%' -- adı hem a hem de b harfiyle başlayan kitapları yazdırdı

select * from Kitap where KitapAd like 'b%e' -- b ile başlayıp e ile biten kitap adlarını yazdırdı

select * from Kitap where KitapAd like '[a-e]%' --a harfinden e harfine kadar ki kitap adlarını yazdırdı

select * from Kitap where KitapAd like 'a%' -- kitap adı a harfi ile başlayan kitapları yazdırdı

select * from Kitap where KitapAd like '%a' --kitap adı a harfi ile biten kitapları yazdırdı

select * from Kitap where KitapAd like 'P____' --kitap adı Palto olan kitabı yazdırdı

select * from Kitap where KitapAd like '_a%' -- ikinci harfi a olan kitapları yazdırdı

select * from Kitap where KitapAd like '[^a-f]%' -- aharfi ile f arasındaki harflerle başlamayan kitapları getirecek, ^ --> olumsuzluk

----------------------------------------------

select kitap2.KitapAdi, Kitap3.KitapRengi from kitap2, Kitap3 -- kitap2 tablosundan kitap adını, kitap 3 tablosundan kitap rengini tabloladık.
