--------------------DATE DIFF------------------------
--select DATEDIFF(Year,'1923-10-29','2016-10-29') as 'Y�l Fark�', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih aras�nda ka� y�l oldu�unu g�sterdi
--DATEDIFF(Month, '2016-01-05', '2016-12-01') as 'Ay Fark�', -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih aras�nda ka� ay oldu�unu g�sterdi
--DATEDIFF(DAY, '2016-01-01','2016-12-01') as 'G�n Fark�' -- Date diff fonksiyonu ile ilk tarih ile ikinci tarih aras�nda ka� g�n oldu�unu g�sterdi

select DATEDIFF(YEAR,'1919-05-19', GETDATE()) as 'Ka� y�l oldu' -- MKA'n�n Samsun'a ��k��� (Gen�lik spor bay.) ndan 106 y�l ge�mi�

select DATEADD(day,10,GETDATE()) --Bug�n�n �zerine 10 g�n eklendi