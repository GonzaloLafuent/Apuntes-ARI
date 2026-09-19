select c.FirstName, c.LastName
from Customer c
where c.Country = 'Brazil'

select c.FirstName, c.LastName, i.InvoiceId, i.InvoiceId
from Customer c join Invoice i on i.CustomerId = c.CustomerId

select ar.Name, al.Title, t.TrackId
from Track t join Album al on al.AlbumId = t.TrackId
join Artist ar on al.ArtistId = ar.ArtistId
order by t.TrackId 

select p.name, COUNT(t.TrackId)
from Playlist p join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
JOIN Track t on t.TrackId = pt.TrackId 
join MediaType m on m.MediaTypeId = t.MediaTypeId
where m.Name = 'MPEG audio file'
group by p.name
having COUNT(t.TrackId) > 1

select p.name, COUNT(t.TrackId)
from Playlist p join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
join Track t on t.TrackId = pt.TrackId
join Album al on al.AlbumId = t.AlbumId 
join Artist ar on ar.ArtistId = al.ArtistId 
where ar.Name = 'Iron Maiden'
group by p.name
having COUNT(t.TrackId) > 10

select p.Name, COUNT(t.AlbumId) as cant_albums
from Playlist p join PlaylistTrack pt on p.PlaylistId = pt.PlaylistId
join Track t on pt.TrackId = t.TrackId 
group by p.name

select e.EmployeeId
from Employee e join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on i.CustomerId = c.CustomerId
join InvoiceLine il on i.InvoiceId = il.InvoiceId 
where DATEDIFF(YY,e.BirthDate, GETDATE()) > 25
group by e.EmployeeId, il.InvoiceLineId
having COUNT(il.InvoiceLineId) > 10