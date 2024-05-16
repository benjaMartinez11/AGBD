-- 5) Encontrar la edad mínima, máxima y promedio
-- de los varones que tienen licencia de conducir

SELECT gender, min(age), max(age), avg(age) as promedio FROM drivers_license
WHERE gender = 'male'