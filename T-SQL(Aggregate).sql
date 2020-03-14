use Northwind

--AVG oralama alýr
Select AVG(PersonelID) from Personeller

--MAX en büyük deðeri bulur
Select MAX(PersonelID)from Personeller

--MIN en küçük degeri bulur
Select MIN(PersonelID)from Personeller

--COUNT toplam sayisini verir
Select COUNT(*) from Personeller
Select COUNT(Adi) from Personeller


--SUM toplamýný verir
Select SUM(NakliyeUcreti) from Satislar