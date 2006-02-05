DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`ls_procedure_document_facade` $$
CREATE PROCEDURE `mida`.`ls_procedure_document_facade` (IN comprator TINYINT,      IN in_id_df INT(11),                IN in_id_contragent_in INT(11),     IN in_id_contragent_out,        IN in_id_obekt_out INT(11),
                                              IN in_id_obekt_in INT(11),           IN in_id_distributor INT(11),       IN in_id_deliver INT(11),           IN in_descriptionPaying INT(3), IN in_docFacadeNumber INT(10),
                                              IN in_docFacadeUser INT(11),         IN in_docFacadeUserLastEdit INT(11),IN in_id_facturaConnection INT(11), IN in_id_payingOrder INT(11),   IN in_id_zaqvkaConnection INT(11)
                                              IN in_docFacadeLevel INT(11),        IN in_docFacadeStorage INT(11),     IN in_docFacadeType INT (3),        IN in_docFacadeAllDDS DOUBLE,   IN in_docFacadeTotal DOUBLE,
                                              IN in_docFacadeCondition VARCHAR(11),IN in_docFacadeDate DATE,           IN in_docFacadeCommant VARCHAR(250),IN in_dateDeliver DATE,         IN in_payingDate DATE )
BEGIN
     IF (comprator = 0) THEN

     END IF;
     IF (comprator = 1) THEN

     END IF;
     IF (comprator = 2) THEN

     END IF;

     IF (comprator = 3) THEN

     END IF;

     IF (comprator = 4) THEN


     END IF;
     IF (comprator = 5) THEN

     END IF;

     IF (comprator = 6) THEN

     END IF;


     IF (comprator = 7) THEN
        
     END IF;

     IF (comprator = 8) THEN
        
     END IF;

    IF (comprator = 9) THEN
        
     END IF;

    IF (comprator = 10) THEN
        
     END IF;


END $$

DELIMITER ;