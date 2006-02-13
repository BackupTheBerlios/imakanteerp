package nom;

import java.sql.*;
import imakante.com.*;

public class countries extends dbObject {
    
    public countries(java.sql.Connection conn) {
        super(conn);
        prepareCstm();
        
    }
    
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    private java.sql.CallableStatement cstm;
    private java.sql.ResultSet rs;
    private int code = 0;
    private String name = "";
    private int id = 0;
    private int comprator = 0;
    
    public java.sql.ResultSet getTable(){
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        System.out.println("ot getTable()");
        return rs;
    }
    
    public void insertRow(int in_code, String in_name){
        comprator = 1;
        this.code = in_code;
        this.name = in_name;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public void updateRow(int in_id, int in_code, String in_name){
        comprator = 2;
        id = in_id;
        code = in_code;
        name = in_name;
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
                code = rs.getInt("code");
                name = rs.getString("name");
            }
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public java.sql.ResultSet searchRecords(int in_code, String in_name){
        comprator = 5;
        code = in_code;
        name = in_name;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        return rs;
        
    }
    
    public int getMaxCode(){
        int i = 0;
        comprator = 6;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
            while(rs.next()){
                i=rs.getInt("code");
            }
            
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        return i;
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
            
            getCstm().setInt("in_id", getId());
            getCstm().setInt("comprator", getComprator());
            getCstm().setInt("in_code", code);
            getCstm().setString("in_name", getName());
            System.out.println("ot registerparameter");
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
    }
    
    public void prepareCstm() {
        try {
            
            setCstm(getConn().prepareCall("{call ls_procedure_country(?,?,?,?)}"));
            
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
    
    public java.sql.ResultSet getRs(int in_code, String in_name) {
        setCode(in_code);
        setName(in_name);
        prepareRezult();
        return getRs();
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public int getCode() {
        return code;
    }
    
    public void setCode(int code) {
        this.code = code;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
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
