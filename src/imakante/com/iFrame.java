
package imakante.com;

public class iFrame extends javax.swing.JFrame implements java.io.Serializable{
    
    /** Creates a new instance of iFrame */
    public iFrame(String title) {
        super(title);
       // this.setTitle(title);
    }
   private java.sql.Connection conn = null;
   private String title; 
   
   
   private void setMainFrameTitle(){
    this.setTitle(getFrameTitle());
    }
   
   
   
    public java.sql.Connection getPrimaryConn() {
        return conn;
    }

    public void setPrimaryConn(java.sql.Connection conn) {
        this.conn = conn;
    }

    public String getFrameTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
}
