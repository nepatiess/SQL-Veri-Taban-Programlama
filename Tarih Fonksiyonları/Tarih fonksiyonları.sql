------------------GATEDATE----------------
 
-- gatedate()
select GETDATE() -- anlýk saati ve tarihi alýr.

--date part(seçilecek olan bölüm, tarih)
select DATEPART(YEAR,GETDATE()) as 'Yýl',
DATEPART(MONTH, GETDATE()) as 'Ay',
DATEPART(DAY,GETDATE()) as 'Gün',
DATEPART(WEEK,GETDATE()) as 'Hafta',
DATEPART(QUARTER,GETDATE()) as 'Çeyrek'
-- yýl, ay , gün, hafta ve çeyrek olarak tablo ayarladý ve yazdýrdý

select DATEPART(MONTH, '2016-04-25') -- tarihin kaçýncý ayý olduðunu gösterdi
select DATEPART(QUARTER, '2016-04-25') --4 .ay 2. çeyrek olduðu için çýktý 2 olacak

select * from Kitap where DATEPART(YEAR,KitapTarih)='2016' -- yýlý 2016 olan kitaplarý götserdi
select * from Kitap where DATEPART(MONTH,KitapTarih)=02 -- ayý 2016 olan kitaplarý götserdi
-- sondaki yýl, ay veya günü týrnakla ya da týrnaksýz yazmak sonucu deðiþtirmedi. Her iki türlü de kullanýlabilir

