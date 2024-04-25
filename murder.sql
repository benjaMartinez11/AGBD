--1--

SELECT * FROM crime_scene_report
where type = "murder" and city = "SQL City" and date = 20180115

--2--

SELECT address_street_name as direccion,address_number,name as nombrePersonas FROM person
where  address_street_name ='Northwestern Dr' 
order by address_number desc
limit 1

--direccion	address_number	nombrePersonas
--Northwestern Dr	4919	Morty Schapiro


SELECT * from person p
join get_fit_now_member g on p.id = g.person_id
join interview i on g.person_id = i.person_id
where p.name  like  'Annabel%' and p.address_street_name ='Franklin Ave'

-- person id 16371

--id	name	license_id	address_number	address_street_name	ssn	id	person_id	name	membership_start_date	membership_status	person_id	transcript
--16371	Annabel Miller	490173	103	Franklin Ave	318771143	90081	16371	Annabel Miller	20160208	gold	16371	I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.


--3--

SELECT p.license_id ,p.address_street_name, p.address_number, p.name FROM person p
join drivers_license d on p.license_id = d.id
where  address_street_name ='Northwestern Dr' 
order by address_number desc
limit 1

