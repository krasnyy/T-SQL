--Inner Joinde eþleþen kayýtlarý getiriyordu outer join ise eþleþmeyen kayýtlarý getirmektedir

--Left Join
--Join ifadesisinin solundaki tablodaki tüm kayýtlarý getirir saðýndaki tablodan eþleþenleri yan yana
--eþleþmeyenleri null olarak getirir

Select *from Oyuncular o Left Outer Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Left Outer Join Oyuncular o on o.FilmID=f.FilmId


Select *from Oyuncular o Left  Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Left  Join Oyuncular o on o.FilmID=f.FilmId


Select *from Oyuncular o Right  Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Right  Join Oyuncular o on o.FilmID=f.FilmId


--Full Join 
--Joinin iki tarafýndaki tablolardan eþleþen eþleþmeyen hepsinin getirir
Select *from Oyuncular o Full Outer Join Filmler f on o.FilmId = f.FilmId

Select *from Oyuncular o Full  Join Filmler f on o.FilmId = f.FilmId