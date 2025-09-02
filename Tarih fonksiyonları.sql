------------------GATEDATE----------------
 
-- gatedate()
select GETDATE() -- anlık saati ve tarihi alır.

--date part(seçilecek olan bölüm, tarih)
select DATEPART(YEAR,GETDATE()) as 'Yıl',
DATEPART(MONTH, GETDATE()) as 'Ay',
DATEPART(DAY,GETDATE()) as 'Gün',
DATEPART(WEEK,GETDATE()) as 'Hafta',
DATEPART(QUARTER,GETDATE()) as 'Çeyrek'
-- yıl, ay , gün, hafta ve çeyrek olarak tablo ayarladı ve yazdırdı

select DATEPART(MONTH, '2016-04-25') -- tarihin kaçıncı ayı olduğunu gösterdi
select DATEPART(QUARTER, '2016-04-25') --4 .ay 2. çeyrek olduğu için çıktı 2 olacak

select * from Kitap where DATEPART(YEAR,KitapTarih)='2016' -- yılı 2016 olan kitapları götserdi
select * from Kitap where DATEPART(MONTH,KitapTarih)=02 -- ayı 2016 olan kitapları götserdi
-- sondaki yıl, ay veya günü tırnakla ya da tırnaksız yazmak sonucu değiştirmedi. Her iki türlü de kullanılabilir

