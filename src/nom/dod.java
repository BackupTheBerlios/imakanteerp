
package nom;

import imakante.com.*;

public class dod extends dbObject{
    
    public dod(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
        
    }
    
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private String datep = "";
    private double doh = 0;
    private double sum = 0;
    private double prct = 0;
    private int id = 0;
    private int comprator = 0;
    
    public java.sql.ResultSet getTable(){
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        return rs;
    }
    
    public void insertRow(String in_datep, double in_doh, double in_sum, double in_prct){
        comprator = 1;
        datep = in_datep;
        doh = in_doh;
        sum = in_sum;
        prct = in_prct;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public void updateRow(int in_id, String in_datep, double in_doh, double in_sum, double in_prct){
        comprator = 2;
        id = in_id;
        datep = in_datep;
        doh = in_doh;
        sum = in_sum;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        
    }
    
    public void deleteRow(int in_id){
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public void getRow(int in_id){
        comprator = 4;
        id = in_id;
        try{
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()){
                datep = rs.getString("datep");
                doh = rs.getDouble("doh");
                sum = rs.getDouble("sum");
                prct = rs.getDouble("prct");
                
            }
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public java.sql.ResultSet searchRecords(String in_datep, double in_doh, double in_sum, double in_prct){
        comprator = 5;
        datep = in_datep;
        doh = in_doh;
        sum = in_sum;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        return rs;
        
    }
    
    public int getMaxId(){
        int i = 0;
        comprator = 7;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
            while(rs.next()){
                i=rs.getInt("id");
            }
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        return i;
    }
    
    
    public void deleteALL(){
        comprator = 8;
        try{
            registerParameters();
            cstm.execute();} catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    public void registerParameters(){
        try{
            cstm.setInt("comprator", getComprator());
            cstm.setInt("in_id", getId());
            cstm.setString("datep", datep);
            cstm.setDouble("doh", doh);
            cstm.setDouble("sum", sum);
            cstm.setDouble("prct", prct);
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    public void prepareCstm() {
        try {
            
            setCstm(getConn().prepareCall("{call ls_procedure_taxDOD(?,?,?,?,?,?)}"));
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    public void prepareRezult(){
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
   
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    public void setComprator(int comprator) {
        this.comprator = comprator;
    }
    public void close(){
        try{
            rs.close();
            rs=null;
        }catch(java.sql.SQLException sqle){}
        
        try{
            cstm.close();
            cstm=null;
        }catch(java.sql.SQLException sqle){}
        
    }
}

