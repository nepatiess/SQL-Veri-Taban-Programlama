---------------------------PROCEDURE----------------------------
------------�arp�m Bulma-----------------
 print '�arp�m Bulma'
create procedure carpim
(@s1 int, @s2 int, @s3 int, @sonuc int output)
as 
set @sonuc = @s1 * @s2 * @s3
print 'Sonu�: ' + cast(@sonuc as varchar(3))

-- yukar�y� �al��t�rd�ktan sonra alttaki kodu �al��t�rmam�z gerek.
-- E�er tekrar �al��t�r�rsak daha �nceden procedure olu�turuldu diyip hata verir.
declare @a int 
exec carpim 4,5,6, @a output

----Ortalama Bulma-------------------
 print 'Ortalama Bulma'
create procedure ortalama
(@n1 int, @n2 int, @n3 int, @ort int output)
as
set @ort = (@n1 + @n2 + @n3) / 3
print 'Ortalama: ' + cast(@ort as varchar(2))

declare @ort int
exec ortalama 7,3,14, @ort output

create procedure kitapGetir(@renk varchar(10))
as
select * from kitap2 where KitapRenk=@renk

exec kitapGetir 'mavi' -- mavi renkli kitaplar� getirdi

