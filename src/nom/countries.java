package nom;

public class countries extends imakante.com.dbObject {

    public countries(java.sql.Connection conn) {
        super(conn);
        
    }
    
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    
    public java.sql.ResultSet getResult() {
        try {
            setCstm(getConn().prepareCall("{call ls_pocedure_get_table_countries()}"));
            setRs(getCstm().executeQuery());
            return getRs();
        } catch(java.sql.SQLException sqle) {return null;}
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

    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
}
