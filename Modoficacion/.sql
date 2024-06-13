-2-
INSERT INTO user (username, password)
VALUES ("benja", "1234")

INSERT INTO user (username, password)
VALUES ("miguel", "4321")

INSERT INTO post (author_id, title, body)
VALUES ((SELECT id FROM user WHERE username like "benja"),"basquet","jugador de Comunicaciones"),
       ((SELECT id FROM user WHERE username like "benja"),"estudiante","estudiante de la escuela Tecnica de la UBA"),
	   ((SELECT id FROM user WHERE username like "benja"),"edad","tengo 17 años")

INSERT INTO post (author_id, title, body)
VALUES ((SELECT id FROM user WHERE username like "miguel"),"futbol","jugador de Ferro"),
       ((SELECT id FROM user WHERE username like "miguel"),"estudiante","estudiante de la escuela comercial 12"),
	   ((SELECT id FROM user WHERE username like "miguel"),"edad","tengo 18 años")

-3-
INSERT INTO user (username, password)
VALUES ("alexa", (SELECT password FROM user WHERE username like "benja"));

-4-
UPDATE post SET body = " "
WHERE author_id = ((SELECT id FROM user WHERE username like "benja"));

UPDATE post SET body = " "
WHERE author_id = ((SELECT id FROM user WHERE username like "miguel"));

-5-
DELETE FROM post WHERE author_id = (SELECT id FROM user WHERE username like "miguel");
