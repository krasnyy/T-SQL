
use Northwind 
--Like Sorgulari 

--Ýsminin Baþ harfi j olan personellerin adýný ve soyadýný yazdýralim
Select Adi,SoyAdi from Personeller Where Adi Like 'j%'

--Ýsminin son harfi y olan personellerin adýný soyadini yazdýralim
Select Adi +' '+SoyAdi from Personeller Where Adi Like '%y'

--Ýsminin son üç harfi ert olan personelleri getirelim
Select *from Personeller Where Adi Like '%ert'


--Ýsminin ilk harfi r son harfi t olan personeli getirelim
Select *from Personeller Where Adi Like 'r%t'

--Ýsminde an geçen personelin adýný yazdýralým
Select Adi from Personeller Where Adi Like '%an%'


--Ýsminde baþ harfi n olan ve içerisinde an geçen personeli getirelim
Select *from Personeller Where Adi Like 'n%an%'


--Ýsminin ilk harfi a ikinci harfi fark etmez ve üçüncü harfi d olan personeli geirelim
Select *from Personeller Where Adi Like 'a_d%'


--Ýsminin ilk harfi m ikinci - üçüncü -dördüncü fark etmez ve beþinci harfi a olan personeli getirelim
Select *from Personeller Where Adi Like 'm___a%'

--[] yada operatörü
--Ýsminin ilk harfi n ya da m ya da r olan personelleri getirelim
Select *from Personeller Where Adi Like '[nor]%'

--Ýsminin içerisinde a ya da i geçen personelleri getirelim
Select *from Personeller Where Adi Like'%[ai]%'

-- [*-*] alfabetik arasýnda operatörü

--Ýsminin baþ harfi a ile k arasýnda alfabetik sýraya göre herhangi bir harf olan personellerin adaýný yazdýralým
Select Adi from Personeller Where Adi Like '[a-k]%'


--[^*] (Deðil Operatörü)

--Ýsminin bas harfi a olmayan personelleri getirelim.
Select *from Personeller Where Adi Like '[^a]%'

--Ýsminin bas harfi an olmayan personelleri getirelim.

Select *from Personeller Where Adi Like '[^an]%'

--Ýsminin bas harfi ve gerisi önemli olmayan personelleri getirelim
Select *from Personeller Where Adi Like '_%'

--Ýsminin bas harfi _ olan personeli getir
Select * from Personeller Where Adi Like '[_]%'


Select *from Personeller Where Adi Like 'ü_%' Escape 'ü'

