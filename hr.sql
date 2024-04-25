-1- SELECT first_name,last_name, salary FROM employees
WHERE  salary >6000

-2- SELECT first_name, last_name, department_name, l.city, l.state_province 
FROM employees t
join departments d on t.department_id = d.department_id
join locations l on  d.location_id = l.location_id

SELECT * FROM crime_scene_report