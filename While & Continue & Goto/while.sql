----------------------WHILE---------------------------
declare @sayi int
set @sayi = 1
while(@sayi<=10)
begin
print @sayi
set @sayi=@sayi+1
-- set @sayi+=1 �eklinde de yaz�labilir
end

print'----------------------------------'
-- 5 defa Merhaba SQL yazd�r
print '5 defa Merhaba SQL yazd�r'
declare @sayac int
set @sayac=1
while(@sayac<=5)
begin
print cast(@sayac as varchar(1)) + '. Merhaba SQL'
set @sayac+=1
end

print'----------------------------------'
print '1le 10 aras�ndaki say�lar�n karesi'
-- 1le 10 aras�ndaki say�lar�n karesini alan program:
declare @sayi2 int
set @sayi2=1
while(@sayi2<=10)
begin
print cast(@sayi2 as varchar(10)) + ' Karesi: ' +cast(@sayi2 * @sayi2 as varchar(3))
set @sayi2+=1
end

print '---------------------------------'
print '1le 10 aras�ndaki say�lar�n k�p�'
-- 1le 10 aras�ndaki say�lar�n k�p�n� alan program:
declare @sayi3 int
set @sayi3 = 1
while(@sayi3<=10)
begin
print cast(@sayi3 as varchar(10)) + ' K�p�: ' + cast(@sayi3 * @sayi3 * @sayi3 as varchar(4))
set @sayi3+=1
end