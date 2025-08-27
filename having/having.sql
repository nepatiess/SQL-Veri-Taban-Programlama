--------------------------HAVING----------------------------

select KitapYay�nEvi, COUNT(KitapAd) as 'Kitap Say�s�',
SUM(convert(int,KitapFiyat)) as 'Alacak',
SUM(convert(int,Vergi)) as 'Verecek',
(SUM(convert(int,KitapFiyat))-SUM(convert(int,Vergi))) as 'Net Bakiye'
from Kitap group by KitapYay�nEvi having (Sum(convert(int,KitapFiyat))- (SUM(convert(int,Vergi))))>15