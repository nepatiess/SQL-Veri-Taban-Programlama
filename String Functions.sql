------------STRING FONKSIYONLAR-----------------
-- substring syntax
-- substring (expression, start, length)

declare @kelime as varchar(100)
set @kelime = 'Merhaba Dünya'

select substring(@kelime, 1, 7) -- Merhaba kelimesini aldý
select substring(@kelime, 9, 5) -- Dünya kelimesini aldý


-- LOWER, UPPER
 declare @kelime as varchar(100)
set @kelime = 'Merhaba Dünya'
select lower(@kelime), upper(@kelime)

-- STRING BÝRLEÞTÝRME
declare @ad as varchar(100) = 'Zeynep'
declare @soyad as varchar(100) = 'Koz'
select @ad + ' ' + @soyad

-- RIGHT,LEFT
declare @kelime as varchar(100)
set @kelime = 'Merhaba Dünya'
select left (@kelime , 7), right (@kelime , 10)

-- LTRIM, RTRIM, TRIM
declare @kelime as varchar(100) = '  MERHABA DÜNYA  '
select ltrim(@kelime), rtrim(@kelime), trim(@kelime)
-- ltrim: metnin sol (left) tarafýndaki boþluklarý sildi
-- rtim: metnin sað (right) tarafýndaki boþluklarý sildi
-- trim: metnin içindeki boþluklarý siler.

select ltrim(rtrim(@kelime)) -- =trim

--REPLACE
declare @kelime as varchar(100) = 'Merhaba Dünya'
select replace(@kelime, 'ü','u')

-- LEN
declare @kelime as varchar(100) = 'Merhaba Dünya'
select len('Merhaba Dünya'), len(@kelime)

-- STRING_SPLIT
-- kelimeyi ikiye ayýrdý ve ayný columnda gösterdi
declare @kelime as varchar(100) = 'Merhaba Dünya'
select * from string_split(@kelime, ' ')