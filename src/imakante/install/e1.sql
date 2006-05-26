SELECT  DISTINCT CONCAT(rep_comm_nal.level ,rep_comm_nal.code_n_storage ,rep_comm_nal.code_pm )
 AS con ,rep_comm_nal.code_n_storage ,rep_comm_nal.code_pm ,rep_comm_nal.name_pm ,SUM(rep_comm_nal.quant_nal)
 as kolichestvo, SUM(rep_comm_nal.miarka3), SUM(rep_comm_nal.miarka2), SUM(rep_comm_nal.ostatak),

 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
 WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 100
 AND rep_documents.code_store = rep_comm_nal.code_n_storage AND rep_documents.level_df IN(0,1)
 GROUP BY rep_documents.code_product
 ),0) AS podajba,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
 WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 201
 GROUP BY rep_documents.code_product
 ),0) AS fakop,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
 WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 202
 GROUP BY rep_documents.code_product
 ),0) AS fakdan,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
 WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 500
 GROUP BY rep_documents.code_product
 ),0) AS narejd,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
  WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 600
 GROUP BY rep_documents.code_product
 ),0) AS priemane,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
  WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 700
 GROUP BY rep_documents.code_product
 ),0) AS nprehv,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
  WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 800
 GROUP BY rep_documents.code_product
 ),0) AS brak,
 IFNULL((SELECT SUM(rep_documents.numbers_piece_dl)
 FROM rep_documents
  WHERE rep_documents.code_product = rep_comm_nal.code_pm AND
 rep_documents.date_edition_df BETWEEN '0000-00-00' AND '2006-10-10' AND rep_documents.type_df = 900
 GROUP BY rep_documents.code_product
 ),0) AS lipsa
 FROM  `rep_comm_nal` JOIN n_product_main on rep_comm_nal.id_pm = n_product_main.id_pm
 WHERE `rep_comm_nal`.`code_contragent` BETWEEN '0' AND '1000000000' AND  `rep_comm_nal`.`code_pm` BETWEEN '0' AND '1000000000' AND  `rep_comm_nal`.`code_n_storage` BETWEEN '0' AND '1000000000' 
 AND rep_comm_nal.level IN(0,1) GROUP BY con ORDER BY rep_comm_nal.code_n_storage DESC
