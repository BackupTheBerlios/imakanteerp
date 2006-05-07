SELECT  DISTINCT CONCAT(1,rep_comm_nal.id_pm,rep_comm_nal.code_n_storage,rep_comm_nal.code_contragent) AS con,  
rep_comm_nal.code_n_storage,
rep_comm_nal.code_pm,
rep_comm_nal.name_pm,
rep_comm_nal.barcod_pm,
SUM(rep_comm_nal.quant_nal), 
SUM(rep_comm_nal.miarka3),
SUM(rep_comm_nal.miarka2),
SUM(rep_comm_nal.ostatak),
SUM(rep_comm_nal.TSENA0),
SUM(rep_comm_nal.TSENA1),
SUM(rep_comm_nal.TSENA2),
SUM(rep_comm_nal.TSENA3),
rep_comm_nal.code_contragent,
rep_comm_nal.name_n_contragent
FROM rep_comm_nal
WHERE rep_comm_nal.code_n_storage = 1
GROUP BY con
ORDER BY code_pm
