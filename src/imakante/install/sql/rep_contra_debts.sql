# This VIEW represent the complete list of contragent(-clients) debts extracted from the sl_document_facade table

CREATE VIEW rep_contra_debts AS
SELECT d.id_df, d.out_contragent_df, d.total_df, d.date_edition_df, d.description_pay_df, d.paying_order_df, d.date_pay_df, d.level_df
    FROM sl_document_facade_df d
    
    WHERE d.description_pay_df = 1 OR d.description_pay_df = 4;