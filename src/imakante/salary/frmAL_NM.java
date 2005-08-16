
package imakante.salary;

import java.awt.event.KeyEvent;

public class frmAL_NM extends javax.swing.JDialog implements java.awt.event.WindowListener {
    
    public frmAL_NM(javax.swing.JFrame parent, boolean modal, java.sql.Connection dbCon, String patt_name, int post_code, boolean ftr) {
        super(parent, modal);
        dbInternal = dbCon;
        name = patt_name;
        p_code = post_code;
        lftr = ftr;
        
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
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable, null);
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                formKeyPressed(evt);
            }
        });

        jPanel1.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("Insert - \u0417\u0430 \u0432\u044a\u0432\u0435\u0436\u0434\u0430\u043d\u0435 \u043d\u0430 \u0438\u0437\u0431\u0440\u0430\u043d\u043e\u0442\u043e \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e;       Esc - \u0417\u0430 \u0438\u0437\u0445\u043e\u0434 ");
        jPanel2.add(jLabel1);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void formKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyPressed
        UnloadWindow();
    }//GEN-LAST:event_formKeyPressed
    protected static void initResource(){
        if ( lftr = true ) { try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();
        }
        
        
        try{
            rsCus = stm.executeQuery("SELECT n_nm.id, n_nm.postcode, n_nm.name, n_oblast.name, n_oblast.id FROM n_nm LEFT JOIN n_oblast ON(n_oblast.id = n_nm.id_oblast) WHERE n_nm.name  LIKE '%"+ name + "%'");} catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
        model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);}
        
        if ( lftr = false ) { try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();
        }
        
        
        try{
            rsCus = stm.executeQuery("SELECT n_nm.id, n_nm.postcode, n_nm.name, n_oblast.name FROM n_nm LEFT JOIN n_oblast ON(n_oblast.id = n_nm.id_oblast) WHERE n_nm.postcode  LIKE '%"+ p_code + "%'");} catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
        model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);}
        
    }
    
    
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    protected static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static final String Names[] = {"\u041d\u043e\u043c\u0435\u0440","\u041f\u043e\u0449\u0435\u043d\u0441\u043a\u0438 \u043a\u043e\u0434",
            "\u0418\u043c\u0435 \u043d\u0430 \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u043e\u0442\u043e \u043c\u044f\u0441\u0442\u043e",
            "\u041e\u0431\u043b\u0430\u0441\u0442","oblast id"
    };
    public static String name,code,city;
    public static int p_code, area;
    static boolean lftr;
    
    private void jTable_event(java.awt.event.KeyEvent evt) {
        if (evt.getKeyCode() == KeyEvent.VK_INSERT){
            getRecords();
        }
        if (evt.getKeyCode() == KeyEvent.VK_ESCAPE){
            UnloadWindow();
        }
        
    }
    
    protected void getRecords(){
        
        if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
            
            area = (Integer) jTable.getValueAt(jTable.getSelectedRow(),4);
            code =  jTable.getValueAt(jTable.getSelectedRow(),1).toString();
            city = jTable.getValueAt(jTable.getSelectedRow(),2).toString();
            imakante.salary.frmAddLitse.insertN_NM(area, code, city);
        }
         UnloadWindow();
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
