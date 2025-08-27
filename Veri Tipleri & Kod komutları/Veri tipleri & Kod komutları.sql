/*
---------------VER� T�PLER�--------------------------
*bigint --> 8 byte (tam say� olarak kullan�l�r)
*binary --> max 8 (bin ) byte
*bit --> true, false
*char(10) --> sabit de�erler i�in kullan�l�r (mesela tc kimlik no 11 basamakl�)
*varchar --> de�i�ken de�erler i�in kullan�l�r. (ad,soyad gibi de�i�kenler)
*date --> 3 byte g�n, ay, y�l olarak
*datetime --> 8 byte + saat (1753-9999 y�llar� aras�)
*datetime2(7) --> saat + salise gibi daha ince s�re
*datetimeoffset(7) --> �lkelere g�re de�i�en saatler i�in kulan�l�r
*decimal --> +-10^28 de�er (ondal�kl� k�s�mlar dahil) (numeric ile ayn�)
*float --> ondal�k say�lar i�in
*geography --> co�rafi veri tipleri i�in gps(global position system a��l�m�)
*geometry --> geometrik de�er i�in kullan�l�r
*hierarchyid --> kategori kullanaca��m�z alanlarda kullan�l�r (elektronik --> bilgisayar/ telefon / beyaz e�ya...
bilgisayar --> masa�st� / diz�st� 
masa�st� --> casper / acer ...
casper --> i5, i7....)
*image --> resim i�in kullan�l�r (genelde resim yolu kaydediliyor. Resim daha �ok yer kaplayabilir)
*int --> tamsay�
*money --> Para birimi i�in kullan�l�r
*nchar(10) --> sabit uzunlukta 2 kat� (n: yabanc� diller i�in karakter kullan�l�r)
*numeric --> decimal ile ayn�
*nvarchar(MAX) --> varchar'�n 2 kay� (n harfi)
*real --> Aritmetik i�lemler i�in kullan�l�r 8 byte yer kaplar (En b�y�k kesirli say�lar i�in)
*smalldatetime --> 1900-2079 y�llar� aras� i�in kullan�l�r	
*smallint --> +-32 k���k say�
*smallmoney --> daha k���k money i�in kullan�l�r
*sql_variant --> birden fazla veri tipleri i�in kullan�l�r
*text --> alfabetik
*time(7) --> saat
*timestamp --> belirli bir saat aral���ndaki de�i�iklikleri g�stermek i�in g�ncel kay�t denebilir
*tinyint --> 0-256 aras� 
*uniqueidentifier --> benzersiz tan�mlay�c� (16 byte) --> guid: u�ak otob�s ula��m� i�in kar���k numaralar�n oldu�u 564883
*varchar(50) --> de�i�ken uzunlu�u (en �ok kullanaca��m�z veri tipi)


---------------------------SQL KOD KOMUTLARI---------------------------------------------------------
SQL Veri ��leme Dili (Data Manipulation Language - DML) 2.
SELECT: Veri Se�mek
DELETE: Veri Silmek
UPDATE: Veri G�ncellemek
INSERT: Veri Kaydetmek
---------------------------------------------------------------
SQL Veri Tan�mlama Dili (Data Definition Language- DDL) 1.
CREATE TABLE: Yeni bir tablo olu�turmak
ALTER TABLE: Tabloda g�ncelleme yapmak
DROP TABLE: Tabloyu silmek
----------------------------------------------------------------------
SQL Veri Kontrol� Dili (Data Control Language - DCL)
GRANT:
DENY:
REVOKE: 

*/