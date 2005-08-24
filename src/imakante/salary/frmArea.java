
package imakante.salary;

import java.awt.event.KeyEvent;
import java.text.SimpleDateFormat;

public class frmArea extends javax.swing.JDialog implements java.awt.event.WindowListener{
    
    public frmArea(javax.swing.JFrame parent, boolean modal,java.sql.Connection srcCN) {
        super(parent, modal);
        
        dbInternal = srcCN;
        initResource();
        initComponents();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int x = (((dim.width)-(this.getSize().width))/2);
        int y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
        
    }
    
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable, null);
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041e\u0431\u043b\u0430\u0441\u0442\u0438");
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        jButton3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton3KeyPressed(evt);
            }
        });

        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        UnloadWindow();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        deleteRecord();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        newRecord();
        repaintTable();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButton3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton3.doClick();}
    }//GEN-LAST:event_jButton3KeyPressed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    public static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
   
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static final String Names[] = {"\u041d\u043e\u043c\u0435\u0440",
            "\u0418\u043c\u0435 \u043d\u0430 \u043e\u0431\u043b\u0430\u0441\u0442\u0442\u0430"
            ,"\u0414\u044a\u0440\u0436\u0430\u0432\u0430"};
            
          
            protected void deleteRecord(){
                try{
                    if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                        int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                        System.out.println("row "+row);
                        stm = dbInternal.createStatement();
                        stm.execute("DELETE FROM n_oblast WHERE id = "+ row );
                        repaintTable();
                    }
                } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
                
                
            }
            
            
            
            public static void repaintTable(){
                jScrollPane1.remove(jTable);
                initResource();
                jScrollPane1.getViewport().add(jTable, null);
                jScrollPane1.repaint(); jScrollPane1.getViewport().add(jTable, Names);
                jScrollPane1.repaint();
            }
            protected static void newRecord(){
                try{
                    stm.execute("INSERT INTO n_oblast (name) VALUES ('')");}catch(java.sql.SQLException sqle){sqle.printStackTrace();}
                
            }
            
            protected static void initResource(){
                try{
                    stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_UPDATABLE);
                } catch (java.sql.SQLException sqle){sqle.printStackTrace();
                }
                
                
                try{
                    rsCus = stm.executeQuery("SELECT * FROM n_oblast");} catch (java.sql.SQLException sqle){sqle.printStackTrace();}
                
                model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
                jTable = new imakante.com.CustomTable(model);
                
                
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
