
package nom;

import imakante.com.dbObject;

public class taxDOD extends dbObject {
    
    public taxDOD(java.sql.Connection conn, int in_year) {
        super(conn);
        
        prepareCstm();
        setPeriod(in_year);
    }
    
    private java.sql.Connection conn;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int period = 0;
    private int comprator = 0;
    private int in_id = 0;
    private String in_date = "0000-00-00";
    private double in_doh = 0;
    private double in_sum = 0;
    private double in_prct=0;
    
    private double[] taxDOD_doh = new double[10];
    private double[] taxDOD_sum = new double[10];
    private double[] taxDOD_prct = new double[10];
    
    public java.sql.ResultSet getTable(){
        in_id = 0;
        comprator = 0;
        
        try{
            registerParameters();
            rs=cstm.executeQuery();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        return rs;
    }
    
    public void updateRow(int id, String in_code, String in_name,
            String datep, double doh, double sum, double prct ){
        comprator = 2;
        in_id = id;
        in_date = datep;
        in_doh = doh;
        in_sum = sum;
        in_prct = prct;
        
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
    }
    
    public void deleteRow(int id){
        comprator = 3;
        in_id = in_id;
        
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public void getRow(int in_id){
        comprator = 4;
        in_id = in_id;
        try{
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()){
                in_date = rs.getString("date");
                in_doh = rs.getDouble("doh");
                in_sum = rs.getDouble("sum");
                in_prct=rs.getDouble("prct");
              
            }
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public void registerParameters(){
        try{
            
            cstm.setInt("comprator", getComprator());
            cstm.setInt("in_year", getPeriod());
            cstm.setInt("in_id", getIn_id());
            cstm.setString("in_date", getIn_date());
            cstm.setDouble("in_doh", getIn_doh());
            cstm.setDouble("in_sum", getIn_sum());
            cstm.setDouble("in_prct", getIn_prct());
            
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    public void prepareRezult(){
        try{
            registerParameters();
            setRs(cstm.executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public void prepareCstm() {
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
    
    public int getComprator() {
        return comprator;
    }
    
    public void setComprator(int comprator) {
        this.comprator = comprator;
    }
    
    public int getIn_id() {
        return in_id;
    }
    
    public void setIn_id(int in_id) {
        this.in_id = in_id;
    }
    
    public String getIn_date() {
        return in_date;
    }
    
    public void setIn_date(String in_date) {
        this.in_date = in_date;
    }
    
    public double getIn_doh() {
        return in_doh;
    }
    
    public void setIn_doh(double in_doh) {
        this.in_doh = in_doh;
    }
    
    public double getIn_sum() {
        return in_sum;
    }
    
    public void setIn_sum(double in_sum) {
        this.in_sum = in_sum;
    }
    
    public double getIn_prct() {
        return in_prct;
    }
    
    public void setIn_prct(double in_prct) {
        this.in_prct = in_prct;
    }
    
    
}
