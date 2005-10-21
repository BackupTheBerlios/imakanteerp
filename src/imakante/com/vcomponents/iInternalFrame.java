
package imakante.com.vcomponents;


public class iInternalFrame extends javax.swing.JInternalFrame implements java.io.Serializable{

    public iInternalFrame(String title) {
        super(title);
        
    }
    
     public iInternalFrame(String title, java.sql.Connection dbcon ) {
         
     super(title); 
     this.setInternalConn(dbcon);   
    }
     
    public iInternalFrame(String title, imakante.com.vcomponents.iFrame frame) {
        
     super(title); 
     setMyFrame(frame);
     this.setInternalConn(getMyFrame().getPrimaryConn());
     
     
    }
     
    private imakante.com.vcomponents.iFrame myFrame;
    private String names;
    private java.sql.Connection conn;
    static final long serialVersionUID=1;
    
    public String getIFNames() {
        return names;
    }
    
   
    
    public void setIFNames(String names) {
        this.names = names;
    }

    public java.sql.Connection getInternalConn() {
        return conn;
    }

    public void setInternalConn(java.sql.Connection conn) {
        this.conn = conn;
    }

    public imakante.com.vcomponents.iFrame getMyFrame() {
        return myFrame;
    }

    public void setMyFrame(imakante.com.vcomponents.iFrame myFrame) {
        this.myFrame = myFrame;
    }
    
    
}
