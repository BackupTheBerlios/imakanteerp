DELIMITER $$
 
CREATE TRIGGER `mida`.`trigger_au_dtn` 
AFTER UPDATE ON `mida`.`sl_doc_type_num`
  FOR EACH ROW 
BEGIN
#IF NEW.quant_nal  <> OLD.quant_nal  THEN

INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             1);
INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             2);
INSERT INTO sl_document_facade(number_df,type_df,level_df)
     VALUES (CONCAT(NEW.area_number_sdtn,'0000000'),
             (SELECT n.code_ntd FROM n_type_doc n WHERE NEW.id_ntd=n.id_ntd),
             3);

END; $$

DELIMITER ;