CREATE VIEW rep_documents AS (
SELECT
    d.id_dl,
    d.id_pc, pc.parcel_pc,
    pc.id_pm, pm.code_pm AS code_product, pm.name_pm AS name_product,
    pm.id_pd, pm.barcod_pm,
    d.id_n_storage, s.code_n_storage AS code_store, s.name_n_storage AS name_store,
    d.singly_price_dl,
    d.climb_down_dl,
    d.numbers_piece_dl,
    (d.numbers_piece_dl DIV n_product_description.v3_pd) AS miarka3,
    ((d.numbers_piece_dl - ((d.numbers_piece_dl DIV n_product_description.v3_pd)*n_product_description.v3_pd)) DIV n_product_description.v2_pd) AS miarka2,
(d.numbers_piece_dl - (d.numbers_piece_dl DIV n_product_description.v3_pd)*n_product_description.v3_pd - ((d.numbers_piece_dl - ((d.numbers_piece_dl DIV n_product_description.v3_pd)*n_product_description.v3_pd)) DIV n_product_description.v2_pd)*n_product_description.v2_pd ) AS OSTATAK,
    d.dds_dl,
    d.totalall_dl,
    d.id_df,
    df.number_df,
    IFNULL(df.type_df,0) AS type_df,
    IFNULL(df.in_contragent_df,0) AS in_contragent_df,
    IFNULL(ictr.code_contragent,0) AS code_dostavchik,
    IFNULL(ictr.name_n_contragent,0) AS name_dostavchik,
    IFNULL(df.out_contragent_df,0) AS out_contragent_df,
    IFNULL(octr.code_contragent,0) AS code_client,
    IFNULL(octr.name_n_contragent,'') AS name_client,
    IFNULL(df.total_df,0) AS total_df,
    df.dds_df,
    IFNULL(df.date_edition_df,'0000-00-00') AS date_edition_df,
    IFNULL(df.date_deliver_df,'0000-00-00') AS date_deliver_df,
    IFNULL(df.date_pay_df,'0000-00-00') AS date_pay_df,
    IFNULL(df.user_df,0) AS user_df,
    IFNULL(person1.code_ls_n_person,0) AS code_operator,
    IFNULL(person1.name_ls_n_person,'') AS name_operator,
    IFNULL(df.distributor_df,0) AS distributor_df,
    IFNULL(person2.code_ls_n_person,0) AS code_distributor,
    IFNULL(person2.name_ls_n_person,'') AS name_distributor,
    IFNULL(df.delivere_df,0) AS delivere_df,
    IFNULL(person3.code_ls_n_person,0) AS code_speditor,
    IFNULL(person3.name_ls_n_person,0) AS name_speditor,
    IFNULL(d.price_list_dl,0),
    df.level_df
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
    JOIN n_product_description ON n_product_description.id_pd = pm.id_pd
);