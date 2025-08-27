--------------------------HAVING----------------------------

select KitapYayýnEvi, COUNT(KitapAd) as 'Kitap Sayýsý',
SUM(convert(int,KitapFiyat)) as 'Alacak',
SUM(convert(int,Vergi)) as 'Verecek',
(SUM(convert(int,KitapFiyat))-SUM(convert(int,Vergi))) as 'Net Bakiye'
from Kitap group by KitapYayýnEvi having (Sum(convert(int,KitapFiyat))- (SUM(convert(int,Vergi))))>15