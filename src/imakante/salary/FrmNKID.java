

package imakante.salary;

import java.awt.event.KeyEvent;



public class FrmNKID extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    public FrmNKID(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame)  throws java.sql.SQLException{
        super("\u041d\u041a\u0418\u0414", false, true,true, true);
        
        dbInternal = srcCN;
        JFParentFrame = getParentFrame;
        initResource();
        initComponents();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable, null);
        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jTextField3 = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButton3 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();

        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                formKeyPressed(evt);
            }
        });

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.setLayout(new java.awt.BorderLayout());

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setLayout(new java.awt.GridBagLayout());

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jLabel2.setText("\u0418\u043c\u0435 ");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 4;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel2, gridBagConstraints);

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 300;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField2, gridBagConstraints);

        jLabel3.setText("\u041a\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel3, gridBagConstraints);

        jButton2.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
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

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jButton2, gridBagConstraints);

        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField3, gridBagConstraints);

        jPanel2.add(jPanel4, java.awt.BorderLayout.SOUTH);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton3.setText("\u041d\u043e\u0432 \u0437\u0430\u043f\u0438\u0441");
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

        jPanel3.add(jButton3);

        jButton5.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton5);

        jButton1.setText("\u041f\u0440\u0435\u043d\u043e\u0441 \u0432\u044a\u0432 \u0444\u0438\u0440\u043c\u0435\u043d\u0430 \u0438\u043d\u0444\u043e\u0440\u043c\u0430\u0446\u0438\u044f");
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

        jPanel3.add(jButton1);

        jButton4.setText("\u0418\u0437\u0445\u043e\u0434");
        jButton4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton4KeyPressed(evt);
            }
        });

        jPanel3.add(jButton4);

        jPanel1.add(jPanel3, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents

    private void jButton3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton3KeyPressed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton3KeyPressed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick();}
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton4KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton4KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton4.doClick();}
    }//GEN-LAST:event_jButton4KeyPressed
        
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jTextField3KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField3KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField3.transferFocus();}
    }//GEN-LAST:event_jTextField3KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
            
    private void formKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyPressed
        
    }//GEN-LAST:event_formKeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// search button
        
        try{
            rsCus = stm.executeQuery("SELECT * FROM natc_clasifikator_deinosti WHERE LIKE name_prof LIKE '%" + jTextField2.getText()+"%' AND cod LIKE '%"+ jTextField3.getText()+"%'");
            
            jScrollPane1.remove(jTable);
            jmodel = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
            jTable = new imakante.com.CustomTable(jmodel);
            jScrollPane1.getViewport().add(jTable, null);
            jScrollPane1.repaint();
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       
        
        
        
    }//GEN-LAST:event_jButton1ActionPerformed
    java.awt.event.KeyAdapter keyCl = new java.awt.event.KeyAdapter() {
        public void keyPressed(java.awt.event.KeyEvent evt) {
            ButtonEnterPressed(evt);
        }
    };
    
    
    private void ButtonEnterPressed(java.awt.event.KeyEvent evt) {
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){
            ((javax.swing.JButton) evt.getComponent()).doClick();
        }
    }
    
    protected void initResource(){
        try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_READ_ONLY);
        } catch (java.sql.SQLException sqle){
        }
        
        String strSQL = "SELECT * FROM natc_clasifikator_deinosti";
        try{
            rsCus = stm.executeQuery(strSQL);} catch (java.sql.SQLException sqle){}
        
        jmodel = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(jmodel);
        
        
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
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    public static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
    java.sql.Connection dbInternal;
    java.sql.Statement stm;
    java.sql.ResultSet rsCus;
    public imakante.com.CustomTable jTable;
    public imakante.com.CustomTableModel jmodel;
    
    javax.swing.JFrame JFParentFrame;
    public static final String Names[] = {"id",
            "\u0418\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u0435\u0441\u043a\u0438 \u0434\u0435\u0439\u043d\u043e\u0441\u0442\u0438 (\u043a\u043e\u0434 \u043f\u043e \u041d\u041a\u0418\u0414 ) ",
            "\u041d\u0430\u0438\u043c\u0435\u043d\u043e\u0432\u0430\u043d\u0438\u0435 \u043d\u0430 \u0438\u043a\u043e\u043d\u043e\u043c\u0438\u0447\u0435\u0441\u043a\u0430 \u0434\u0435\u0439\u043d\u043e\u0441\u0442 ",
            "\u0420\u044a\u043a\u043e\u0432\u043e\u0434\u043d\u0438 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b\u0438",
            "\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u0438\u0441\u0442\u0438",
            "\u041f\u0440\u0438\u043b\u043e\u0436\u043d\u0438 \u0441\u043f\u0435\u0446\u0438\u0430\u043b\u0438\u0441\u0442\u0438",
            "\u041f\u0435\u0440\u0441\u043e\u043d\u0430\u043b \u0437\u0430\u0435\u0442 \u0441 \u0443\u0441\u043b\u0443\u0433\u0438 \u0437\u0430 \u043d\u0430\u0441\u0435\u043b., \u043e\u0445\u0440\u0430\u043d\u0430 \u0438 \u0442\u044a\u0440\u0433\u043e\u0432\u0438\u044f",
            "\u041f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0438\u0442\u0435\u043b\u0438 \u0432 \u0441\u0435\u043b\u0441\u043a\u043e\u0442\u043e, \u0433\u043e\u0440\u0441\u043a\u043e\u0442\u043e \u0438 \u0440\u0438\u0431\u043d\u043e\u0442\u043e \u0441\u0442\u043e\u043f., \u043b\u043e\u0432\u0446\u0438 \u0438 \u0440\u0438\u0431\u043e\u043b\u043e\u0432\u0446\u0438",
            "\u041a\u0432\u0430\u043b\u0438\u0444\u0438\u0446\u0438\u0440\u0430\u043d\u0438 \u043f\u0440\u043e\u0438\u0437\u0432\u043e\u0434\u0441\u0442\u0432\u0435\u043d\u0438 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u0446\u0438",
            "\u041e\u043f\u0435\u0440\u0430\u0442\u043e\u0440\u0438 \u043d\u0430 \u0441\u044a\u043e\u0440\u044a\u0436\u0435\u043d\u0438\u044f, \u043c\u0430\u0448\u0438\u043d\u0438 \u0438 \u0442\u0440\u0430\u043d\u0441\u043f. \u0441\u0440\u0435\u0434\u0441\u0442\u0432\u0430",
            "\u041d\u0438\u0441\u043a\u043e\u043a\u0432\u0430\u043b\u0438\u0444\u0438\u0446\u0438\u0440\u0430\u043d\u0438 \u0440\u0430\u0431\u043e\u0442\u043d\u0438\u0446\u0438"
    };
}
