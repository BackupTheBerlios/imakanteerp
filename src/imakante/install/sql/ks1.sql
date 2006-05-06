SELECT  DISTINCT CONCAT(rep_comm_nal.id_pm,rep_comm_nal.code_n_storage,rep_comm_nal.code_contragent) AS con,  
rep_comm_nal.code_n_storage,
rep_comm_nal.name_pm,
SUM(rep_comm_nal.quant_nal), SUM(rep_comm_nal.TSENA0),
SUM(rep_comm_nal.quant_nal), SUM(rep_comm_nal.TSENA1),
SUM(rep_comm_nal.quant_nal), SUM(rep_comm_nal.TSENA2),
SUM(rep_comm_nal.quant_nal), SUM(rep_comm_nal.TSENA3)
FROM rep_comm_nal
WHERE rep_comm_nal.code_n_storage = 1
GROUP BY con
