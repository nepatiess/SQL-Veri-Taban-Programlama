------------------GATEDATE----------------
 
-- gatedate()
select GETDATE() -- anl�k saati ve tarihi al�r.

--date part(se�ilecek olan b�l�m, tarih)
select DATEPART(YEAR,GETDATE()) as 'Y�l',
DATEPART(MONTH, GETDATE()) as 'Ay',
DATEPART(DAY,GETDATE()) as 'G�n',
DATEPART(WEEK,GETDATE()) as 'Hafta',
DATEPART(QUARTER,GETDATE()) as '�eyrek'
-- y�l, ay , g�n, hafta ve �eyrek olarak tablo ayarlad� ve yazd�rd�

select DATEPART(MONTH, '2016-04-25') -- tarihin ka��nc� ay� oldu�unu g�sterdi
select DATEPART(QUARTER, '2016-04-25') --4 .ay 2. �eyrek oldu�u i�in ��kt� 2 olacak

select * from Kitap where DATEPART(YEAR,KitapTarih)='2016' -- y�l� 2016 olan kitaplar� g�tserdi
select * from Kitap where DATEPART(MONTH,KitapTarih)=02 -- ay� 2016 olan kitaplar� g�tserdi
-- sondaki y�l, ay veya g�n� t�rnakla ya da t�rnaks�z yazmak sonucu de�i�tirmedi. Her iki t�rl� de kullan�labilir

