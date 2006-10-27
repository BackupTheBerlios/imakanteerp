CREATE VIEW `mida`.`v_casa_nal` AS
 SELECT DISTINCT v_nal_pri.code_n_casa AS casa,
@prihod:= IFNULL((SELECT v_nal_pri.SUMA FROM v_nal_pri WHERE in_type_sl_mop = 1
AND v_nal_pri.code_n_casa = casa), '0') AS PRIHOD,
@razhod:= IFNULL((SELECT v_nal_pri.SUMA FROM v_nal_pri WHERE in_type_sl_mop > 1
AND v_nal_pri.code_n_casa = casa), '0') AS RAZHOD, @NALICHNI:=(@prihod-@razhod) AS NALICHNI

FROM v_nal_pri
;