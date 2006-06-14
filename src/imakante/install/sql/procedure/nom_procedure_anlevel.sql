DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`nom_procedure_anlevel` $$
CREATE PROCEDURE `mida`.`nom_procedure_anlevel` (IN in_comprator INT, IN in_id INT, IN in_code VARCHAR(10),IN in_name VARCHAR(35), IN in_comment VARCHAR(250))
BEGIN

 IF (in_comprator = 0 ) THEN
     SELECT a.id_al,  a.cod_al, a.name_al, a.comment_al FROM anlevel a;

 END IF;

 IF (in_comprator = 1 ) THEN
  INSERT INTO anlevel(cod_al,name_al,comment_al) VALUES(in_code,in_name,in_comment);

 END IF;

 IF (in_comprator = 2 ) THEN
   UPDATE anlevel a SET cod_al = in_code,
                        name_al = in_name,
                        comment_al = in_comment
  WHERE id_al = in_id;

 END IF;

IF (in_comprator = 4 ) THEN
   DELETE FROM anlevel
   WHERE id_al = in_id;
END IF;

IF (in_comprator = 5 ) THEN
   SELECT a.id_al, a.cod_al, a.name_al, a.comment_al FROM anlevel a

   WHERE cod_al like CONCAT('%',in_code,'%') AND name_al like CONCAT('%',in_name,'%') AND comment_al like CONCAT('%',in_comment,'%');

END IF;

IF (in_comprator = 7 ) THEN
  SELECT MAX(id_al) FROM  anlevel;

END IF;

END $$

DELIMITER ;