--use kitaplik
----select abs(KitapFiyat) as 'Kitap Fiyatlar�' from Kitap -- kitap fiyatlar� e�er 0dan k���kse abs ile mutlak de�eri al�n�r ve yeni kitap fiyatlar� s�tununda g�sterilir.
 
--select CEILING(KitapFiyat) as 'Kitap Fiyatlar�', KitapFiyat, 
--FLOOR(KitapFiyat) as 'KitapFiyatlar�2' ,KitapAd from Kitap -- floor ile virg�ll� say�lar� a�a��ya do�ru s�ralad�k

--select KitapAd,KitapFiyat, ROUND(KitapFiyat,1) from Kitap -- round ile kitap fiyat�ndaki ondal�kl� say�lar�n virg�lden sonraki 2 de�eri varsa 1e d���rd�k.

--select POWER(2,5) as '�s' -- �s alma
--select SQRT(620) as 'Karek�k' -- karek�k alma

---------------TOPLAMA------------------------
select * from Kitap  
select SUM(convert(int,KitapFiyat)) as 'Fiyat Toplam', sum(convert(int,Vergi)) as 'Vergi Toplam' from Kitap -- b�t�n kitaplar�n fiyatlar�n� ve vergilerini toplad� ve toplam s�tuna yazd�rd�
-- varcharlar ile sum fonksiyonu yap�lmaz bu y�zden varcharlar� �ncesinde int veri tipine de�i�tirdik.

select KitapAd, KitapFiyat from Kitap where KitapFiyat>=15

select KitapAd, KitapFiyat from Kitap where KitapTarih between '2016-01-01 00:00:00' and '2015-01-01 00:00:00' -- tarihleri aras�ndaki kitaplar�n kitap adlar�n� ve kitap fiyatlar�n� tabloda g�ster.

select AVG(KitapFiyat) as 'ortalama' from Kitap -- kitap fiyatlar�n�n ortalamas�n� al�p ortalama s�tununa yazd�r�r.

select MAX(KitapFiyat), MIN(KitapFiyat) from Kitap -- kitaplar�n fiyatlar�n�n minimumu ve maximimunu g�sterir

select COUNT(KitapAd) from Kitap -- kitap adlar�n�n say�s�n� g�sterir

