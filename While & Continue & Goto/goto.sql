---------------------GO TO----------------------------
print'----------------------------------'
declare @sayac2 tinyint
set @sayac2 = 1
git: --etiket
print 'Sayaç: ' + cast(@sayac2 as varchar(1))
set @sayac2 += 1
while (@sayac2 <= 5)
goto git