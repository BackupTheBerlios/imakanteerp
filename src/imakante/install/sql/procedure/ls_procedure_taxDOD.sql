DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_taxDOD`$$
CREATE PROCEDURE `mida`.`ls_procedure_taxDOD` (IN comprator TINYINT, IN in_pyear INT,
                                               IN in_id INT, in_date DATE, IN in_doh DOUBLE,
                                               IN in_sum DOUBLE, IN in_prct DOUBLE)
BEGIN
      IF (comprator = 0) THEN
         SELECT  doh.l, sum.l, prct.l FROM ls_dod l;
      END IF;

      IF (comprator = 1) THEN
          SELECT  l.doh, l.sum, l.prct FROM ls_dod l WHERE YEAR(l.datep) = in_year;
      END IF;

      IF comprator = 2 THEN
        UPDATE ls_dod l SET l.datep = in_date, l.doh = in_dod, l.sum = in_sum, l.prct = in_prct
           WHERE l.id = in_id;
     END IF;


     IF comprator = 3 THEN
        DELETE FROM ls_dod WHERE ls_dod.id = id;
     END IF;

      IF comprator = 4 THEN
         SELECT  l.doh, l.sum, l.prct FROM ls_dod l WHERE l.id = in_id;
     END IF;

END$$

DELIMITER ;