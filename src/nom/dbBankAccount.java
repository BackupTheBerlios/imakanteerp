
package nom;

public class dbBankAccount extends imakante.com.dbObject {
    
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id = 0;
    private int id_group = 0;
    private int code = 0;
    private String name, baccount, address, comment;
    private int id_type = 0;
    private String splitNamesG[];
    private String splitTypes[];
    private int indexConnOfId[] = null;
    private int indexOfTypes[] = null;
    
    public dbBankAccount(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    protected void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("call nom_pocedure_baccount(?,?,?,?,?,?,?,?,?)"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    protected void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_group", getIDGr());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_account", getBankAccountNumber());
            getCstm().setString("in_address", getAddress());
            getCstm().setInt("in_id_tacc", getTypeBankAccount());
            getCstm().setString("in_comments", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    private int getTypeBankAccount() {
        return id_type;
    }
    
    private void setTypeBankAccount(int TypeBAccount) {
        this.id_type = TypeBAccount;
    }
    
    public void insertRow(int in_code, int in_id_group) {
        comprator = 1;
        this.code = in_code;
        this.id_group = in_id_group;
        this.name = "";
        
        this.comment = "";
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_id_group, int in_code, String in_name,
            String in_account, String in_address, int in_id_tacc, String in_comment) {
        comprator = 2;
        this.id = in_id;
        this.id_group = in_id_group;
        this.code = in_code;
        this.name = in_name;
        this.baccount = in_account;
        this.address = in_address;
        this.id_type = in_id_tacc;
        this.comment = in_comment;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void deleteRow(int in_id) {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){ sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        comprator = 4;
        id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                id_group = rs.getInt("id_group");
                code = rs.getInt("code");
                name = rs.getString("name");
                baccount = rs.getString("baccount");
                address = rs.getString("address");
                id_type = rs.getInt("id_type");
                comment = rs.getString("comments");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return rs;
    }
    
    public java.sql.ResultSet searchRecords(int in_code, String in_name) {
        comprator = 5;
        this.code = in_code;
        this.name = in_name;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public String[] getTypeBankAccounts() {
        comprator = 6;
        String resultStr = new String("");
        int originalId = id, i = 0;
        java.sql.ResultSet originalRS = rs;
        java.util.ArrayList list = new java.util.ArrayList();
        java.util.Iterator iterator = null;
        java.util.HashMap Types = new java.util.HashMap();
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                Types.put(new Integer(rs.getInt("id_tbacc")), new String(rs.getString("name_tbacc")));
                list.add(new Integer(rs.getInt("id_tbacc")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        rs = originalRS;
        id = originalId;
        indexOfTypes = new int[i];
        iterator = list.iterator();
        splitTypes = new String[i];
        i=0;
        while(iterator.hasNext()) {
            indexOfTypes[i] =(Integer) iterator.next();
            splitTypes[i] = (String) Types.get(indexOfTypes[i]);
            i++;
        }
        return splitTypes;
    }
    
    public String[] getBankAccountGroup() {
        comprator = 10;
        String return_str = new String("");
        int oldId = id;
        java.sql.ResultSet oldRs = rs;
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap Groupes = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                Groupes.put(new Integer(rs.getInt("id_n_group")), new String(rs.getString("name_n_group")));
                in.add(new Integer(rs.getInt("id_n_group")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        rs = oldRs;
        id = oldId;
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesG = new String[i];
        i=0;
        while(it.hasNext()) {
            indexConnOfId[i] =(Integer) it.next();
            splitNamesG[i] = (String) Groupes.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public int getMaxGrID() {
        comprator = 11;
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public int[] getIndexOfTypes() {
        return indexOfTypes;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
}
