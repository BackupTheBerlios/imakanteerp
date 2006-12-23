
package nom;

public class dbcodmit extends imakante.com.dbObject {
    
    private java.sql.Connection conn;
    
    public dbcodmit(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
    }
    
    @Override
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_mitprod(?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public java.sql.ResultSet getTable() {
        this.setComprator(0);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public void insertRow(String in_code, String in_name) {
        setComprator(1);
        this.setCode(in_code);
        this.setName(in_name);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, String in_code, String in_name) {
        setComprator(2);
        setId(in_id);
        setCode(in_code);
        setName(in_name);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }

    public java.sql.ResultSet searchRecords(String in_code, String in_name) {
        setComprator(5);
        setCode(in_code);
        setName(in_name);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
    public int getMaxCode() {
        int i = 0;
//        setComprator(6);
//        try {
//            registerParameters();
//            setRs(getCstm().executeQuery());
//            while(getRs().next()) {
//                i = getRs().getInt("code");
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return i;
    }
    
    @Override
    public int getMaxId() {
        int i = 0;
        setComprator(7);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                i = getRs().getInt("id");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return i;
    }
    
    
    public void deleteALL() {
        setComprator(8);
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public void registerParameters() {
        try {
            getCstm().setInt("in_id", getId());
            getCstm().setInt("comprator", getComprator());
            getCstm().setString("in_code", getCodeString());
            getCstm().setString("in_name", getName());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public void prepareRezult(){
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    @Override
    public java.sql.Connection getConn() {
        return conn;
    }
    
    @Override
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public java.sql.ResultSet getRs(String in_code, String in_name) {
        setCode(in_code);
        setName(in_name);
        prepareRezult();
        return getRs();
    }
    
}
