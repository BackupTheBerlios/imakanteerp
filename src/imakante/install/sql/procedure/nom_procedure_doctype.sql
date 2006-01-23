DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_doctype` $$
CREATE PROCEDURE `nom_procedure_doctype`(IN in_id INT(6), IN comprator TINYINT, IN in_name VARCHAR(50), IN in_print_name INT(50))
BEGIN
     IF (comprator = 0) THEN
        SELECT n.id_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n;
     END IF;

     IF (comprator = 1) THEN
        INSERT INTO n_type_doc (name_ntd, name_print_ntd) VALUES(in_name, in_print_name);
     END IF;

     IF (comprator = 2) THEN
        UPDATE n_type_doc SET name_ntd = in_name, name_print_ntd = in_print_name
           WHERE n_typedoc.id_ntd = in_id;
     END IF;

     IF (comprator = 3) THEN
        DELETE FROM n_type_doc  WHERE id_ntd = in_id;
     END IF;

     IF (comprator = 4) THEN
        SELECT n.name_ntd, n.name_print_ntd FROM n_type_doc n WHERE n.id_ntd = in_id;
     END IF;

     IF (comprator = 5) THEN
        SELECT n.id_ntd, n.name_ntd, n.name_print_ntd FROM n_type_doc n WHERE n.name_ntd LIKE CONCAT('%',in_name,'%') AND
        n.name_print_ntd LIKE CONCAT('%',in_print_name,'%');
     END IF;

     IF (comprator = 7) THEN
        SELECT MAX(n.id_ntd) AS id FROM n_type_doc n;
     END IF;

     IF (comprator = 8) THEN
       DELETE FROM n_type_doc;
     END IF;


END $$

DELIMITER ;