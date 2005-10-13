
package imakante.com;

public class iInternalFrame extends javax.swing.JInternalFrame implements java.io.Serializable{

    public iInternalFrame(String title) {
        super(title);
        
    }
    
     public iInternalFrame(String title, java.sql.Connection dbcon ) {
         
     super(title); 
     this.setInternalConn(dbcon);   
    }
     
    public iInternalFrame(String title, imakante.com.iFrame frame) {
        
     super(title); 
     setMyFrame(frame);
     this.setInternalConn(getMyFrame().getPrimaryConn());
     
    }
     
    private imakante.com.iFrame myFrame;
    private javax.swing.JFrame parent;
    private String names;
    private java.sql.Connection conn;

    public String getIFNames() {
        return names;
    }
    
    private void setInternalFrameTitle(){
    this.setTitle(names);
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

    public imakante.com.iFrame getMyFrame() {
        return myFrame;
    }

    public void setMyFrame(imakante.com.iFrame myFrame) {
        this.myFrame = myFrame;
    }
    
    
}
