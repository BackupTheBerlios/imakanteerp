
(SELECT n_contragent.code_contragent,  SUM(sl_document_facade.total_df),
'0' AS vid
FROM sl_document_facade
inner JOIN  n_contragent ON
n_contragent.id_contragent = sl_document_facade.out_contragent_df
WHERE level_df = 1 AND type_df = 1 AND type_df = 7
 
GROUP by code_contragent)
UNION
(SELECT n_contragent.code_contragent,  SUM(sl_document_facade.total_df),
'1' AS vid
FROM sl_document_facade
inner JOIN  n_contragent ON
n_contragent.id_contragent = sl_document_facade.in_contragent_df
WHERE level_df = 1 AND type_df = 6
GROUP by code_contragent
)