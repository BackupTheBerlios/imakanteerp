
package nom;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.*;

public class showContentsCon_Gr   extends imakante.com.vcomponents.iDialog
{
    
    /** Creates new form aContragent */
    public showContentsCon_Gr(imakante.com.vcomponents.iInternalFrame myframe, boolean modal, java.sql.ResultSet rs, java.sql.Connection con)
    {
        super(myframe, modal);
        myParent = (nom.FrmProduct)  myframe;
        this.rs = rs;
        this.conn = con;
       
        model = new imakante.com.CustomTableModel(conn,rs, null);
        table = new imakante.com.CustomTable(model);
        table.addKeyListener(new KeyListener()
        {
            public void keyPressed(KeyEvent e)
            {
              if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode())
                {
                 int row = table.getSelectedRow();
                 int ID = (Integer)table.getValueAt(row,0);
                 myParent.setId_Contragent(ID);
                 close();
                }
            }
            public void keyReleased(KeyEvent e)
            {
            }
            public void keyTyped(KeyEvent e)
            {
            }
        });
        
        
        initComponents();
        
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
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
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode())
        {
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
  
    
    public void close()
    {
        this.dispose();
    }
}