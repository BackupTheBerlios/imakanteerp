

package imakante.com.vcomponents;

public class iDialog extends javax.swing.JDialog implements java.io.Serializable {

    public iDialog(imakante.com.vcomponents.iInternalFrame frame, boolean modal) {
          super();
          this.setModal(modal);
          setMyFrame(frame);
    }
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
