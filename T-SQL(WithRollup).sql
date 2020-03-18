--With Rollup 
--Group by ile gruplanmýþ veri kümesinde ara toplam alýnmasýný saðlar

Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup


Select KategoriID,UrunID,SUM(TedarikciID)from Urunler 
Group By KategoriID,UrunID  With Rollup

--Having þartýyla beraber rollup
Select SatisID,UrunID,SUM(Miktar) from [Satis Detaylari]
Group By SatisID,UrunID with Rollup Having SUM(Miktar)>100