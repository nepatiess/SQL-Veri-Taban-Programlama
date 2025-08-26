--------------------- AR�TMET�K OPERAT�RLER --------------------------------
select 20+4 --column name olmadan sadece sonucu g�sterir
select 20+4 as 'toplam' -- toplam s�tunu alt�nda sonucu g�sterdi

select 20+2 as 'toplam'
select 20-2 as 'fark'
-- ikisini farkl� tablolar, farkl� ��kt�lar �eklinde g�sterdi

-- tablolar�n yan yana olmas�n� istiyorsak virg�l ile ay�rmam�z gerekiyor
select 20+4 as 'toplam', 20-4 as 'fark', 20*4 as '�arp�m', 20/4 as 'b�l�m'

----------------------------------------------------
use kitaplik
select KitapAd, KitapFiyat, KitapFiyat+3 as 'Yeni Fiyat' from Kitap
-- kitap ad�n� kitap fiyat�n� tablolad� ve yeni fiyat s�tunu alt�nda kitap fiyat�na 3 ekleyerek tekrar yana yazd�

select KitapAd + ' - '+ KitapYazar from Kitap
-- ��kt�: �al�ku�u - Re�at Nuri G�ntekin

----------------------SUBSTRING----------------------------
select SUBSTRING(KitapAd, 1, 5) from Kitap
-- kitap adlar�n�n kelime olarak 1den 5e kadar yazd�rd�

------------------------------------------------------------
select LEFT(kitapAd, 7) from Kitap -- kitap adlar�ndaki ilk 7 karakteri getirdi ve bo�luklar� da sayd�

select RIGHT(kitapAd,4) from Kitap -- kitap adlar�ndaki son 4 karakteri g�sterdi

select UPPER(KitapAd) as 'B�Y�K HARF' , LOWER(KitapAd) as 'k���k harf' from Kitap
-- kitap adlar�n� �nce b�y�k harflerle yan�nda da k���k harflerle yazd� ve tablolad�

select KitapAd, LEN(KitapAd) as 'Karakter Say�s�' from Kitap where LEN(KitapAd) > 15
-- kitap ad�n� ve kitap ad�n�n uzunluklar�n� 15den b�y�k olan kitaplar� s�ralad�

select KitapAd, REPLACE(KitapYazar, 'Sabahattin Ali', 'S. Ali') as 'K�saltma' from Kitap
-- kitap yazar� Sabahattin Ali'nin ismini k�saltarak S.Ali olarak k�saltma s�tununa yazd�rd�

select REVERSE(KitapAd) as 'Tersten' from Kitap
-- kitap adlar�n� tersten yazd�rd� ve tersten s�tununa s�ralad�.
