CREATE VIEW `mida`.`rep_comm_nal` AS
SELECT s.id_n_storage, n_storage.code_n_storage,
n_storage.name_n_storage,
s.id_pc,
n_product_consigment.id_pm,
n_product_main.code_pm,
n_product_main.name_pm,
n_product_main.barcod_pm,
n_product_consigment.parcel_pc, n_product_consigment.dateofexpire_pc,
sl_contragent_product.id_contragent, n_contragent.code_contragent,
n_contragent.name_n_contragent,
s.level, s.quant_nal, 
n_product_price.price0_pp,
(s.quant_nal*n_product_price.price0_pp) AS TSENA0,
n_product_price.price1_pp,
(s.quant_nal*n_product_price.price1_pp) AS TSENA1,
n_product_price.price2_pp,
(s.quant_nal*n_product_price.price2_pp) AS TSENA2,
n_product_price.price3_pp,
(s.quant_nal*n_product_price.price3_pp) AS TSENA3,
(s.quant_nal DIV n_product_description.v3_pd) AS miarka3,
((s.quant_nal - ((s.quant_nal DIV n_product_description.v3_pd)*n_product_description.v3_pd)) DIV n_product_description.v2_pd) AS miarka2,
(s.quant_nal - (s.quant_nal DIV n_product_description.v3_pd)*n_product_description.v3_pd - ((s.quant_nal - ((s.quant_nal DIV n_product_description.v3_pd)*n_product_description.v3_pd)) DIV n_product_description.v2_pd)*n_product_description.v2_pd ) AS OSTATAK
FROM sl_nalichnosti s
JOIN
n_storage ON n_storage.id_n_storage = s.id_n_storage
JOIN 
n_product_consigment ON n_product_consigment.id_pc = s.id_pc
JOIN 
sl_contragent_product ON sl_contragent_product.id_pm = n_product_consigment.id_pm
JOIN
n_product_main ON n_product_main.id_pm = sl_contragent_product.id_pm
JOIN 
n_product_description ON n_product_description.id_pd = n_product_main.id_pd
JOIN
n_product_price ON n_product_price.id_pp = n_product_consigment.id_pp
JOIN
n_contragent ON n_contragent.id_contragent = sl_contragent_product.id_contragent;