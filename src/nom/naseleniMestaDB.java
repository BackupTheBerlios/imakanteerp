
package nom;

public class naseleniMestaDB  extends imakante.com.dbObject {
    //-------------START MyVariables
    private String splitNamesOfOblast[];
    private int indexConnOfId[] = null;
    private int postcode = 0;
    private byte id_oblast = 0;
    private java.sql.Connection conn;
    //-------------END MyVariables
    
    public naseleniMestaDB(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    //-------SART MyFunction
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_naselenimesta(?,?,?,?,?)}"));
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
            getCstm().setInt("in_postcode", getPostCode());
            getCstm().setString("in_name", getName());
            getCstm().setInt("in_id_oblast", getIDOblast());
            getCstm().setInt("comprator", getComprator());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(String in_name, int in_postcode, byte in_id_oblast) {
        setComprator(1);
        this.setPostCode(in_postcode);
        this.setName(in_name);
        this.setIDOblast(in_id_oblast);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, String in_name, int in_postcode, byte in_id_oblast) {
        setComprator(2);
        this.setId(in_id);
        this.setPostCode(in_postcode);
        this.setName(in_name);
        this.setIDOblast(in_id_oblast);
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
//                setName(getRs().getString("name_n_nm"));
//                setPostCode(getRs().getInt("postcode_n_nm"));
//                setIDOblast(getRs().getByte("id_n_oblast"));
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//    
    public java.sql.ResultSet searchRecords(int in_postcode,String in_name) {
        setComprator(5);
        this.setPostCode(in_postcode);
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public int getMaxId() {
        setComprator(7);
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
    
    public void setIDOblast(byte COD) {
        this.id_oblast = COD;
    }
    
    public byte getIDOblast() {
        return id_oblast;
    }
    
    public void setPostCode(int anid) {
        this.postcode = anid;
    }
    
    public int getPostCode() {
        return postcode;
    }
    
    public String[] getOblastName() {
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
                key_Anlevel.put(new Integer(getRs().getInt("id_n_oblast")), new String(getRs().getString("name_n_oblast")));
                in.add(new Integer(getRs().getInt("id_n_oblast")));
                i++;
            }
        } catch(Exception e) { e.printStackTrace(); }
        setRs(oldRs);
        setId(oldId);
        indexConnOfId = new int[i];
        it = in.iterator();
        splitNamesOfOblast = new String[i];
        i = 0;
        while(it.hasNext()) {
            indexConnOfId[i] = (Integer) it.next();
            splitNamesOfOblast[i] = (String) key_Anlevel.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesOfOblast;
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
