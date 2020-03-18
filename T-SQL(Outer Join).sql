--Inner Joinde e�le�en kay�tlar� getiriyordu outer join ise e�le�meyen kay�tlar� getirmektedir

--Left Join
--Join ifadesisinin solundaki tablodaki t�m kay�tlar� getirir sa��ndaki tablodan e�le�enleri yan yana
--e�le�meyenleri null olarak getirir

Select *from Oyuncular o Left Outer Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Left Outer Join Oyuncular o on o.FilmID=f.FilmId


Select *from Oyuncular o Left  Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Left  Join Oyuncular o on o.FilmID=f.FilmId


Select *from Oyuncular o Right  Join Filmler f on o.FilmID=f.FilmId
Select *from Filmler f Right  Join Oyuncular o on o.FilmID=f.FilmId


--Full Join 
--Joinin iki taraf�ndaki tablolardan e�le�en e�le�meyen hepsinin getirir
Select *from Oyuncular o Full Outer Join Filmler f on o.FilmId = f.FilmId

Select *from Oyuncular o Full  Join Filmler f on o.FilmId = f.FilmId