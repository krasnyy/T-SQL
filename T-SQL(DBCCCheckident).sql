

--identity degeri ayarlama
--yeni deger eklenince 27 den ba�lar identity degeri
--en b�y�k identity degeri 100 ise 101 girmemiz laz�m

DBCC Checkident(PersonellerX,reseed,27)
