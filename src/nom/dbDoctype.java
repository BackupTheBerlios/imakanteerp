
package nom;

public class dbDoctype extends imakante.com.dbObject {
    
    private int indexConnOfId[] = null;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
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
    
    private void registerParameters() {
        try {
            getCstm().setInt("in_id", getId());
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_code", getCode());
            getCstm().setString("in_name", getName());
            getCstm().setString("in_print_name", getPrintName());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getTable() {
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return rs;
    }
    
    private void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void insertRow(int in_code) {
        comprator = 1;
        this.code = in_code;
        this.name = "";
        this.printName = "";
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void updateRow(int in_id, int in_code, String in_name, String in_print_name) {
        comprator = 2;
        this.id = in_id;
        this.code = in_code;
        this.name = in_name;
        this.printName = in_print_name;
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
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public java.sql.ResultSet getRow(int in_id) {
        comprator = 4;
        id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                code = rs.getInt("code");
                name = rs.getString("name");
                printName = rs.getString("printName");
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
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() {
        return stmt;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stmt = stm;
    }
    
    public java.sql.CallableStatement getCstm() {
        return cstm;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) {
        this.cstm = cstm;
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    public void setComprator(int Comprator) {
        this.comprator = Comprator;
    }
    
    public int getId() {
        return id;
    }
    
    public int getMaxId() {
        comprator = 7;
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
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public int getCode() {
        return code;
    }
    
    public int getMaxCod() {
        comprator = 8;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public void setCode(int Code) {
        this.code = Code;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String Name) {
        this.name = Name;
    }
    
    public String getPrintName() {
        return printName;
    }
    
    public void setPrintName(String PrintName) {
        this.printName = PrintName;
    }
    
    public void close() {
        try{
            rs.close();
            rs = null;
        } catch(java.sql.SQLException sqle) {  }
        try{
            cstm.close();
            cstm = null;
        } catch(java.sql.SQLException sqle) {  }
        
    }
}
