declare @sayi1 int, @sayi2 int, @toplam int,
@fark int, @carpim int, @bolum int
set @sayi1 = 16
set @sayi2 = 4
set @toplam = @sayi1 + @sayi2
print 'Toplam: ' + cast(@toplam as varchar(2))
-- ��kt�: Toplam: 13 oldu

set @toplam=@sayi1+@sayi2
set @fark=@sayi1-@sayi2
set @carpim=@sayi1*@sayi2
set @bolum=@sayi1/@sayi2

print 'Toplam: ' + cast(@toplam as varchar(2))
print 'Fark: ' + cast(@fark as varchar(2))
print '�arp�m: ' + cast(@carpim as varchar(2))
print 'B�l�m: ' + cast(@bolum as varchar(2))

/*
karesi
k�p�
2x^2 +4x +5
k�k�n�
*/

declare @kare int, @kup int, @kok int
set @kare = @sayi1^2
set @kup = @sayi2^3
set @kok = SQRT(@sayi1)

print '1. say�n�n karesi: ' + cast(@kare as varchar(2))
print '2. say�n�n k�p�: ' + cast(@kup as varchar(2))
print '1. say�n�n karek�k�: ' + cast(@kok as varchar(2))