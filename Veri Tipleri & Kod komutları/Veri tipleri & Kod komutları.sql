/*
---------------VERİ TİPLERİ--------------------------
*bigint --> 8 byte (tam sayı olarak kullanılır)
*binary --> max 8 (bin ) byte
*bit --> true, false
*char(10) --> sabit değerler için kullanılır (mesela tc kimlik no 11 basamaklı)
*varchar --> değişken değerler için kullanılır. (ad,soyad gibi değişkenler)
*date --> 3 byte gün, ay, yıl olarak
*datetime --> 8 byte + saat (1753-9999 yılları arası)
*datetime2(7) --> saat + salise gibi daha ince süre
*datetimeoffset(7) --> ülkelere göre değişen saatler için kulanılır
*decimal --> +-10^28 değer (ondalıklı kısımlar dahil) (numeric ile aynı)
*float --> ondalık sayılar için
*geography --> coğrafi veri tipleri için gps(global position system açılımı)
*geometry --> geometrik değer için kullanılır
*hierarchyid --> kategori kullanacağımız alanlarda kullanılır (elektronik --> bilgisayar/ telefon / beyaz eşya...
bilgisayar --> masaüstü / dizüstü 
masaüstü --> casper / acer ...
casper --> i5, i7....)
*image --> resim için kullanılır (genelde resim yolu kaydediliyor. Resim daha çok yer kaplayabilir)
*int --> tamsayı
*money --> Para birimi için kullanılır
*nchar(10) --> sabit uzunlukta 2 katı (n: yabancı diller için karakter kullanılır)
*numeric --> decimal ile aynı
*nvarchar(MAX) --> varchar'ın 2 kayı (n harfi)
*real --> Aritmetik işlemler için kullanılır 8 byte yer kaplar (En büyük kesirli sayılar için)
*smalldatetime --> 1900-2079 yılları arası için kullanılır	
*smallint --> +-32 küçük sayı
*smallmoney --> daha küçük money için kullanılır
*sql_variant --> birden fazla veri tipleri için kullanılır
*text --> alfabetik
*time(7) --> saat
*timestamp --> belirli bir saat aralığındaki değişiklikleri göstermek için güncel kayıt denebilir
*tinyint --> 0-256 arası 
*uniqueidentifier --> benzersiz tanımlayıcı (16 byte) --> guid: uçak otobüs ulaşımı için karışık numaraların olduğu 564883
*varchar(50) --> değişken uzunluğu (en çok kullanacağımız veri tipi)


---------------------------SQL KOD KOMUTLARI---------------------------------------------------------
SQL Veri İşleme Dili (Data Manipulation Language - DML) 2.
SELECT: Veri Seçmek
DELETE: Veri Silmek
UPDATE: Veri Güncellemek
INSERT INTO: Veri Kaydetmek
---------------------------------------------------------------
SQL Veri Tanımlama Dili (Data Definition Language- DDL) 1.
CREATE TABLE: Yeni bir tablo oluşturmak
CREATE DATABASE: Yeni bir database oluşturmak
ALTER TABLE: Tabloda güncelleme yapmak
ALTER DATABASE: Database'de güncelleme yapmak
DROP TABLE: Tabloyu silmek
----------------------------------------------------------------------
SQL Veri Kontrolü Dili (Data Control Language - DCL)
GRANT:
DENY:
REVOKE: 


*/
