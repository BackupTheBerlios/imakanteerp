
package nom;

import imakante.com.dbObject;

public class branch extends dbObject{

    public branch(java.sql.Connection conn) {
        super(conn);
    }
    java.sql.Connection conn;
    java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
  
    
    public void closeTaxOOD(){
        try{getRs().close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        try{cstm.close();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }

    public java.sql.ResultSet getRs() {
        return rs;
    }

    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
  
}
