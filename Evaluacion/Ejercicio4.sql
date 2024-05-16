-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la tercera casa
-- de la calle 'Franklin Ave' (ordenadas por la altura
-- de la calle)

SELECT address_number, address_street_name FROM person 
WHERE address_street_name like 'Franklin Ave'
ORDER by address_number ASC
limit 1 offset 1