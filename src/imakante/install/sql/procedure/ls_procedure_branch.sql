DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_branch`
CREATE PROCEDURE `ls_procedure_branch`(IN in_id INT(6), IN comprator TINYINT, IN in_code INT(6), IN in_name VARCHAR(30))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO ls_otdeli (code, name) VALUES(in_code,in_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE ls_otdeli SET code = in_code, name = in_name
           WHERE ls_otdeli.id = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM ls_otdeli  WHERE id = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.code, n.name FROM ls_otdeli n WHERE n.id = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id, n.code, n.name FROM ls_otdeli n WHERE n.code LIKE CONCAT('%',in_code,'%') AND
        n.name LIKE CONCAT('%',in_name,'%');
     END IF;

     IF (comprator = 6) THEN
        SELECT MAX(n.code) AS code FROM ls_otdeli n;
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id) AS id FROM ls_otdeli n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM ls_otdeli;
     END IF;

END