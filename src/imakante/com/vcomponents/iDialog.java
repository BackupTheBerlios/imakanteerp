
package imakante.com.vcomponents;

public class iDialog extends javax.swing.JDialog implements java.io.Serializable {
    
    public iDialog(imakante.com.vcomponents.iInternalFrame Iframe, boolean modal) {
        super();
        this.setModal(modal);
        setMyFrame(Iframe);
    }
    public iDialog(imakante.com.vcomponents.iFrame frame, boolean modal) {
        super();
        this.setModal(modal);
        this.myFrame = frame;
        
    }
    public iDialog(imakante.com.vcomponents.iInternalFrame Iframe, boolean modal, imakante.com.CustomTable Mtable ) {
        super();
        this.setModal(modal);
        setMyFrame(Iframe);
        this.table = Mtable;
    }
    public iDialog(imakante.com.vcomponents.iFrame frame, boolean modal, imakante.com.CustomTable Mtable) {
        super();
        this.setModal(modal);
        this.myFrame = frame;
        this.table = Mtable;
    }
    public iDialog(imakante.com.vcomponents.iDialog dialog, boolean modal, String FileName) {
        super();
        this.setModal(modal);
        this.setMyDialog(dialog);
        this.file = FileName;
    }
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.vcomponents.iInternalFrame myIFrame;
    private imakante.com.vcomponents.iDialog myDialog;
    private imakante.com.CustomTable table = null;
    private String file = null;
    
    private void setMyFrame(imakante.com.vcomponents.iInternalFrame myFrame) {
        
        this.myIFrame = myFrame;
    }
    
    public imakante.com.vcomponents.iInternalFrame getMyIFrame() {
        return myIFrame;
    }
    
    public void setMyIFrame(imakante.com.vcomponents.iInternalFrame val) {
        this.myIFrame = val;
    }
    
    public imakante.com.vcomponents.iDialog getMyDialog() {
        return myDialog;
    }

    public void setMyDialog(imakante.com.vcomponents.iDialog myDialog) {
        this.myDialog = myDialog;
    }
    
    private int getColumnIndex(String in) {
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    private void HideColumns(int col) {
        int iColumn = col;
// set column width
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
    }
}
