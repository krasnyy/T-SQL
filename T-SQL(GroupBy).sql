
use Northwind

 
Select KategoriID ,COUNT(*) from Urunler Group By KategoriID


Select KategoriID,TedarikciID,COUNT(*) from Urunler Group By KategoriID,TedarikciID


select *from Satislar

Select PersonelID,COUNT(*) from Satislar Group By PersonelID

Select PersonelID,SUM(NakliyeUcreti) from Satislar Group By PersonelID

Select KategoriID,COUNT(*) from Urunler Where KategoriID>5 Group By KategoriID


Select KategoriID ,COUNT(*) from Urunler Where KategoriID>5 Group By KategoriID Having COUNT(*)>6

