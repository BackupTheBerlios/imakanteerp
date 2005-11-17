
package imakante.salary;

public class ktu  extends imakante.com.dbObject {
    
    public ktu(java.sql.Connection conn, int in_period, int id_rab) {
        super(conn);
        setPeriod(in_period);
        setId_rabotnik(id_rab);
        prepareCstm();
    }
    
    private java.sql.Connection conn;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int period;
    private int id_rabotnik;
    
    public void registerParameters(){
        try{
            
            cstm.setInt("in_id_rab", id_rabotnik);
            cstm.setInt("period", period);
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void prepareCstm() {
        try {
            
            cstm = conn.prepareCall("{call ls_procedure_ktu(?,?)}");
            
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
    
    public int getId_rabotnik() {
        return id_rabotnik;
    }
    
    public void setId_rabotnik(int id_rabotnik) {
        this.id_rabotnik = id_rabotnik;
    }
    
}
