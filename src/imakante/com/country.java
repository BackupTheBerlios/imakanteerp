
package imakante.com;

import java.sql.Connection;

public class country extends imakante.com.dbObject implements ConnInerface{
    
    public static ConnInerface createcountry(Connection connection, int id_t) {
		return new country(connection, id_t);
	}

	public static country createcountry(Connection connection) {
		return new country(connection);
	}

	private country(java.sql.Connection connection) {
        super(connection);
        setConn(connection);
        
    }
    
    private country(java.sql.Connection connection, int id_t){
        super(connection);
        setConn(connection);
        setId(id_t);
        getInstance();
        
    }
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int id;
    private String code;
    private String name;
    
    public void getInstance(){
        try{
            setCstm(getConn().prepareCall("{call ls_procedure_select_row_nm(?)}"));
            getCstm().setInt("row_index", getId());
            setRs(getCstm().executeQuery());
            while(getRs().next()){
                setCode(getRs().getString("code"));
                setName(getRs().getString("name"));
            }
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
    
    public void setAll(String code, String name){
        setCode(code);
        setName(name);
    }
    
    public void updateRecord(){
        try{
            setCstm(getConn().prepareCall("{call ls_procedure_update_row_country(?,?,?)}"));
            getCstm().setString("in_code", getCode());
            getCstm().setString("in_name", getCode());
            getCstm().setInt("in_id", getId());
            getCstm().execute();
        }catch(java.sql.SQLException sqle){}
        
    }
    public void updateRecord(int in_id,String code, String name){
        setId(in_id);
        setCode(code);
        setName(name);
        try{
            setCstm(getConn().prepareCall("{call ls_procedure_update_row_country(?,?,?)}"));
            getCstm().setString("in_code", getCode());
            getCstm().setString("in_name", getCode());
            getCstm().setInt("in_id", getId());
            getCstm().execute();
        }catch(java.sql.SQLException sqle){}
        
    }
    public void deleteRecord(int in_id){     // bad
     setId(in_id);
     try{
            setCstm(getConn().prepareCall("{call ls_procedure_delete_row_country(?)}"));
            getCstm().setInt("in_id", getId());
            getCstm().execute();
        }catch(java.sql.SQLException sqle){}
     }
    
    public void deleteRecord(){    //good 
         try{
            setCstm(getConn().prepareCall("{call ls_procedure_delete_row_country(?)}"));
            getCstm().setInt("in_id", getId());
            getCstm().execute();
        }catch(java.sql.SQLException sqle){}
     }
}
