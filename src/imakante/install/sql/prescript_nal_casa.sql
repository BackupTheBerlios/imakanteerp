@prihod := (SELECT rep_casa_nal.suma FROM rep_casa_nal WHERE code_n_casa = casa AND rep_casa_nal.in_type_sl_mop = 1
 ) AS PRIHOD,