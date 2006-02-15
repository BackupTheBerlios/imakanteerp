
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
        
        super(title,true,true,true,true);
        setMyFrame(frame);
        this.setInternalConn(getMyFrame().getConn());
        
    }
    
    private imakante.com.vcomponents.iFrame myFrame;
    private String names;
    private java.sql.Connection conn;
    private int intTransfer;
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
    
    private int calendar_wdays = 0;
    
    public int getCalendar_wdays() {
        
        return this.calendar_wdays;
    }
    
    public void setCalendar_wdays(int calendar_wdays) {
        
        this.calendar_wdays = calendar_wdays;
    }
    
    public void insertElement(String value){
       
    }

    public int getIntTransfer() {
        return intTransfer;
    }

    public void setIntTransfer(int intTransfer) {
        this.intTransfer = intTransfer;
    }
 
}
