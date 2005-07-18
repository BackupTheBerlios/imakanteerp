

package imakante.salary;



public class FrmNCP extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    public FrmNCP(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame)  throws java.sql.SQLException{
        super("\u041d\u0430\u0446\u0438\u043e\u043d\u0430\u043b\u0435\u043d \u043a\u043b\u0430\u0441\u0438\u0444\u0438\u043a\u0430\u0442\u043e\u0440 \u043d\u0430 \u043f\u0440\u043e\u0444\u0435\u0441\u0438\u0438\u0442\u0435", false, true,true, true);
        
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
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        jTextField3 = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
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
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField1, gridBagConstraints);

        jLabel2.setText("\u0418\u043c\u0435 ");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel2, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 300;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField2, gridBagConstraints);

        jLabel3.setText("\u041a\u043e\u0434");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel3, gridBagConstraints);

        jButton2.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 6;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jButton2, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField3, gridBagConstraints);

        jPanel2.add(jPanel4, java.awt.BorderLayout.SOUTH);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041f\u0440\u0435\u043d\u043e\u0441 \u0432\u044a\u0432 \u0444\u0438\u0440\u043c\u0435\u043d\u0438 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton1);

        jButton3.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0434\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel3.add(jButton3);

        jButton4.setText("\u0418\u0437\u0445\u043e\u0434");
        jPanel3.add(jButton4);

        jPanel1.add(jPanel3, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        jScrollPane1.remove(jTable);
        initResource();
        jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint(); jScrollPane1.getViewport().add(jTable, null);
        jScrollPane1.repaint();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void formKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyPressed
        
    }//GEN-LAST:event_formKeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
// search button
       
        try{
            rsCus = stm.executeQuery("SELECT * FROM natc_clasifikator_prof WHERE Id LIKE '%" + jTextField1.getText() + "%' AND name_prof LIKE '%" + jTextField2.getText()+"%' AND cod LIKE '%"+ jTextField3.getText()+"%'");
            if (rsCus==null){System.out.println(" problem s rs");}
            jScrollPane1.remove(jTable);
            jmodel = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
            jTable = new imakante.com.CustomTable(jmodel);
            jScrollPane1.getViewport().add(jTable, null);
            jScrollPane1.repaint();
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
       
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
           try{
           if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                    int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                    int nom = imakante.com.pubMethods.getMaxNum("SELECT nomer FROM ls_dlajnosti",dbInternal, "nomer") + 1; 
                 stm.executeUpdate("INSERT INTO ls_dlajnosti (nomer, id_ncl) VALUES('"+ nom + "', '"+row +"')");        
           }
           }
           catch(java.sql.SQLException sqle){sqle.printStackTrace();}    
        
        
        
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
        
        String strSQL = "SELECT * FROM natc_clasifikator_prof";
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
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    public static javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JTextField jTextField3;
    // End of variables declaration//GEN-END:variables
    java.sql.Connection dbInternal;
    java.sql.Statement stm;
    java.sql.ResultSet rsCus;
    public imakante.com.CustomTable jTable;
    public imakante.com.CustomTableModel jmodel;

    javax.swing.JFrame JFParentFrame;
    public static final String Names[] = {"\u0412\u044a\u0442\u0440\u0435\u0448\u0435\u043d \u043d\u043e\u043c\u0435\u0440",
            "\u041d\u0410\u0418\u041c\u0415\u041d\u041e\u0412\u0410\u041d\u0418\u0415 \u041d\u0410 \u0414\u041b\u042a\u0416\u041d\u041e\u0421\u0422\u0422\u0410",
            "\u043a\u043e\u0434 \u043f\u043e \u041d\u041a\u041f"};
}
