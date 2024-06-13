--1
INSERT INTO regions (region_name, region_id)
VALUES ("Africa", "5")

INSERT INTO regions (region_name, region_id)
VALUES ("Midlle East", "6")

--2
UPDATE countries SET region_id = (SELECT region_id FROM regions
WHERE region_name like "Africa")
where country_name IN ("Nigeria", "Zimbabwe", "Zambia","Egypt")

UPDATE countries SET region_id = (SELECT region_id FROM regions
WHERE region_name like "Midlle East")
where country_name IN ("Israel", "Kuwait")

--3
DELETE FROM regions WHERE region_name = "Middle East and Africa" 

--4
INSERT INTO countries (country_id, country_name, region_id)
VALUES ("LI","Libia", (SELECT region_id FROM regions WHERE region_name like "Africa")),
("GA","Gabon", (SELECT region_id FROM regions WHERE region_name like "Africa"))

INSERT INTO countries (country_id, country_name, region_id)
VALUES ("OM","Oman", (SELECT region_id FROM regions WHERE region_name like "Midlle East")),
("PA","Palestina", (SELECT region_id FROM regions WHERE region_name like "Midlle East"))