use Northwind

--AVG oralama al�r
Select AVG(PersonelID) from Personeller

--MAX en b�y�k de�eri bulur
Select MAX(PersonelID)from Personeller

--MIN en k���k degeri bulur
Select MIN(PersonelID)from Personeller

--COUNT toplam sayisini verir
Select COUNT(*) from Personeller
Select COUNT(Adi) from Personeller


--SUM toplam�n� verir
Select SUM(NakliyeUcreti) from Satislar