
package nom;

public class incomDB  extends imakante.com.dbObject {
    //-------------START MyVariables
    private String splitNamesG[];
    private int indexConnOfId[] = null;
    private java.sql.Connection conn;
    //-------------END MyVariables
    
    public incomDB(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    //-------SART MyFunction
    @Override
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_incom(?,?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public java.sql.ResultSet getTable() {
        this.setComprator(0);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    @Override
    public void registerParameters() {
        try {
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_id", getId());
            getCstm().setInt("in_id_groupe", getIDGr());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_comments", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public void insertRow(int in_code, int in_id_groupe) {
        setComprator(1);
        this.setCode(in_code);
        this.setName("");
        this.setIDGr(in_id_groupe);
        this.setComment("");
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); } 
    }
    
    public void updateRow(int in_id,  int in_id_groupe, int in_code, String in_name, String in_comment) {
        setComprator(2);
        this.setId(in_id);
        this.setIDGr(in_id_groupe);
        this.setCode(in_code);
        this.setName(in_name);
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
//                setIDGr(getRs().getInt("id_groupe"));
//                setName(getRs().getString("name"));
//                setCode(getRs().getInt("code"));
//                setComment(getRs().getString("comments"));
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//    
    public java.sql.ResultSet searchRecords( int in_code, String in_name) {
        setComprator(5);
        this.setCode(in_code);
        this.setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    @Override
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
    
    @Override
    public int getMaxCod() {
        setComprator(8);
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
    
    public int getMaxGrID() {
        setComprator(9);
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
    
    public String[] getCasaG() {
        setComprator(6);
        String return_str = new String("");
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
                Gropes.put(new Integer(getRs().getInt("id_n_group")),new String(getRs().getString("name_n_group")));
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
            splitNamesG[i] = (String) Gropes.get(indexConnOfId[i]);
            i++;
        }
        return splitNamesG;
    }
    
    public int[] getIndexConnOfId() {
        return indexConnOfId;
    }
    
    @Override
    public java.sql.Connection getConn() {
        return conn;
    }
    
    @Override
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}// end class
