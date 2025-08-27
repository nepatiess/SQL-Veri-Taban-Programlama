--------------------------GROUP BY------------------------------------
select KitapYazar, COUNT(KitapAd) as 'Kitap Say�s�' from Kitap group by KitapYazar
-- 16 farkl� yazarlar�n ka� tane kitab� oldu�unu kitap say�s� s�tunu ile g�sterdi 

select KitapAd, COUNT(KitapAd) as 'Stok' from Kitap group by KitapAd
-- kitap say�lar�n�n say�s�n� say�p stok s�tunu ile g�sterdik

select KitapYay�nEvi, count(KitapAd) as 'Ka� kitap yay�nlad�' from Kitap group by KitapYay�nEvi order by KitapYay�nEvi asc
-- her bir yay�nevinin ka� tane kitap yay�nlad���n� g�sterdik

select KitapYay�nEvi, count(KitapAd) as 'Ka� kitap yay�nlad� s�ras�yla' from Kitap group by KitapYay�nEvi order by COUNT(KitapAd) asc
--yukar�daki tablonun ka� kitap yay�nland���n�n say�lar�n� s�ras�yla yazd�rd�k

select KitapYay�nEvi, SUM(KitapFiyat) as 'Toplam Fiyat' from Kitap group by KitapYay�nEvi
--Kitap yay�n evlerinin her kitab�n fiyat toplam�n� bulup yazd�rd�k

select KitapYay�nEvi, AVG(KitapFiyat) as 'Ortalama sat�� fiyat�' from Kitap group by KitapYay�nEvi
-- kitap yay�n evlerinin her kitab�n�n fiyat ortalmas�n� g�steren tabloyu yazd�rd�k

select KitapYay�nEvi, MIN(KitapFiyat) as 'En d���k',
MAX(KitapFiyat) as 'En y�ksek' from Kitap group by KitapYay�nEvi
-- kitap yay�n evlerinin kitaplar�n�n fiyatlar�n� min ve max olarak g�sterdik

select KitapYay�nEvi,count(KitapAd) from Kitap where KitapFiyat>10 group by KitapYay�nEvi
-- yay�n evlerinin kitap fiyat� 10dan b�y�k olan kitaplar�n listesini g�sterdik