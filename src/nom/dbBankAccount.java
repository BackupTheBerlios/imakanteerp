
package nom;

public class dbBankAccount extends imakante.com.dbObject {
    
    private java.sql.Connection conn;
    private int id_valuta = 0;
    private int id_type = 0;
    private String branch, bic;
    private String splitNamesG[];
    private String splitNamesM[];
    private String splitTypes[];
    private int indexConnOfId[] = null;
    private int indexMoney[] = null;
    private int indexOfTypes[] = null;
    
    public dbBankAccount(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_baccount(?,?,?,?,?,?,?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_group", getIDGr());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_branch", getBranch());
            getCstm().setString("in_account", getBankAccountNumber());
            getCstm().setString("in_bic", getBIC());
            getCstm().setInt("in_id_money", getIdValuta());
            getCstm().setString("in_address", getAddress());
            getCstm().setInt("in_id_tacc", getTypeBankAccount());
            getCstm().setString("in_comment", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void setBranch(String Branch) {
        this.branch = Branch;
    }
    
    public String getBranch() {
        return branch;
    }
    
    public String getBIC() {
        return bic;
    }

    public void setBIC(String bic) {
        this.bic = bic;
    }

    public int getIdValuta() {
        return id_valuta;
    }

    public void setIdValuta(int id_valuta) {
        this.id_valuta = id_valuta;
    }
    
    private int getTypeBankAccount() {
        return id_type;
    }
    
    private void setTypeBankAccount(int TypeBAccount) {
        this.id_type = TypeBAccount;
    }
    
    public void insertRow(int in_code, int in_id_group, int in_id_money, int in_id_tacc) {
        setComprator(1);
        this.setCode(in_code);
        this.setIDGr(in_id_group);
        this.setName("");
        this.setBranch("");
        this.setBankAccountNumber("");
        this.setBIC("");
        this.setIdValuta(in_id_money);
        this.setAddress("");
        this.setTypeBankAccount(in_id_tacc);
        this.setComment("");
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_id_group, int in_code, String in_name, String in_branch, String in_account, 
            String in_bic, int in_id_money, String in_address, int in_id_tacc, String in_comment) {
        setComprator(2);
        this.setId(in_id);
        this.setIDGr(in_id_group);
        this.setCode(in_code);
        this.setName(in_name);
        this.setBranch(in_branch);
        this.setBankAccountNumber(in_account);
        this.setBIC(in_bic);
        this.setIdValuta(in_id_money);
        this.setAddress(in_address);
        this.setTypeBankAccount(in_id_tacc);
        this.setComment(in_comment);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
//
//    public java.sql.ResultSet getRow(int in_id) {
//        setComprator(4);
//        setId(in_id);
//        try {
//            registerParameters();
//            setRs(getCstm().executeQuery());
//            while(getRs().next()) {
//                setIDGr(getRs().getInt("id_group"));
//                setCode(getRs().getInt("code"));
//                setName(getRs().getString("name"));
//                setBankAccountNumber(getRs().getString("baccount"));
//                setBIC(getRs().getString("bic"));
//                setVidval(getRs().getString("vidval"));
//                setAddress(getRs().getString("address"));
//                id_type = getRs().getInt("id_type");
//                setComment(getRs().getString("comments"));
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//
    public java.sql.ResultSet searchRecords(int in_code, String in_name) {
        setComprator(5);
        this.setCode(in_code);
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getTypeBankAccounts() {
        setComprator(6);
        int originalId = getId();
        java.sql.ResultSet originalRS = getRs();
        java.util.ArrayList list = new java.util.ArrayList();
        java.util.Iterator iterator = null;
        java.util.HashMap Types = new java.util.HashMap();
        int j = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Types.put(new Integer(getRs().getInt("id_tbacc")), new String(getRs().getString("name_tbacc")));
                list.add(new Integer(getRs().getInt("id_tbacc")));
                j++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(originalRS);
        setId(originalId);
        indexOfTypes = new int[j];
        iterator = list.iterator();
        splitTypes = new String[j];
        j = 0;
        while(iterator.hasNext()) {
            indexOfTypes[j] = (Integer) iterator.next();
            splitTypes[j] = (String) Types.get(indexOfTypes[j]);
            j++;
        }
        return splitTypes;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    public String[] getCurrencies() {
        setComprator(12);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Gropes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Gropes.put(new Integer(getRs().getInt("id_n_money")),new String(getRs().getString("cod_lat_n_money")));
                in.add(new Integer(getRs().getInt("id_n_money")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexMoney = new int[i];
        it = in.iterator();
        splitNamesM = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexMoney[i] = (Integer) it.next();
            splitNamesM[i] = (String) Gropes.get(indexMoney[i]);
            i++;
        }
        return splitNamesM;
    }
    
    public int[] getCurrencyIndexes() {
        return indexMoney;
    }
    
    
    public String[] getBankAccountGroup() {
        setComprator(10);
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Groups = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                Groups.put(new Integer(getRs().getInt("id_n_group")), new String(getRs().getString("name_n_group")));
                in.add(new Integer(getRs().getInt("id_n_group")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesG = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] = (Integer) it.next();
            splitNamesG[i] = (String) Groups.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public int[] getIndexOfTypes() {
        return indexOfTypes;
    }
    
    public int getMaxGrID() {
        setComprator(11);
        int return_int = -1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                return_int = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
}
