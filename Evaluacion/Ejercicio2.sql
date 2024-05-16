-- 2) Listar el nombre de la persona y los 
-- datos del auto (marca, modelo y patente) de 
-- todos las mujeres de menos de 40 años, 
-- elegir el orden en que se muestran 

SELECT p.name,d.plate_number, d.car_make, d.car_model FROM person p
JOIN drivers_license d on p.license_id = d.id
WHERE d.gender = 'female' AND d.age <= 40
ORDER BY age ASC ;