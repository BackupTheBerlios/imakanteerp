

package imakante.salary;

public class FrmDlajnost extends javax.swing.JInternalFrame implements java.awt.event.WindowListener {
    
    
    public FrmDlajnost(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame)
    throws java.sql.SQLException {
        super("\u0421\u043f\u0438\u0441\u044a\u043a \u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438", true, true, true, true);
        dbInternal = srcCN;
        JFParentFrame = getParentFrame;
        initResource();
        
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable, null);
        jPanel5 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel4.setLayout(new java.awt.BorderLayout());

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jPanel4.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel4, java.awt.BorderLayout.CENTER);

        jPanel5.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jPanel5, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432\u0430 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton1);

        jButton3.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton3);

        jButton4.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton4);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        jScrollPane1.remove(jTable);
        initResource();
        jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint(); jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint();
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
      try{
           if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                    int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                   
                 stm.executeUpdate("DELETE * FROM ls_dlajnosti WHERE id = '"+ row + "')");        
           }
           }
           catch(java.sql.SQLException sqle){sqle.printStackTrace();}    
        
        
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try{
            
            int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
            int nom = imakante.com.pubMethods.getMaxNum("SELECT nomer FROM ls_dlajnosti",dbInternal, "nomer") + 1;
            stm.executeUpdate("INSERT INTO ls_dlajnosti (nomer) VALUES('"+ nom + "')");
            
        } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
        jScrollPane1.remove(jTable);
        initResource();
        jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint(); jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    public static javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    javax.swing.JFrame JFParentFrame;
    public static java.sql.Connection dbInternal;
    public static java.sql.Statement stm;
    public static java.sql.ResultSet rsCus;
    public static String strSQL;
    public static imakante.com.CustomTableModel model;
    public static imakante.com.CustomTable jTable;
    public static final String Names[] = {"\u0412\u044a\u0442\u0440\u0435\u0448\u0435\u043d \u043d\u043e\u043c\u0435\u0440",
            "\u041d\u043e\u043c\u0435\u0440",
            "\u0418\u043c\u0435 \u043d\u0430 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0442\u0430",
            "\u041d\u0410\u0418\u041c\u0415\u041d\u041e\u0412\u0410\u041d\u0418\u0415 \u041d\u0410 \u0414\u041b\u042a\u0416\u041d\u041e\u0421\u0422\u0422\u0410",
            "\u043a\u043e\u0434 \u043f\u043e \u041d\u041a\u041f"};
            
            
            
            
            protected void initResource(){
                try{
                    stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_UPDATABLE);
                } catch (java.sql.SQLException sqle){
                }
                
                String strSQL = "SELECT * FROM ls_dlajnosti ORDER BY nomer ASC";
                try{
                    rsCus = stm.executeQuery(strSQL);} catch (java.sql.SQLException sqle){}
                
                model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
                jTable = new imakante.com.CustomTable(model);
                
                
            }
            protected void closeResource(){
                try{  rsCus.close();
                }catch(java.sql.SQLException sqle){}
                try{ stm.close();
                }catch(java.sql.SQLException sqle){}
                
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
