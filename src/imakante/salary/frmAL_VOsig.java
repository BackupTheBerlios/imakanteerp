
package imakante.salary;
import java.awt.event.KeyEvent;
public class frmAL_VOsig extends javax.swing.JDialog  implements java.awt.event.WindowListener {
    
    public frmAL_VOsig(java.awt.Frame parent, boolean modal,java.sql.Connection dbCon, String patt_name) {
        super(parent, modal);
        dbInternal = dbCon;
        name = patt_name;
        initResource();
        jTable.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTable_event(evt);
            }
        });
        
        initComponents();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x_width = (((dim.width)-(this.getSize().width))/2);
        int y_height = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x_width,y_height);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel2.setLayout(new java.awt.BorderLayout());

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("Insert-\u0417\u0430 \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u0438\u044f \u0432\u0438\u0434 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d;    Esc - \u0417\u0430 \u043e\u0442\u043a\u0430\u0437");
        jPanel3.add(jLabel1);

        jPanel1.add(jPanel3, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static String name, cod_osig;
  
     public static final String Names[] = {"\u041a\u043e\u0434 \u043e\u0441\u0438\u0433\u0443\u0440\u044f\u0432\u0430\u043d\u0435",
    "\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043d\u0430 \u0432\u0438\u0434\u043e\u0432\u0435 \u043e\u0441\u0438\u0433\u0443\u0440\u0435\u043d\u0438"};
          
            protected static void initResource(){
                
                try{
                    stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_READ_ONLY);
                } catch (java.sql.SQLException sqle){sqle.printStackTrace();
                }
                
                
                try{
                    rsCus = stm.executeQuery("SELECT n_vidosig.cod_os, n_vidosig.name_os FROM n_vidosig" );} catch (java.sql.SQLException sqle){sqle.printStackTrace();}
                
                model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
                jTable = new imakante.com.CustomTable(model);
                
            }
            
            
            
            
            protected void getRecords(){
                
                if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                    cod_osig = jTable.getValueAt(jTable.getSelectedRow(),0).toString();
                    name =  jTable.getValueAt(jTable.getSelectedRow(),1).toString();
                   imakante.salary.frmAddLitse.insertVidOsiguren(name, cod_osig); 
                }
                UnloadWindow();
            }
            
            private void jTable_event(java.awt.event.KeyEvent evt) {
                if (evt.getKeyCode() == KeyEvent.VK_INSERT){
                    getRecords();
                }
                if (evt.getKeyCode() == KeyEvent.VK_ESCAPE){
                    UnloadWindow();
                }
                
            }
            
            protected void closeResource(){
                if(rsCus!=null){ try{  rsCus.close();
                }catch(java.sql.SQLException sqle){}}
                if(stm!=null){ try{ stm.close();
                }catch(java.sql.SQLException sqle){}}
                
            }
            
            
            protected void UnloadWindow(){
                closeResource();
                this.dispose();
                
            }
            
            public void windowOpened(java.awt.event.WindowEvent e){
            }
            public void windowClosing(java.awt.event.WindowEvent e){
                UnloadWindow();
            }
            public void windowClosed(java.awt.event.WindowEvent e){
            }
            public void windowIconified(java.awt.event.WindowEvent e){
            }
            public void windowDeiconified(java.awt.event.WindowEvent e){
            }
            public void windowActivated(java.awt.event.WindowEvent e){
            }
            public void windowDeactivated(java.awt.event.WindowEvent e){
            }
            
           
}
