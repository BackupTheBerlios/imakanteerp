

package imakante.com.vcomponents;

public class iDialog extends javax.swing.JDialog implements java.io.Serializable {
    
    public iDialog(imakante.com.vcomponents.iInternalFrame Iframe, boolean modal) {
        super();
        this.setModal(modal);
        setMyFrame(Iframe);
    }
    public iDialog(imakante.com.vcomponents.iFrame frame, boolean modal){
        super();
        this.setModal(modal);
        this.myFrame = frame;
    }
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.vcomponents.iInternalFrame myIFrame;
    
    
    
    private void setMyFrame(imakante.com.vcomponents.iInternalFrame myFrame) {
        
        this.myIFrame = myFrame;
    }
    
    public iInternalFrame getMyIFrame() {
        return myIFrame;
    }
    
    public void setMyIFrame(iInternalFrame val) {
        this.myIFrame = val;
    }
}
