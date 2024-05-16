--benja-Martinez

--1
SELECT last_name,first_name,salary from employees
where  salary < 6000

--2
SELECT t.last_name, t.first_name,d.department_name,l.city,l.state_province from employees t
join departments d on t.department_id = d.department_id
join locations l on d.location_id = l.location_id

--3
SELECT e.first_name as empleados, m.first_name as managers from employees e 
join employees m on m.employee_id = e.employee_id
ORDER by managers ASC

--4
SELECT e.first_name as nombre, e.last_name as apellido, d.first_name as hijo from employees e 
join dependents d on e.employee_id = d.employee_id
ORDER by hijo ASC

--5
SELECT e.first_name, e.last_name, e.salary, j.job_title  from employees e
join jobs j on j.job_id = e.job_id
ORDER by salary DESC

--6
SELECT e.first_name, e.last_name, d.department_name, e.salary from employees e
join departments d on d.department_id = e.department_id
ORDER by d.department_name ASC

--7
SELECT l.state_province, e.first_name FROM employees e 
JOIN departments d on d.department_id = e.department_id
JOIN locations l on l.location_id = d.location_id
ORDER by l.state_province ASC

--8
SELECT e.first_name, e.last_name, c.country_name, r.region_name FROM employees e 
JOIN departments d on d.department_id = e.department_id
JOIN locations l on l.location_id = d.location_id
JOIN countries c on c.country_id = l.country_id
JOIN regions r on r.region_id = c.region_id
ORDER by c.country_name ASC

--9
SELECT c.country_name, r.region_name FROM countries c
JOIN regions r on r.region_id = c.region_id
ORDER by c.country_name DESC

--10
SELECT e.first_name, e.last_name, j.min_salary, j.job_title FROM employees e
JOIN jobs j on j.job_id = e.job_id
ORDER by first_name asc