-1-
SELECT department_name FROM departments
ORDER by department_name ASC

-2-
SELECT salary FROM employees
ORDER by salary DESC

-3-
SELECT job_title, min_salary, max_salary FROM jobs
where  job_title like '%manager' 
ORDER by min_salary, max_salary DESC

-4-
SELECT m.country_name as pais, c.region_name as region FROM regions c
JOIN countries m on c.region_id = m.region_id
ORDER BY region, pais;

-5-
