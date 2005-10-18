
package imakante.com;

public class country extends imakante.com.dbObject{
    
    public country(java.sql.Connection connection) {
        super(connection);
        setConn(connection);
        
    }
    public country(java.sql.Connection connection, int id_t){
        super(connection);
        setConn(connection);
        setId(id_t);
        
    }
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int id;
    
    public void getInstance(){
        try{
        setCstm(getConn().prepareCall("{call ls_procedure_select_row_nm(?)}")); 
        getCstm().setInt("row_index", getId());
        setRs(getCstm().executeQuery());
        }catch(java.sql.SQLException sqle){}
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
