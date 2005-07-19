
package imakante.salary;

import java.awt.event.KeyEvent;

public class FrmNDOD extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    public FrmNDOD(javax.swing.JFrame getParentFrame, java.sql.Connection srcCN, int pMonth) {
        
        
        dbInternal = srcCN;
        JFParentFrame = getParentFrame;
        initResource();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextField3 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextField4 = new javax.swing.JTextField();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel3.setLayout(new java.awt.BorderLayout());

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jPanel3.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jPanel1.add(jPanel4, java.awt.BorderLayout.NORTH);

        jPanel5.setLayout(new java.awt.GridBagLayout());

        jPanel5.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u0414\u0430\u0442\u0430 \u043d\u0430 \u0432\u0430\u043b\u0438\u0434\u043d\u043e\u0441\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 15, 3, 3);
        jPanel5.add(jLabel1, gridBagConstraints);

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(15, 3, 3, 3);
        jPanel5.add(jTextField1, gridBagConstraints);

        jLabel2.setText("\u0414\u043e\u0445\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 15, 3, 3);
        jPanel5.add(jLabel2, gridBagConstraints);

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        jPanel5.add(jTextField2, gridBagConstraints);

        jLabel3.setText("\u0421\u0443\u043c\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 15, 3, 3);
        jPanel5.add(jLabel3, gridBagConstraints);

        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 3, 3);
        jPanel5.add(jTextField3, gridBagConstraints);

        jLabel4.setText("\u041f\u0440\u043e\u0446\u0435\u043d\u0442");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 15, 10, 3);
        jPanel5.add(jLabel4, gridBagConstraints);

        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.ipadx = 80;
        gridBagConstraints.insets = new java.awt.Insets(3, 3, 10, 3);
        jPanel5.add(jTextField4, gridBagConstraints);

        jButton6.setText("\u0422\u043e\u0447\u043d\u043e \u0442\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton6.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton6ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 9;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(15, 30, 3, 15);
        jPanel5.add(jButton6, gridBagConstraints);

        jButton7.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435 \u043d\u0430 \u043f\u043e-\u043c\u0430\u043b\u043a\u0438");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 9;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 30, 3, 15);
        jPanel5.add(jButton7, gridBagConstraints);

        jButton8.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435 \u043d\u0430 \u043f\u043e-\u0433\u043e\u043b\u0435\u043c\u0438");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 9;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(3, 30, 3, 15);
        jPanel5.add(jButton8, gridBagConstraints);

        jPanel1.add(jPanel5, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432\u0430 \u0441\u0442\u0430\u0432\u043a\u0430");
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

        jButton2.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
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

        jButton3.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
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

        jButton4.setText("\u0421\u0430\u043c\u043e \u0442\u0435\u043a\u0443\u0449\u0438\u0442\u0435");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jButton4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton4KeyPressed(evt);
            }
        });

        jPanel2.add(jButton4);

        jButton5.setText("\u041e\u043f\u0440\u0435\u0441\u043d\u044f\u0432\u0430\u043d\u0435");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jButton5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton5KeyPressed(evt);
            }
        });

        jPanel2.add(jButton5);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton5KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton5KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton5.doClick();}
    }//GEN-LAST:event_jButton5KeyPressed
    
    private void jButton4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton4KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton4.doClick();}
    }//GEN-LAST:event_jButton4KeyPressed
    
    private void jButton3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton3.doClick();}
    }//GEN-LAST:event_jButton3KeyPressed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jTextField4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField4KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField4.transferFocus();}
    }//GEN-LAST:event_jTextField4KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField3.transferFocus();}
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField1.transferFocus();}
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton8ActionPerformed
    
    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton7ActionPerformed
    
    private void jButton6ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton6ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton6ActionPerformed
    
    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                System.out.println("row "+row);
                stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                        java.sql.ResultSet.CONCUR_UPDATABLE);
                stm.execute("DELETE FROM ls_dod WHERE id = "+ row );
                repaintTable();
            }
        } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    public static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    private javax.swing.JTextField jTextField4;
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
            
            public static void repaintTable(){
                jScrollPane1.remove(jTable);
                initResource();
                jScrollPane1.getViewport().add(jTable, null);
                jScrollPane1.repaint(); jScrollPane1.getViewport().add(jTable, null);
                jScrollPane1.repaint();
            }
            
            
            protected static void initResource(){
                try{
                    stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                            java.sql.ResultSet.CONCUR_UPDATABLE);
                } catch (java.sql.SQLException sqle){
                }
                
                
                try{
                    rsCus = stm.executeQuery("SELECT * FROM ls_dod ");} catch (java.sql.SQLException sqle){}
                
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
