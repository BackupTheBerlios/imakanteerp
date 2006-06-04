
package nom;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.*;

public class showContentsCon_Gr   extends imakante.com.vcomponents.iDialog {
    
    /** Creates new form aContragent */
    public showContentsCon_Gr(imakante.com.vcomponents.iInternalFrame myframe, boolean modal, java.sql.ResultSet rs, java.sql.Connection con) {
        super(myframe, modal);
        myParent = (nom.FrmProduct)  myframe;
        this.rs = rs;
        this.conn = con;
        //columnName = null;
        model = new imakante.com.CustomTableModel(conn,rs, columnName);
        table = new imakante.com.CustomTable(model);
        HideColumns(getColumnIndex("id_contragent"));
        HideColumns(getColumnIndex("is_oso"));
        HideColumns(getColumnIndex("id_mol"));
        HideColumns(getColumnIndex("id_nm"));
        HideColumns(getColumnIndex("flag_n_contragent"));
        table.addKeyListener(new KeyListener() {
            public void keyPressed(KeyEvent e) {
                if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode()) {
                    int row = table.getSelectedRow();
                    int ID = (Integer)table.getValueAt(row,getColumnIndex("id_contragent"));
                    myParent.setId_Contragent(ID);
                    close();
                }
            }
            public void keyReleased(KeyEvent e) {
            }
            public void keyTyped(KeyEvent e) {
            }
        });
        
        
        initComponents();
        
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        this.table.requestFocus();
        this.table.changeSelection(0,0,false,false);
        
        //  setVisible(true);
        
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jScrollPane1 = new javax.swing.JScrollPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0417\u0411\u041e\u0420");
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.setOpaque(false);
        jScrollPane1.setPreferredSize(new java.awt.Dimension(200, 200));
        jScrollPane1.getViewport().add(table);
        jScrollPane1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jScrollPane1KeyPressed(evt);
            }
        });

        getContentPane().add(jScrollPane1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jScrollPane1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jScrollPane1KeyPressed
// TODO add your handling code here:
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()) {
            int row = table.getSelectedRow();
            int ID = (Integer)table.getValueAt(row,0);
            // myParent.
            this.dispose();
        }
        
        
        
    }//GEN-LAST:event_jScrollPane1KeyPressed
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private  java.sql.ResultSet rs;
    private nom.FrmProduct myParent;
    private java.sql.Connection conn;
    private int Con_Gr =0;
  /*  private String columnName[] = {"id_contragent","is_oso","id_mol","id_nm","���:","���:","�������:","������� �����:",
                                  "�����:", "�������:","����:","E-mail:","Web page","flag_n_contragent"};*/
    private String columnName[] = {"id_contragent","is_oso","id_mol","id_nm","\u041a\u043e\u0434:","\u0418\u043c\u0435:","\u0411\u0443\u043b\u0441\u0442\u0430\u0442:","\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u0440:",
    "\u0410\u0434\u0440\u0435\u0441:","\u0422\u0435\u043b\u0435\u0444\u043e\u043d:","\u0424\u0430\u043a\u0441:","E-mail:","Web page","flag_n_contragent"};
    
    public void close() {
        this.dispose();
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
