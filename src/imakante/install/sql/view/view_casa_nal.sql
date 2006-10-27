CREATE VIEW `mida`.`rep_casa_nal` AS
  (SELECT  DISTINCT n_casa.code_n_casa, IFNULL(SUM(sum_os_val_sl_mop), 0) AS suma, in_type_sl_mop, out_type_sl_mop, levelx FROM n_casa
LEFT JOIN sl_m_operation ON sl_m_operation.in_sl_mop = n_casa.id_n_casa WHERE sl_m_operation.in_type_sl_mop = 1 
GROUP BY n_casa.code_n_casa)
UNION
(SELECT DISTINCT n_casa.code_n_casa, IFNULL(SUM(sum_os_val_sl_mop), 0) AS suma, in_type_sl_mop, out_type_sl_mop, levelx FROM n_casa 
LEFT JOIN sl_m_operation ON sl_m_operation.out_sl_mop = n_casa.id_n_casa WHERE sl_m_operation.out_type_sl_mop = 1
GROUP BY n_casa.code_n_casa);