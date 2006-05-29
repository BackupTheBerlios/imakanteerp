delimiter //
CREATE TRIGGER upd_check AFTER UPDATE ON sl_nalichnosti
FOR EACH ROW
BEGIN
IF NEW.quant_nal  <> OLD.quant_nal  THEN
INSERT INTO log_action_nalich (id_corect, bupdate, aupdate) VALUES (OLD.id_nal,OLD.quant_nal,NEW.quant_nal)
;
END IF;
END;//
delimiter;