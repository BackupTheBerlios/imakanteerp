CREATE VIEW rep_documents AS (
SELECT 
    d.id_dl,
    d.id_pc, pc.parcel_pc,
    pc.id_pm, pm.code_pm AS code_product, pm.name_pm AS name_product,
    d.id_n_storage, s.code_n_storage AS code_store, s.name_n_storage AS name_store,
    d.singly_price_dl,
    d.climb_down_dl,
    d.numbers_piece_dl,
    d.dds_dl,
    d.totalall_dl,
    d.id_df,
    df.in_contragent_df, ictr.code_contragent AS code_dostavchik, ictr.name_n_contragent AS name_dostavchik,
    df.out_contragent_df, octr.code_contragent AS code_client, octr.name_n_contragent AS name_client,
    df.total_df,
    df.dds_df,
    df.user_df, person1.code_ls_n_person AS code_operator, person1.name_ls_n_person AS name_operator,
    df.distributor_df, person2.code_ls_n_person AS code_distributor, person2.name_ls_n_person AS name_distributor,
    df.delivere_df, person3.code_ls_n_person AS code_speditor, person3.name_ls_n_person AS name_speditor,
    d.price_list_dl
    FROM sl_document_lines d 
    JOIN sl_document_facade df ON df.id_df = d.id_df
    JOIN n_product_consigment pc ON pc.id_pc = d.id_pc
    JOIN n_product_main pm ON pm.id_pm = pc.id_pm
    JOIN n_storage s ON s.id_n_storage = d.id_n_storage
    LEFT JOIN ls_n_person person1 ON person1.id_ls_n_person = df.user_df
    LEFT JOIN ls_n_person person2 ON person2.id_ls_n_person = df.distributor_df
    LEFT JOIN ls_n_person person3 ON person3.id_ls_n_person = df.delivere_df
    LEFT JOIN n_contragent octr ON octr.id_contragent = df.out_contragent_df
    LEFT JOIN n_contragent ictr ON ictr.id_contragent = df.in_contragent_df
);