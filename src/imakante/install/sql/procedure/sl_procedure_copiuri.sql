DELIMITER $$

DROP PROCEDURE IF EXISTS `mida`.`sl_procedure_copiuri` $$
CREATE PROCEDURE `mida`.`sl_procedure_copiuri` (IN comprator INT(3),
                                                IN in_id_um INT(11),
                                                IN in_name_um VARCHAR(40),
                                                IN in_paper_100 INT(5),
                                                IN in_paper_50 INT(5),
                                                IN in_paper_20 INT(5),
                                                IN in_paper_10 INT(5),
                                                IN in_paper_5 INT(5),
                                                IN in_paper_2 INT(5),
                                                IN in_metal_1 INT(5),
                                                IN in_metal_050 INT(5),
                                                IN in_metal_020 INT(5),
                                                IN in_metal_010 INT(5),
                                                IN in_metal_005 INT(5),
                                                IN in_metal_002 INT(5),
                                                IN in_metal_001 INT(5),
                                                IN dateBegin VARCHAR(15), IN dateEnd VARCHAR(15))
BEGIN
  IF (comprator =  0) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd
              ORDER by id_sc ASC;
  END IF;
  IF (comprator = 1) then
  INSERT INTO sl_copiuri(id_um, paper_100, paper_50, paper_20, paper_10, paper_5,
                  paper_2, metal_1, metal_050, metal_020, metal_010, metal_010,
                   metal_005, metal_002,metal_001) VALUES( in_id_um, in_paper_100, in_paper_50,
                    in_paper_20, in_paper_10, in_paper_5, in_paper_2, in_metal_1, in_metal_050,
                     in_metal_020, in_metal_010, in_metal_005, in_metal_002, in_metal_001);
  end if;
  IF (comprator =  5) then

      SELECT sc.id_sc, sc.id_um, user_master.name_um, sc.instant,
              sc.paper_100, (sc.paper_100*100) AS suma_100, sc.paper_50, (sc.paper_50*50) AS suma_50,
              sc.paper_20, (sc.paper_20*20) AS suma_20, sc.paper_10, (sc.paper_10*10) AS suma_10,
              sc.paper_5,(sc.paper_5*5) AS suma_5, sc.paper_2, (sc.paper_2*2) AS suma_2,
              sc.metal_1, (sc.metal_1*1) AS suma_1, sc.metal_050, (sc.metal_050*0.50) AS suma_050,
              sc.metal_020, (sc.metal_020*0.20) AS suma_020, sc.metal_010, (sc.metal_010*0.10) AS suma_010,
              sc.metal_005, (sc.metal_005*0.05) AS suma_005, sc.metal_002, (sc.metal_002*0.02) AS suma_002,
              sc.metal_001, (sc.metal_001*0.01) AS suma_001
              FROM sl_copiuri sc
              LEFT JOIN user_master ON user_master.id_um = sc.id_um
              WHERE DATE(sc.instant) BETWEEN  dateBegin AND dateEnd AND user_master.name_um LIKE CONCAT('%',in_name_um,'%')
              ORDER by id_sc ASC;
  END IF;


END $$

DELIMITER ;