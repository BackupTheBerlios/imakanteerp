
package imakante.com;

public abstract class dbObject extends imakante.com.imakanteObject implements dbInterface {
    
    public dbObject(java.sql.Connection connection) {
        setConn(connection);
    }
    
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id = 0;
    private int id_groupe = 0;
    private int code = 0;
    private String code_string = "";
    private String name = "";
    private String baccount = "";
    private String address = "";
    private String comment = "";
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public void close() {
        try{
            rs.close();
            rs = null;
        } catch (java.sql.SQLException sqle) {  }
        try{
            cstm.close();
            cstm = null;
        } catch (java.sql.SQLException sqle) {  }
    }
    
    public void deleteRow(int in_id) {
        setComprator(3);
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public String getComment() {
        return comment;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    
    public java.sql.CallableStatement getCstm() {
        return cstm;
    }
    
    public int getIDGr() {
        return id_groupe;
    }
    
    public int getId() {
        return id;
    }
    
    public int getMaxCod() {
        setComprator(8);
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while (rs.next()) {
                return_int = rs.getInt(1);
            }
        }  catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public int getMaxId() {
        setComprator(7);
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while (rs.next()) {
                return_int = rs.getInt(1);
            }
        }  catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return return_int;
    }
    
    public String getBankAccountNumber() {
        return baccount;
    }
    
    public String getAddress() {
        return address;
    }
    
    public String getName() {
        return name;
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public java.sql.Statement getStm() {
        return stmt;
    }
   
    public java.sql.ResultSet getTable() {
        this.setComprator(0);
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
        return getRs();
    }
    
 
    
    public void insertRow(int in_code, int in_id_groupe) {
        setComprator(1);
        setCode(in_code);
        this.name = "";
        this.id_groupe = in_id_groupe;
        this.comment = "";
        try {
            registerParameters();
            getCstm().execute();
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    //-------SART MyFunction
    protected abstract void prepareCstm();
    
    protected void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch (java.sql.SQLException sqle) { sqle.printStackTrace(); }
    }
    
    public void setComment(String Comment){
        this.comment = Comment;
    }
    
    public void setComprator(int com) {
        this.comprator = com;
    }
    
    public void setCstm(java.sql.CallableStatement cstm) {
        this.cstm = cstm;
    }
    
    public void setIDGr(int COD) {
        this.id_groupe = COD;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public void setBankAccountNumber(String BAccount) {
        this.baccount = BAccount;
    }
    
    public void setAddress(String Address) {
        this.address = Address;
    }
    
    public void setName(String Name) {
        this.name = Name;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stmt = stm;
    }
    
  
    
    protected abstract void registerParameters();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setCode(String in_code) {
        this.code_string = in_code;
    }
    
    public String getCodeString(){
    return code_string;
    }
}
