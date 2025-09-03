# SQL Veri Taban Programlama
# Tablolar
## Kitap 1 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap1%20tablosu.PNG">
## Kitap 2 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap2%20tablosu.PNG">
## Kitap 3 tablosu
<img src="https://raw.githubusercontent.com/nepatiess/SQL-Veri-Taban-Programlama/refs/heads/main/pics/kitap%203%20tablosu.PNG">
## Syntax

| Commands | Use for  |
|-------- | ------- |
| Select | veritabanından veri çekmek |
| Update | veritabanında veri güncellemek | 
| Delete | veritabanınndan veri silmek |
| Insert into | veritabanına yeni veri eklemek |
| Create database | yeni bir veritabanı oluşturmak |
| Alter database | veritabanını modifiye etmek |
| Create table | yeni bir tablo oluşturmak |
| Alter table | tabloyu modifiye etmek |
| Drop table | Tablo silmek |
| Create index | index oluşturmak |
| Drop index | index silmek | 

1. Select syntax
```
select column1, column2,...
from table_name
```

```
select * from kitap1
```

2. Select Distinct syntax
```
select distinct column1, column2,...
from table_name
```

3. Where syntax
```
select column1, column2,...
from table_name
where condition;
```

```
select * from kitap1
where kitapAd = 'Nutuk';
```

4. Order by syntax
- Kitap renklerini alfabetik sıraya göre sıraladı.
```
select * from kitap2
order by kitapRenk
```
- asc : a'dan Z'ye alfabetik sıraya göre sıraladı.
```
select * from kitap3
order by kitapDerece asc
```
- desc: z'den a'ya ters alfabetik şekilde sıraladık.
```
select * from kitap3
order by kitapDerece desc
```
-- order by birden fazla sütun
```
select * from kitap2
order by KitapRenk, KitapPuan
```
- hem asc hem de desc kullanımı
```
select * from kitap2
order by KitapRenk asc, KitapOzet desc
```

5. AND & OR & NOT
```
select * from kitap2
where KitapTur = 'Roman' AND KitapPuan = 10 
```

```
select column1, column2,....
from table_name
where not condition;
```

```
select * from kitap2
where not KitapTur = 'Roman'
```

```
select * from kitap1
where KitapSayfa not between 10 and 100
```

```
select * from kitap1
where KitapAdi not like 'A%'
```
