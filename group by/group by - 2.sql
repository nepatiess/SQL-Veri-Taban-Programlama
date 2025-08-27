----------------------------------GROUP BY 2-------------------------------------------

select Meslek, COUNT(Ad) 'Personel Say�s�' from Kisiler group by Meslek order by COUNT(Ad)
-- her bir mesle�in ka� tane o mesle�e ait olan personel say�s�n� g�sterdi

select Sehir, COUNT(Ad) as 'Say�' from kisiler group by Sehir order by Sehir
-- hangi �ehirden ka� personel �al���yor tablolad�k

select meslek, COUNT(ad) as 'Personel Say�s�', 
SUM(Maas) as 'Toplam Maa�' from kisiler group by meslek
-- ��kt�: m�hendis	6	15600
-- her mesle�in personel say�s�na g�re toplam maa�lar�n�n g�sterildi�i bir tablo haz�rlad�k

select meslek, COUNT(ad) as 'Personel Say�s�',
SUM(Maas) as 'Toplam Maa�',
AVG(Maas) as 'Ortalama ' from kisiler group by meslek
-- her mesle�in personel say�s�na g�re toplam maa�lar�n�n ve ortalamalar��n�n g�sterildi�i bir tablo haz�rlad�k

select meslek, MIN(Maas) as 'En d���k',
MAX(Maas) as 'En y�ksek',
AVG(Maas) as 'Ortalama' from kisiler group by meslek 
-- maa�lar�n max ve min ne kadar oldu�unu ve ortalamalar�n� g�relim