# This VIEW represent the complete list of contragent(-clients) debts extracted from the sl_document_facade table

CREATE VIEW rep_contra_debts_and_payments AS
SELECT d.id_df AS 'id',
    td.name_ntd AS 'dokumentType',
    d.type_df AS 'refCodeNTD',
    d.number_df AS 'dokumentNumber',
    d.out_contragent_df AS 'refNC', 
    nc.code_contragent AS 'codeContragent', 
    nc.name_n_contragent AS 'Contragent', 
    d.total_df AS 'Suma', 
    d.date_edition_df AS 'data', 
    d.description_pay_df AS 'refKP', 
    kp.name_kp AS 'typePayment', 
    d.paying_order_df AS 'incomeOrder', 
    d.date_pay_df AS 'termOfPayment', 
    
    d.level_df AS 'LEVEL'
    FROM sl_document_facade d 
    LEFT JOIN sl_m_operation mop ON mop.id_sl_mop = d.paying_order_df 

    LEFT JOIN n_contragent nc ON nc.id_contragent = d.out_contragent_df
    LEFT JOIN n_type_doc td ON td.code_ntd = d.type_df
    LEFT JOIN kind_paying kp ON kp.id_kp = d.description_pay_df 
    WHERE d.out_contragent_df > 0;
