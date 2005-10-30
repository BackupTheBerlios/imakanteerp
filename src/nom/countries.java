package nom;

public class countries extends imakante.com.dbObject {
    
    public countries(java.sql.Connection conn, String in_code, String in_name) {
        super(conn);
        setCode(in_code);
        setName(in_name);
        prepareCstm();
        prepareRezult();
    }
    
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private String code = "";
    private String name = "";
    
    public void registerParameters(){
            try{
            getCstm().setString("in_code", getCode());
            getCstm().setString("in_name", getName());
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void prepareCstm() {
        try {
            
            setCstm(getConn().prepareCall("{call ls_procedure_search_country(?,?)}"));
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    private void prepareRezult(){
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() {
        return stm;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stm = stm;
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
    
    public java.sql.ResultSet getRs(String in_code, String in_name) {
        setCode(in_code);
        setName(in_name);
        prepareRezult();        
        return getRs();
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
