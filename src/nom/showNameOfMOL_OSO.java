
package nom;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
public class showNameOfMOL_OSO extends imakante.com.vcomponents.iDialog
{
    
    /** Creates new form showNameOfMOL_OSO */
    public showNameOfMOL_OSO(imakante.com.vcomponents.iInternalFrame myframe, boolean modal, java.sql.ResultSet rs, java.sql.Connection conn,boolean mol_oos)
    {
        super(myframe, modal);
        MOL_OSO = mol_oos;
        myParent = (nom.FrmContragent)  myframe;
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
                 int ID = (Integer)table.getValueAt(row,getColumnIndex("id_ls_n_person"));
                
                 if(MOL_OSO) // ako e true to se otnasq za MOL
                 {
                     
                  myParent.setID_MOL(ID);
                  myParent.getContragentDB().setID_MOL(ID);
                 }
                 else // ako e false to se otnasq za OSO
                 {
                   myParent.setID_OSO(ID);
                   myParent.getContragentDB().setID_OSO(ID);
                 }
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
        this.setTitle("Списък Лица");
        this.setLocation(x, y);
        setVisible(true);
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
    private nom.FrmContragent myParent;
    private  boolean MOL_OSO;
   // private String columnName[] ={"id_ls_n_person","Име","ЕГН","НЛК","Коментар"};
     private String columnName[] ={"id_ls_n_person","\u0418\u043c\u0435","\u0415\u0413\u041d","\u041d\u041b\u041a","\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440"};
    
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
