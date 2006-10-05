# This VIEW represent the complete list of contragent(-clients) debts extracted from the sl_document_facade table

CREATE VIEW rep_contra_debts AS
SELECT d.id_df AS 'id', 
    d.out_contragent_df AS 'refNC', 
    nc.code_contragent AS 'codeContragent', 
    nc.name_n_contragent AS 'Kontragent'
    d.total_df AS 'suma', 
    d.date_edition_df AS 'ot data', 
    d.description_pay_df AS 'refKP', 
    kp.name_kp AS 'Razpla6tane', 
    d.paying_order_df AS 'Prihoden order', 
    d.date_pay_df AS 'Pay Day', 
    
    d.level_df AS 'LEVEL'
    FROM sl_document_facade_df d 
    LEFT JOIN sl_m_operation mop ON mop.id_sl_mop = d.paying_order_df 
    
    LEFT JOIN n_contragent nc ON nc.id_contragent = d.out_contragent_df 
    LEFT JOIN kind_paying kp ON kp.id_kp = d.description_pay_df 
    WHERE (d.description_pay_df = 1 OR d.description_pay_df = 4);