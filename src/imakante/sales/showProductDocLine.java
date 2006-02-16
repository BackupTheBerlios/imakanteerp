
package imakante.sales;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import imakante.sales.FrmDocumentFacade;
public class showProductDocLine extends imakante.com.vcomponents.iDialog
{
    
    /** Creates new form showNameOfMOL_OSO */
    public showProductDocLine (imakante.com.vcomponents.iInternalFrame myframe, boolean modal, java.sql.ResultSet rs, java.sql.Connection conn)
    {
        super(myframe, modal);
       
        myParent = (FrmDocumentFacade)  myframe;
        this.rs = rs;
        model = new imakante.com.CustomTableModel(conn,rs, columnName);
        table = new imakante.com.CustomTable(model);
        HideColumns(getColumnIndex("id_ls_n_person"));
        table.addKeyListener(new KeyListener()
        {
            public void keyPressed(KeyEvent e)
            {
              if(java.awt.event.KeyEvent.VK_ENTER == e.getKeyCode())
                {
                 int row = table.getSelectedRow();
                 int ID = (Integer)table.getValueAt(row,getColumnIndex("id_pm"));
                              
                  myParent.setID_Product(ID);
                  myParent.setNameProduct((String)table.getValueAt(row,getColumnIndex("name_pm")));
                  myParent.setCodeProduct((Integer)table.getValueAt(row,getColumnIndex("code_pm")));
                  myParent.setStorageOUTProduct((Integer)table.getValueAt(row,getColumnIndex("id_n_sttorage")));
                  myParent.setID_PP((Integer)table.getValueAt(row,getColumnIndex("id_pp")));
                  myParent.setBrojProduct((Integer)table.getValueAt(row,getColumnIndex("quant_nal")));
                  myParent.setID_PD((Integer)table.getValueAt(row,getColumnIndex("id_pd")));
                  myParent.setProcentProduct((Double)table.getValueAt(row,getColumnIndex("max_pop_pm")));
                  myParent.setID_PF((Integer)table.getValueAt(row,getColumnIndex("id_pf")));
                  
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
        
    }
    
   
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jScrollPane1 = new javax.swing.JScrollPane();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        getContentPane().add(jScrollPane1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
   private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table; 
    private  java.sql.ResultSet rs;
    private FrmDocumentFacade myParent;
   private String columnName[] = null;
  
    
    public void close()
    {
        this.dispose();
    } 
      private int getColumnIndex(String in) //test
 {
     int count = table.getColumnCount();
     for(int i=0; i < count; i++)
     {
         if(table.getColumnName(i).equals(in)) return i;
     }
     return 0;
 }
 private void HideColumns(int col)
 {
   int iColumn = col;
// set column width
table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
table.getColumnModel().getColumn(iColumn).setMinWidth(0);
table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
     
 }
}// end class
