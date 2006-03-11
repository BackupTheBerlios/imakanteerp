
package nom;

public class dbDoctype extends imakante.com.dbObject {
    
    private int id = 0;
    private int code = 0;
    private String name;
    private String printName;
    private java.sql.Connection conn;
    
    public dbDoctype(java.sql.Connection conn) {
        super(conn);
        prepareCStm();
    }
    
    private void prepareCStm() {
        try {
            setCstm(getConn().prepareCall("{call nom_procedure_doctype(?,?,?,?,?)}"));
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void registerParameters() {
        try {
            getCstm().setInt("in_id", getId());
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_print_name", getPrintName());
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
    
    public void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_code) {
        setComprator(1);
        this.setCode(in_code);
        this.setName("");
        this.printName = "";
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_code, String in_name, String in_print_name) {
        setComprator(2);
        this.setId(in_id);
        this.setCode(in_code);
        this.setName(in_name);
        this.printName = in_print_name;
        try {
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void deleteRow(int in_id) {
        setComprator(3);
        setId(in_id);
        try{
            registerParameters();
            getCstm().execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        setComprator(4);
        setId(in_id);
        try {
            registerParameters();
            setRs(getCstm().executeQuery());
            while(getRs().next()) {
                code = getRs().getInt("code");
                name = getRs().getString("name");
                printName = getRs().getString("printName");
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
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
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
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
    
    public int getMaxCode() {
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
    
    public String getPrintName() {
        return printName;
    }
    
    public void setPrintName(String PrintName) {
        this.printName = PrintName;
    }
    
    protected void prepareCstm() {
    }
}
