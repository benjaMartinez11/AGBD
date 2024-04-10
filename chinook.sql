-1- SELECT name, Composer, Milliseconds from tracks

-2- SELECT FirstName, LastName, Address, City from customers

-3- SELECT name,Milliseconds FROM tracks WHERE Milliseconds >2900000 and Composer is null 

-4- SELECT LastName, FirstName, Company from customers
where Company is not null

-5- SELECT BillingCity FROM invoices WHERE BillingState is null 
order by BillingState ASC

-6- SELECT Title FROM albums WHERE Title like "%of%"
order by title asc

-7- SELECT name from tracks
join albums on Title
ORDER by Title DESC

-8- SELECT t.name from tracks t
JOIN albums a ON t.albumid = a.albumid
ORDER by Title DESC
