
package nom;

public class moneyDB  extends imakante.com.dbObject {
    // ------------START Money Variables
    private String cod_lat = "";  //kod na latinitsa (mejdunaroden kod -> Code International -> CodeInt
    private java.sql.Connection conn; // connection
    //-------------END Money  Variables
    
    public moneyDB(java.sql.Connection conn) {
        super(conn);
        this.setConn(conn);
        prepareCstm();
    }
    
    //-------SART Methods
    public void prepareCstm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_money(?,?,?,?,?,?)}"));
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
            getCstm().setInt("comprator", getComprator());
            getCstm().setString("in_code", getCode());
            getCstm().setString("in_cod_lat", getCodeInt());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_comments", getComment());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow( String in_cod, String in_cod_lat, String in_name, String in_comment) {
        setComprator(1);
        this.setCode(in_cod);
        this.setCodeInt(in_cod_lat);
        this.setName(in_name);
        this.setComment(in_comment);
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, String in_cod, String in_cod_lat, String in_name, String in_comment) {
        setComprator(2);
        this.setId(in_id);
        this.setCode(in_cod);
        this.setCodeInt(in_cod_lat);
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
//        this.setId(in_id);
//        try {
//            registerParameters();
//            setRs(getCstm().executeQuery());
//            while(getRs().next()) {
//                setCode(getRs().getString("cod"));
//                setCodeInt(getRs().getString("cod_lat"));
//                setName(getRs().getString("name"));
//                setComment(getRs().getString("comment"));
//            }
//        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
//        return getRs();
//    }
//    
    public java.sql.ResultSet searchRecords(String in_cod, String in_cod_lat, String in_name) {
        setComprator(5);
        this.setCode(in_cod);
        this.setCodeInt(in_cod_lat);
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

    public String getCodeInt() {
        return cod_lat;
    }

    public void setCodeInt(String cod_lat) {
        this.cod_lat = cod_lat;
    }

    public java.sql.Connection getConn() {
        return conn;
    }

    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
}// end class
