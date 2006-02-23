
package imakante.com;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class dbObject extends imakante.com.imakanteObject implements dbInterface{
    
    public dbObject(java.sql.Connection connection) {
        
        setConn(connection);
        
    }
    
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator = 1;
    private int id=0; // imena ot tablicata
    private int id_groupe=0;
    private int code=0; // imena ot tablicata                           \
    private String name; // imena ot tablicata
    private String comment="";
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    
    public void close() {
        try{
            rs.close();
            rs = null;
        } catch (SQLException sqle){}
        
        try{
            cstm.close();
            cstm = null;
        } catch (SQLException sqle){}
        
    }
    
    public void deleteRow(int in_id) {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        } catch (SQLException sqle){sqle.printStackTrace();}
        
    }
    
    public String getComment(){
        return comment;
    }
    
    public int getComprator() {
        return comprator;
    }
    
    
    public CallableStatement getCstm() {
        return cstm;
    }
    
    public int getIDGr() {
        return id_groupe;
    }
    
    public int getId() {
        return id;
    }
    
   
    public int getMaxCod() {
        comprator = 8;
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while (rs.next()) {
                return_int = rs.getInt(1);
            }
        }  catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
    
    public int getMaxId() {
        comprator = 7;
        int return_int = -1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while (rs.next()) {
                return_int = rs.getInt(1);
            }
        }  catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
    
    public String getBAccountNumber() {
        return baccount;
    }
    
    public String getName() {
        return name;
    }
    
    public ResultSet getRs() {
        return rs;
    }
    
    public Statement getStm() {
        return stmt;
    }
   
    public ResultSet getTable() {
        
        this.comprator = 0;
        try{
            registerParameters();
            setRs(getCstm().executeQuery());
        } catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        
        return rs;
    }
    
    public int getcode() {
        return code;
    }
    
    public void insertRow(int in_code, int in_id_groupe) {
        comprator = 1;
        
        this.code = in_code;
        this.name = "";
        this.id_groupe = in_id_groupe;
        this.comment = "";
        try {
            registerParameters();
            cstm.execute();
        }  catch (SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    
    //-------SART MyFunction
    protected abstract void prepareCstm();
    
    
    protected void prepareRezult() {
        try{
            registerParameters();
            setRs(getCstm().executeQuery());} catch (SQLException sqle){sqle.printStackTrace();}
        
    }
    
    
    public void setComment(String Comment){
        
        this.comment = Comment;
        
    }
    
    public void setComprator(int com) //OK
    {
        this.comprator = com;
    }
    
    
    public void setCstm(CallableStatement cstm) //OK
    {
        this.cstm = cstm;
    }
    
    
    public void setIDGr(int COD) //OK
    {
        this.id_groupe = COD;
    }
    
    public void setId(int ID) //OK
    {
        this.id = ID;
    }
    
    public void setName(String Name) //OK
    {
        this.name = Name;
    }
    
    public void setRs(ResultSet rs) //OK
    {
        this.rs = rs;
    }
    
    
    public void setStm(Statement stm) //KO
    {
        this.stmt = stm;
    }
    
    public void setcode(int anid) //OK
    {
        this.code = anid;
    }
    
    protected abstract void registerParameters();
    
}
