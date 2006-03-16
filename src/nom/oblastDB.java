
package nom;

public class oblastDB  extends imakante.com.dbObject {
    //-------------START MyVariables
    private String splitNamesOfCountry[];
    private int indexConnOfId[] = null;
    private byte id_country=0;
    private java.sql.Connection conn;
    private String country;
    //-------------END MyVariables
    
    public oblastDB(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    //-------SART MyFunction
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_oblast(?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getTable() {
        this.setComprator(0);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("in_id", getId());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_country", getNameCountry());
            getCstm().setInt("in_id_country", getIDCountry());
            getCstm().setInt("comprator", getComprator());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_id, String in_name, byte in_id_country) {
        setComprator(1);
        this.setId(in_id);
        this.setName(in_name);
        this.setIDCountry(in_id_country);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, String in_name, byte in_id_country) {
        setComprator(2);
        this.setId(in_id);
        this.setName(in_name);
        this.setIDCountry(in_id_country);
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
//                setName(getRs().getString("name"));
//                setIDCountry(getRs().getByte("id_country"));
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//    
    public java.sql.ResultSet searchRecords(String oblast, String country) {
        setComprator(5);
        this.setName(oblast);
        this.setNameCountry(country);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public int getMaxId() {
        setComprator(7);
        int return_int=-1;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                return_int = getRs().getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public void setIDCountry(byte COD) {
        this.id_country = COD;
    }
    
    public byte getIDCountry() {
        return id_country;
    }
    
    public void setNameCountry(String Name) {
        this.country = Name;
    }
    
    public String getNameCountry() {
        return country;
    }
    
    public String[] getCountryName() {
        setComprator(6);
        String return_str = new String("");
        int oldId = getId();
        java.sql.ResultSet oldRs = getRs();
        String strIndexConnOfId = new String("");
        java.util.ArrayList in = new java.util.ArrayList();
        java.util.Iterator it = null;
        java.util.HashMap key_Anlevel = new java.util.HashMap();
        int i = 0;
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                key_Anlevel.put(new Integer(getRs().getInt("id_n_country")), new String(getRs().getString("name_n_country")));
                in.add(new Integer(getRs().getInt("id_n_country")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesOfCountry = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] = (Integer) it.next();
            splitNamesOfCountry[i] = (String) key_Anlevel.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesOfCountry;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}// end class
