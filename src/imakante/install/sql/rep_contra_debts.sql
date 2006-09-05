# This VIEW represent the complete list of contragent(-clients) debts extracted from the sl_document_facade table

CREATE VIEW rep_contra_debts AS
SELECT id_df, out_contragent_df, total_df, date_edition_df
    FROM sl_document_facade;