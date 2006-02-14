

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
    public iDialog(imakante.com.vcomponents.iInternalFrame Iframe, boolean modal, imakante.com.CustomTable Mtable ) {
        super();
        this.setModal(modal);
        setMyFrame(Iframe);
        this.table = Mtable;
    }
    public iDialog(imakante.com.vcomponents.iFrame frame, boolean modal, imakante.com.CustomTable Mtable){
        super();
        this.setModal(modal);
        this.myFrame = frame;
        this.table = Mtable;
    }
    
    private imakante.com.vcomponents.iFrame myFrame;
    private imakante.com.vcomponents.iInternalFrame myIFrame;
    private imakante.com.CustomTable table = null;
    
    
    private void setMyFrame(imakante.com.vcomponents.iInternalFrame myFrame) {
        
        this.myIFrame = myFrame;
    }
    
    public iInternalFrame getMyIFrame() {
        return myIFrame;
    }
    
    public void setMyIFrame(iInternalFrame val) {
        this.myIFrame = val;
    }
    
    private int getColumnIndex(String in) //test
    {
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
