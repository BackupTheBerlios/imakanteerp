
package imakante.com.vcomponents;

public class iFrame extends javax.swing.JFrame implements java.io.Serializable{
    public iFrame() {
        try {
            jbInit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    /** Creates a new instance of iFrame */
    public iFrame(String title) {
        super(title);
         try {
            jbInit();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
       // this.setTitle(title);
    }
   private java.sql.Connection conn = null;


   private void setMainFrameTitle(){
    this.setTitle(getFrameTitle());
    }




   private String title; 
   static final long serialVersionUID=1;
  
   
   

    public java.sql.Connection getConn() {
        return conn;
    }

    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }

    public String getFrameTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    private void jbInit() throws Exception {
    }

}
