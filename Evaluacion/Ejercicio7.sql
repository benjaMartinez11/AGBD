-- 7) Mostrar los nombres, numeros de seguridad social
-- (ssn), id de membresía y tipo de membresía de
-- las personas que fueron al gimnasio aunque sea una
-- vez durante el 2017.  Los resultados deben estar
-- ordenados de manera que los de un mismo tipo de
-- membresía (gold, silver, etc) aparezcan todos 
-- seguidos y dentro de cada una ordenados por ssn.   

SELECT p.name, p.ssn, gc.membership_id, gm.membership_status, gc.check_in_date FROM get_fit_now_check_in gc
JOIN get_fit_now_member gm on gc.membership_id = gm.id
JOIN person p on gm.person_id = p.id
WHERE check_in_date like '2017%'
GROUP by p.name
ORDER BY gm.membership_status DESC, p.ssn ASC 


























