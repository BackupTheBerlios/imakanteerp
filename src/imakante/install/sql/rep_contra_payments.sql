CREATE VIEW rep_contra_payments AS
SELECT id_df, out_contragent_df, total_df, description_pay_df, date_pay_df
    FROM sl_document_facade df
    WHERE paying_order_df IS NOT NULL;