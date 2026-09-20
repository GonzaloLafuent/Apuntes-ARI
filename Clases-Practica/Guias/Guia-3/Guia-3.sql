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

select distinct e.EmployeeId
from Employee e join Customer c on e.EmployeeId = c.SupportRepId
join Invoice i on i.CustomerId = c.CustomerId
join InvoiceLine il on i.InvoiceId = il.InvoiceId 
where DATEDIFF(YEAR,e.BirthDate, GETDATE()) > 25
group by e.EmployeeId, i.InvoiceId
having COUNT(il.InvoiceLineId) > 10

select distinct e.EmployeeId
from Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId, c.CustomerId
HAVING COUNT(i.InvoiceId) > 10;

select e1.FirstName, e1.LastName, e2.FirstName as FirstName_boss, e2.LastName as LastName_boss
from Employee e1 join Employee e2 on e1.ReportsTo = e2.EmployeeId

select e1.FirstName, e1.LastName, e2.FirstName as FirstName_boss, e2.LastName as LastName_boss
from Employee e1 left join Employee e2 on e1.ReportsTo = e2.EmployeeId


select sub.CustomerId, AVG(sub.sum_track) as track_avg
from (
    select c.CustomerId, COUNT(il.InvoiceId) as sum_track
    from customer c join Invoice i on i.CustomerId = c.CustomerId
    join InvoiceLine il on i.InvoiceId = il.InvoiceId
    group by c.CustomerId, i.InvoiceId
) as sub
group by CustomerId 
order by CustomerId