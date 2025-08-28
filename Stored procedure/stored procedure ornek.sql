------------------------PROCEDURE ÖRNEÐÝ----------------------------
create procedure Toplam(@sayi1 int, @sayi2 int, @sonuc int output)
as
set @sonuc = @sayi1 + @sayi2


declare @t int
exec Toplam 4,7, @t output
print @t