
package nom;

import imakante.com.dbObject;

public class taxDOD extends dbObject {

    public taxDOD(java.sql.Connection conn, int in_year) {
        super(conn);
        setPeriod(in_year);
        prepareCstm();
    }
 
    private java.sql.Connection conn;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int period;
    private int mod; 
            
    private double[] taxDOD_doh = new double[10];
    private double[] taxDOD_sum = new double[10];
    private double[] taxDOD_prct = new double[10];
   
    
    public void registerParameters(){
        try{
            cstm.setInt("mod", getMod());
            cstm.setInt("period", getPeriod());
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    private void prepareCstm() {
        try {
            
            cstm = conn.prepareCall("{call ls_procedure_taxDOD(?,?)}");
            
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

    public int getMod() {
        return mod;
    }

    public void setMod(int mod) {
        this.mod = mod;
    }

    public double[] getTaxDOD_doh() {
        return taxDOD_doh;
    }

    public void setTaxDOD_doh(double[] taxDOD_doh) {
        this.taxDOD_doh = taxDOD_doh;
    }

    public double[] getTaxDOD_sum() {
        return taxDOD_sum;
    }

    public void setTaxDOD_sum(double[] taxDOD_sum) {
        this.taxDOD_sum = taxDOD_sum;
    }

    public double[] getTaxDOD_prct() {
        return taxDOD_prct;
    }

    public void setTaxDOD_prct(double[] taxDOD_prct) {
        this.taxDOD_prct = taxDOD_prct;
    }
    
    
}
