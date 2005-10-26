CREATE PROCEDURE `ls_procedure_select_country`();
BEGIN
  SELECT n.id, n.code, n.name FROM n_country n;
END;

