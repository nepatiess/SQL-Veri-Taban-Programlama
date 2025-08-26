/*-----------------  SELECT  ----------------------*/
use kitaplik
select * from Kitap -- * oldu�u i�in b�t�n sat�rlar� g�sterdi

select KitapAd, KitapFiyat from Kitap -- sadece kitap adlar�n� ve kitap fiyatlar�n� g�sterdi

select * from Kitap where KitapAd='Nutuk' -- kitap ad� Palto olan kitab� getirdi

select * from Kitap where KitapSayfa>150 -- kitap sayfa say�s� 150den fazla olanlar� yazd�rd�

select * from Kitap where KitapYazar='Re�at Nuri G�ntekin' -- Kitap yazar� Re�at Nuri G�ntekin olan kitaplar� yazd�rd�

select * from Kitap where KitapYay�nEvi='G�ne�' and KitapFiyat>8 -- Kitap yay�n evi G�ne� ve kitap fiyat� 8den b�y�k olan kitaplar� yazd�rd�

select * from Kitap where KitapSayfa>200 or KitapFiyat>8 -- Kitap Sayfa say�s� 200den fazla veya kitap fiyat� 8den b�y�k olan kitaplar� yazd�rd�.

select * from Kitap where KitapSayfa>299 or KitapFiyat>12 or KitapYazar = 'Re�at Nuri G�ntekin' -- Kitap sayfa say�s� 299dan b�y�k veya kitap fiyat� 12den b�y�k veya kitap yazar� Re�at Nuri G�ntekin olan kitaplar� yazd�rd�. 

select * from Kitap where KitapSayfa in(200,300,220) -- Parantezin i�indeki de�erleri sa�layan kitaplar� yazd�rd�

select * from Kitap where KitapYay�nEvi in('Ay', 'G�ne�', 'J�piter') -- Parantezin i�indeki yay�nevlerini s�ralad� or ile de yap�labilir.

-------------- Like -------------------------
select * from Kitap where KitapAd like '%a%' and KitapSayfa in(120,200,300) and KitapFiyat>1 -- Kitap ad�nda a harfi ge�en ve Kitap sayfa say�s� 120,200,300 olan ve kitap fiyat� 1den b�y�k olan kitaplar� getirdi.

select * from Kitap where KitapAd like '[ab]%' -- ad� hem a hem de b harfiyle ba�layan kitaplar� yazd�rd�

select * from Kitap where KitapAd like 'b%e' -- b ile ba�lay�p e ile biten kitap adlar�n� yazd�rd�

select * from Kitap where KitapAd like '[a-e]%' --a harfinden e harfine kadar ki kitap adlar�n� yazd�rd�

select * from Kitap where KitapAd like 'a%' -- kitap ad� a harfi ile ba�layan kitaplar� yazd�rd�

select * from Kitap where KitapAd like '%a' --kitap ad� a harfi ile biten kitaplar� yazd�rd�

select * from Kitap where KitapAd like 'P____' --kitap ad� Palto olan kitab� yazd�rd�

select * from Kitap where KitapAd like '_a%' -- ikinci harfi a olan kitaplar� yazd�rd�

select * from Kitap where KitapAd like '[^a-f]%' -- aharfi ile f aras�ndaki harflerle ba�lamayan kitaplar� getirecek, ^ --> olumsuzluk

----------------------------------------------

select kitap2.KitapAdi, Kitap3.KitapRengi from kitap2, Kitap3 -- kitap2 tablosundan kitap ad�n�, kitap 3 tablosundan kitap rengini tablolad�k.