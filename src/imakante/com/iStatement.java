
package imakante.com;

public class iStatement extends imakante.com.dbObject{

    public iStatement(java.sql.Connection connection) {
        super(connection);
        this.conn = connection;
              
    }
    java.sql.Connection conn;
    java.sql.Statement stm;
    java.sql.CallableStatement cstm;
    String callString;
    
    
    public void iCall(String sql){
        try{
        cstm = conn.prepareCall(sql);}catch(java.sql.SQLException sqle){}
       
      }
    
}
