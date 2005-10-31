
package nom;

import imakante.com.dbObject;

public class taxDOD extends dbObject {

    public taxDOD(java.sql.Connection conn,int in_period) {
        super(conn);
        setPeriod(in_period);
        prepareCstm();
    }
 
    private java.sql.Connection conn;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int period;
   
    
    public void registerParameters(){
        try{
            
           
            cstm.setInt("period", period);
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void prepareCstm() {
        try {
            
            cstm = conn.prepareCall("{call ls_procedure_taxOOD(?)}");
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public int getPeriod() {
        return period;
    }
    
    public void setPeriod(int period) {
        this.period = period;
    }
    
    
}
