/*
---------------VERÝ TÝPLERÝ--------------------------
*bigint --> 8 byte (tam sayý olarak kullanýlýr)
*binary --> max 8 (bin ) byte
*bit --> true, false
*char(10) --> sabit deðerler için kullanýlýr (mesela tc kimlik no 11 basamaklý)
*varchar --> deðiþken deðerler için kullanýlýr. (ad,soyad gibi deðiþkenler)
*date --> 3 byte gün, ay, yýl olarak
*datetime --> 8 byte + saat (1753-9999 yýllarý arasý)
*datetime2(7) --> saat + salise gibi daha ince süre
*datetimeoffset(7) --> ülkelere göre deðiþen saatler için kulanýlýr
*decimal --> +-10^28 deðer (ondalýklý kýsýmlar dahil) (numeric ile ayný)
*float --> ondalýk sayýlar için
*geography --> coðrafi veri tipleri için gps(global position system açýlýmý)
*geometry --> geometrik deðer için kullanýlýr
*hierarchyid --> kategori kullanacaðýmýz alanlarda kullanýlýr (elektronik --> bilgisayar/ telefon / beyaz eþya...
bilgisayar --> masaüstü / dizüstü 
masaüstü --> casper / acer ...
casper --> i5, i7....)
*image --> resim için kullanýlýr (genelde resim yolu kaydediliyor. Resim daha çok yer kaplayabilir)
*int --> tamsayý
*money --> Para birimi için kullanýlýr
*nchar(10) --> sabit uzunlukta 2 katý (n: yabancý diller için karakter kullanýlýr)
*numeric --> decimal ile ayný
*nvarchar(MAX) --> varchar'ýn 2 kayý (n harfi)
*real --> Aritmetik iþlemler için kullanýlýr 8 byte yer kaplar (En büyük kesirli sayýlar için)
*smalldatetime --> 1900-2079 yýllarý arasý için kullanýlýr	
*smallint --> +-32 küçük sayý
*smallmoney --> daha küçük money için kullanýlýr
*sql_variant --> birden fazla veri tipleri için kullanýlýr
*text --> alfabetik
*time(7) --> saat
*timestamp --> belirli bir saat aralýðýndaki deðiþiklikleri göstermek için güncel kayýt denebilir
*tinyint --> 0-256 arasý 
*uniqueidentifier --> benzersiz tanýmlayýcý (16 byte) --> guid: uçak otobüs ulaþýmý için karýþýk numaralarýn olduðu 564883
*varchar(50) --> deðiþken uzunluðu (en çok kullanacaðýmýz veri tipi)


---------------------------SQL KOD KOMUTLARI---------------------------------------------------------
SQL Veri Ýþleme Dili (Data Manipulation Language - DML) 2.
SELECT: Veri Seçmek
DELETE: Veri Silmek
UPDATE: Veri Güncellemek
INSERT: Veri Kaydetmek
---------------------------------------------------------------
SQL Veri Tanýmlama Dili (Data Definition Language- DDL) 1.
CREATE TABLE: Yeni bir tablo oluþturmak
ALTER TABLE: Tabloda güncelleme yapmak
DROP TABLE: Tabloyu silmek
----------------------------------------------------------------------
SQL Veri Kontrolü Dili (Data Control Language - DCL)
GRANT:
DENY:
REVOKE: 

*/