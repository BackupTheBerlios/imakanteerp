
package imakante.salary;
import java.awt.event.KeyEvent;

public class FrmNSastav extends javax.swing.JInternalFrame implements java.awt.event.WindowListener{
    
    
    public FrmNSastav(java.sql.Connection srcCN, javax.swing.JFrame getParentFrame) {
        
        super("\u0421\u043f\u0438\u0441\u044a\u043a \u0414\u043b\u044a\u0436\u043d\u043e\u0441\u0442\u0438", true, true, true, true);
        dbInternal = srcCN;
        JFParentFrame = getParentFrame;
        str1=iniNam;
        initNames(str1);
        initResource();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jScrollPane1.getViewport().add(jTable, null);
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jTextField3 = new javax.swing.JTextField();
        jTextField4 = new javax.swing.JTextField();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel3.setLayout(new java.awt.BorderLayout());

        jPanel3.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel1.add(jPanel3, java.awt.BorderLayout.CENTER);

        jPanel4.setLayout(new java.awt.GridBagLayout());

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 15, 5, 5);
        jPanel4.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u0421\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0438\u043c\u0435");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 15, 5, 5);
        jPanel4.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0424\u0430\u043c\u0438\u043b\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jLabel3, gridBagConstraints);

        jLabel4.setText("\u0415\u0413\u041d");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 2;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 5, 5);
        jPanel4.add(jLabel4, gridBagConstraints);

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanel4.add(jTextField1, gridBagConstraints);

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 200;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField2, gridBagConstraints);

        jTextField3.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField3KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 200;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 5);
        jPanel4.add(jTextField3, gridBagConstraints);

        jTextField4.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField4KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 3;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 100;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 5, 5);
        jPanel4.add(jTextField4, gridBagConstraints);

        jButton8.setText("\u0422\u044a\u0440\u0441\u043d\u0435");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });
        jButton8.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton8KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 5, 15);
        jPanel4.add(jButton8, gridBagConstraints);

        jButton9.setText("\u0420\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u043e \u0442\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });
        jButton9.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton9KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 5;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(5, 10, 5, 15);
        jPanel4.add(jButton9, gridBagConstraints);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u041d\u043e\u0432 \u0441\u043b\u0443\u0436\u0438\u0442\u0435\u043b");
        jButton1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 5);
        jPanel2.add(jButton1, gridBagConstraints);

        jButton2.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButton2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton2, gridBagConstraints);

        jButton3.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0437\u0430\u043f\u0438\u0441");
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

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton3, gridBagConstraints);

        jButton4.setText("\u0424\u0438\u043b\u0442\u044a\u0440");
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

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton4, gridBagConstraints);

        jButton5.setText("\u041f\u0435\u0447\u0430\u0442 \u0441\u043f\u0438\u0441\u044a\u043a");
        jButton5.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton5KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton5, gridBagConstraints);

        jButton6.setText("\u041f\u0435\u0447\u0430\u0442 \u043a\u0430\u0440\u0442\u043e\u043d");
        jButton6.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton6KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton6, gridBagConstraints);

        jButton7.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(10, 5, 10, 5);
        jPanel2.add(jButton7, gridBagConstraints);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton6KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton6KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton6.doClick();}
    }//GEN-LAST:event_jButton6KeyPressed
    
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
    
    private void jButton9KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton9KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton9.doClick();}
    }//GEN-LAST:event_jButton9KeyPressed
    
    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton9ActionPerformed
    
    private void jButton8KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton8KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton8.doClick();}
    }//GEN-LAST:event_jButton8KeyPressed
    
    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        searchRecord();
    }//GEN-LAST:event_jButton8ActionPerformed
    
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
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
// TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        
        newFilter();
        
    }//GEN-LAST:event_jButton4ActionPerformed
    
    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        repaintFullTable();
    }//GEN-LAST:event_jButton7ActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
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
    public static  String Names[];
    public static int al;
    public static final String iniNam = "11111111111111111111111111111";
    public static String strQ;
    public static String str1;
    
    public static void initNames(String strIniTable){
        strQ="SELECT ";
        al = 1;
        for (int i = 0; i<29; i++ ){
            if  (Integer.parseInt((String.valueOf(strIniTable.charAt(i)))) == 1){
                al++;
            }
        }
        
        Names =  new String[al];
        int x =0;
        try{
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(0))))==1){ Names[x] = "id"; strQ=strQ + "id, "; x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(1))))==1){ Names[x] = "id"; strQ=strQ + "nomer, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(2))))==1){ Names[x] = "id"; strQ=strQ + "first, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(3))))==1){ Names[x] = "id"; strQ=strQ + "second, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(4))))==1){ Names[x] = "id"; strQ=strQ + "family, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(5))))==1){ Names[x] = "id"; strQ=strQ + "egn, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(6))))==1){ Names[x] = "id"; strQ=strQ + "DATE_FORMAT(`b_date`,'%Y-%m-%d') AS bdate, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(7))))==1){ Names[x] = "id"; strQ=strQ + "gender, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(8))))==1){ Names[x] = "id"; strQ=strQ + "nomer_LK, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(9)))) == 1){Names[x] ="id"; strQ=strQ + "data_izd_LK, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(10))))==1){ Names[x] = "id"; strQ=strQ + "oblast, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(11))))==1){ Names[x] = "id"; strQ=strQ + "postcode, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(12))))==1){ Names[x] = "id"; strQ=strQ + "grad, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(13))))==1){ Names[x] = "id"; strQ=strQ + "address, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(14))))==1){ Names[x] = "id"; strQ=strQ + "telefon, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(15))))==1){ Names[x] = "id"; strQ=strQ + "mobilen, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(16))))==1){ Names[x] = "id"; strQ=strQ + "email, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(17))))==1){ Names[x] = "id"; strQ=strQ + "nomer_dogowor, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(18))))==1){ Names[x] = "id"; strQ=strQ + "DATE_FORMAT('data_naznach','%Y-%m-%d') AS nazdate, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(19))))==1){ Names[x] = "id"; strQ=strQ + "DATE_FORMAT('data_postypwane','%Y-%m-%d') AS postdate, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(20))))==1){ Names[x] = "id"; strQ=strQ + "DATE_FORMAT('data_napuskane','%Y-%m-%d') AS napudate, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(21))))==1){ Names[x] = "id"; strQ=strQ + "DATE_FORMAT('posl_den_w_osig','%Y-%m-%d') AS posddate, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(22))))==1){ Names[x] = "id"; strQ=strQ + "osnowanie_dog, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(23))))==1){ Names[x] = "id"; strQ=strQ + "srok_dog, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(24))))==1){ Names[x] = "id"; strQ=strQ + "d_st, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(25))))==1){ Names[x] = "id"; strQ=strQ + "m_st, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(26))))==1){ Names[x] = "id"; strQ=strQ + "g_st, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(27))))==1){ Names[x] = "id"; strQ=strQ + "kateg_rabotnik, ";x++;}
            if(Integer.parseInt((String.valueOf(strIniTable.charAt(28))))==1){ Names[x] = "id"; strQ=strQ + "belejki ";x++;}
            strQ=strQ + "FROM ls_main";
        }catch(Exception e1) {e1.printStackTrace();}
        str1=strIniTable;
        
    }
    
    public static void repaintFullTable(){
        initNames(iniNam);
        repaintTable();
    }
    
    public static void repaintTable(){
        jScrollPane1.remove(jTable);
        initResource();
        jScrollPane1.getViewport().add(jTable, Names);
        jScrollPane1.repaint();
        
    }
    
    protected void editRecord(){
        if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
            int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
            try{
                imakante.salary.frmAddDlajnost frmDialog = new imakante.salary.frmAddDlajnost(JFParentFrame, true, dbInternal, row);
                frmDialog.setVisible(true);
                
            } catch(Exception e){e.printStackTrace();}
        }
        
    }
    protected void searchRecord(){
        try{
            rsCus = stm.executeQuery(strQ + "WHERE nomer LIKE '%" + jTextField1.getText() + "%' AND first LIKE '%" + jTextField2.getText()+ "%' AND family LIKE '%" + jTextField3.getText()+ "%' AND egn LIKE '%" + jTextField4.getText());
            if (rsCus==null){System.out.println(" problem s rs");}
            jScrollPane1.remove(jTable);
            model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
            jTable = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(jTable, Names);
            jScrollPane1.repaint();
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    
    
    protected void newFilter(){
        
        imakante.salary.frmFilterSastav frmDialog = new imakante.salary.frmFilterSastav(JFParentFrame, true, str1);
        frmDialog.setVisible(true);
        
        
        
    }
    
    protected void newRecord(){
        
        imakante.salary.frmAddDlajnost frmDialog = new imakante.salary.frmAddDlajnost(JFParentFrame, true, dbInternal, 0);
        frmDialog.setVisible(true);
        
        
        
    }
    protected void deleteRecord(){
        try{
            if (jTable.getValueAt(jTable.getSelectedRow(), jTable.getSelectedColumn()) != null) {
                int row = (Integer) jTable.getValueAt(jTable.getSelectedRow(),0);
                System.out.println("row "+row);
                stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                        java.sql.ResultSet.CONCUR_UPDATABLE);
                stm.execute("DELETE FROM ls_main WHERE id = "+ row );
                repaintTable();
            }
        } catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        
    }
    
    
    protected static void initResource(){
        try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_SENSITIVE,
                    java.sql.ResultSet.CONCUR_UPDATABLE);
        } catch (java.sql.SQLException sqle){sqle.printStackTrace();
        }
        
        
        try{
            rsCus = stm.executeQuery(strQ);} catch (java.sql.SQLException sqle){sqle.printStackTrace();}
        
        model = new imakante.com.CustomTableModel(dbInternal, rsCus, Names);
        jTable = new imakante.com.CustomTable(model);
        
        
    }
    protected void closeResource(){
        if(rsCus!=null){ try{  rsCus.close();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}}
        if(stm!=null){ try{ stm.close();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}}
        
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
