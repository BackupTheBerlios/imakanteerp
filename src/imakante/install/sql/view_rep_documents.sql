CREATE VIEW rep_documents AS
(
SELECT  d.id_dl,
        d.id_pc, pc.parcel_pc, pc.id_pm,
            pm.name_pm,
        d.id_n_storage, s.code_n_storage,
        d.singly_price_dl, d.climb_down_dl, d.numbers_piece_dl, d.dds_dl, d.totalall_dl,
        d.id_df, df.out_contragent_df, df.total_df, df.dds_df, df.user_df, df.distributor_df, df.delivere_df,
        d.price_list_dl
    FROM sl_document_lines d
    LEFT JOIN n_product_consigment pc ON pc.id_pc = d.id_pc
    LEFT JOIN n_product_main pm ON pm.id_pm = pc.id_pm
    LEFT JOIN n_storage s ON s.id_n_storage = d.id_n_storage
    LEFT JOIN sl_document_facade df ON df.id_df = d.id_df
    
);