

Select MusteriAdi,
Case 
When Bolge Is Null Then 'Bolge bilinmiyor'
Else
Bolge
End
from Musteriler


--Coalesce Fonksitonu ile null kontrol�
Select MusteriAdi,Coalesce(Bolge,'Bolge Bilinmiyor')from Musteriler

Select MusteriAdi, Isnull(Bolge,'Bolge Bilinmiyor')from Musteriler


--NullIf
--Fonksiyona verilen kolon ikinci parametre verilen de�ere e�it ise o kolonu Null olarak getirir.

Select NullIf(0,0)

--Hedef stok d�zeyi 0 olmayan �r�nlerin ortalamas� nedir
Select AVG(HedefStokDuzeyi) from Urunler Where HedefStokDuzeyi<>0

Select AVG(NullIf(HedefStokDuzeyi,0))from Urunler
