------------STRING FONKSIYONLAR-----------------
-- substring syntax
-- substring (expression, start, length)

declare @kelime as varchar(100)
set @kelime = 'Merhaba D�nya'

select substring(@kelime, 1, 7) -- Merhaba kelimesini ald�
select substring(@kelime, 9, 5) -- D�nya kelimesini ald�


-- LOWER, UPPER
 declare @kelime as varchar(100)
set @kelime = 'Merhaba D�nya'
select lower(@kelime), upper(@kelime)

-- STRING B�RLE�T�RME
declare @ad as varchar(100) = 'Zeynep'
declare @soyad as varchar(100) = 'Koz'
select @ad + ' ' + @soyad

-- RIGHT,LEFT
declare @kelime as varchar(100)
set @kelime = 'Merhaba D�nya'
select left (@kelime , 7), right (@kelime , 10)

-- LTRIM, RTRIM, TRIM
declare @kelime as varchar(100) = '  MERHABA D�NYA  '
select ltrim(@kelime), rtrim(@kelime), trim(@kelime)
-- ltrim: metnin sol (left) taraf�ndaki bo�luklar� sildi
-- rtim: metnin sa� (right) taraf�ndaki bo�luklar� sildi
-- trim: metnin i�indeki bo�luklar� siler.

select ltrim(rtrim(@kelime)) -- =trim

--REPLACE
declare @kelime as varchar(100) = 'Merhaba D�nya'
select replace(@kelime, '�','u')

-- LEN
declare @kelime as varchar(100) = 'Merhaba D�nya'
select len('Merhaba D�nya'), len(@kelime)

-- STRING_SPLIT
-- kelimeyi ikiye ay�rd� ve ayn� columnda g�sterdi
declare @kelime as varchar(100) = 'Merhaba D�nya'
select * from string_split(@kelime, ' ')