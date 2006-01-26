package nom;

public class incomDB  extends imakante.com.dbObject {
    
    
    // ------------START Money Variables
    
    private java.sql.ResultSet rs;
    private java.sql.Statement stmt;
    private java.sql.CallableStatement cstm;
    private int comprator;
    private int id=0; // imena ot tablicata
    private String cod = ""; // kod
    private String name = ""; // imena na razhodite
    private String comment = ""; // belejki otnosno prihoda
    private java.sql.Connection conn; // connection
    
    
    //-------------END Money  Variables
    
    /** Creates a new instance of groupDB */
    public incomDB(java.sql.Connection conn) {
        super(conn);
        this.conn = conn;
        prepareCstm();
    }
    
    //-------SART Methods
    
    // Make Cstm - Call Statement
    private void prepareCstm() {
        try {
            
            cstm = conn.prepareCall("{call nom_procedure_incom(?,?,?,?,?,?)}");
            
        } catch(java.sql.SQLException sqle) {sqle.printStackTrace();}
    }
    
    public java.sql.ResultSet getTable() //OK
    {
        
        this.comprator = 0;
        try{
            registerParameters();
            rs= cstm.executeQuery();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return rs;
    }
    
    private void registerParameters() //OK
    {
        try {
            
            cstm.setInt("in_id", id);
            cstm.setInt("comprator",comprator);
            cstm.setString("in_code", cod);
            cstm.setString("in_name", name);
            cstm.setString("in_comments", comment);
            
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
    }
    private void prepareRezult() //OK
    {
        try{
            registerParameters();
            rs = cstm.executeQuery();}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public void insertRow( String in_cod, String in_name, String in_comment) //OK
    {
        comprator = 1;
        this.cod = in_cod;
        this.name = in_name;
        this.comment = in_comment;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
    }
    public void updateRow(int in_id, String in_cod_lat, String in_name, String in_comment) //OK
    {
        comprator = 2;
        this.id = in_id;
        this.name = in_name;
        this.comment = in_comment;
        try {
            registerParameters();
            cstm.execute();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        
        
    }
    public void deleteRow(int in_id) //OK
    {
        comprator = 3;
        id = in_id;
        try{
            registerParameters();
            cstm.execute();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    public java.sql.ResultSet getRow(int in_id) //OK
    {
        comprator = 4;
        this.id = in_id;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                
                cod = rs.getString("cod");
                name = rs.getString("name");
                comment = rs.getString("comment");
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return rs;
    }
    public java.sql.ResultSet searchRecords(String in_cod, String in_name) //OK
    {
        comprator = 5;
        
        this.cod = in_cod;
        this.name = in_name;
        
        try {
            registerParameters();
            rs = cstm.executeQuery();
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return rs;
        
    }
    
    public int getMaxId() //OK
    {
        comprator = 7;
        int return_int=-1;
        try {
            registerParameters();
            rs = cstm.executeQuery();
            while(rs.next()) {
                return_int = rs.getInt(1);
            }
        } catch(java.sql.SQLException sqle) {
            sqle.printStackTrace();
        }
        return return_int;
    }
    
    public void close() //OK
    {
        try{
            rs.close();
            rs=null;
        }catch(java.sql.SQLException sqle){}
        
        try{
            cstm.close();
            cstm=null;
        }catch(java.sql.SQLException sqle){}
        
    }
    
    
    
    
    
}// end class
