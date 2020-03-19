

--identity degeri ayarlama
--yeni deger eklenince 27 den baþlar identity degeri
--en büyük identity degeri 100 ise 101 girmemiz lazým

DBCC Checkident(PersonellerX,reseed,27)
