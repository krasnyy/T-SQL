use Northwind


--LEFT soldan belirtilen say�da karakteri getirir
Select LEFT(Adi,2) from Personeller


--RIGHT sa�dan belirtilen say�da karakteri getirir
Select RIGHT(Adi,3)from Personeller

--UPPER b�y�k harfe �evilir
Select UPPER(Adi) from Personeller

--LOWER b�y�k harfe �evilir
Select LOWER(Adi) from Personeller

--SUBSTRING Belirtilen indexten itibaren belirtilen say�da karakter getir.
Select SUBSTRING(SoyAdi,3,2) from Personeller

--LTRIM RTRIM  bosluklar� keser
Select LTRIM('        Hasan')
Select RTRIM('Hasan        ')

--REVERSE Tersine Cevir
Select REVERSE(Adi)from Personeller

--REPLACE Belirtilen ifadeyi belirtilen ifade �eklinde de�i�tirir
Select REPLACE('Benim Adim Hasan','Hasan','Behlul')

--CHARINDEX Belirtilen karakterin veri i�inde s�ra numaras�n� verir
Select CHARINDEX('r',Adi) from Personeller
Select MusteriAdi,CHARINDEX(' ',MusteriAdi)from Musteriler


--Musteriler tablosunda MusteriAdi kolonundan sadece adlar� �ekelim
Select SUBSTRING(MusteriAdi,0,CHARINDEX(' ',MusteriAdi)) from Musteriler

--Musteriler tablosunda MusteriAdi kolonundan sadece soyadlar�n� �ekelim
Select SUBSTRING(MusteriAdi,CHARINDEX(' ',MusteriAdi),LEN(MusteriAdi)-(CHARINDEX(' ',MusteriAdi)-1)) from Musteriler