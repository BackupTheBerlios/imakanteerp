

package imakante.sales;

import java.awt.event.KeyEvent;

public class frmConn_Sales extends javax.swing.JDialog {
    
    public frmConn_Sales(javax.swing.JFrame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    private void check_processIniFile(){
        try{
            java.io.BufferedReader in = new java.io.BufferedReader(new java.io.InputStreamReader(new
                    java.io.FileInputStream("c:/imakante/sales.ini"), "cp1251"));
            if (in == null){
                
                
                
            } else {
                while ((lineStr = in.readLine()) != null) {
                    
                    i++;
                    fint = fint + lineStr;
                }
                names =fint.split("!");
                sd = names.length;
                
            }}catch(java.io.IOException iox){}
        
    }
    
    public void makeConnection(){
        
        try{
            Class.forName(lDBDriver);
            dbConn = java.sql.DriverManager.getConnection(lDBSource,lDBUser ,lDBPass);
            java.sql.Statement stm = dbConn.createStatement();
        } catch(ClassNotFoundException e)  {
           
            e.printStackTrace();
           
        } catch(java.sql.SQLException e){
            
            e.printStackTrace();
         
        }
    }
    public void makeAcc(){
        int selectedIntCombo = jComboBase.getSelectedIndex();
        lDBDriver = names[(selectedIntCombo*3) + 1];
        lDBSource =  names[(selectedIntCombo*3) + 2];
        lDBUser = jTextField_user.getText();
        lDBPass = new String(jPasswordField_pass.getPassword());
        makeConnection();
        parent.setDbConn(dbConn); // set active connection
        parent.setDbDriver(lDBDriver); // set driver
        parent.setDbURL(lDBSource); // set db URL
        parent.setDbUser(lDBUser); // set current user
        parent.setDbPass(lDBPass); // set pass
        String firmName = (String)jComboBase.getSelectedItem(); // set relative firm name
        this.dispose();
        
    }
    
    public void exitApp(){
        try {
            dbConn.close();
        }catch(java.sql.SQLException sqle){sqle.printStackTrace();}
        System.exit(0);
        
    }
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jComboBase = new javax.swing.JComboBox();
        jTextField_user = new javax.swing.JTextField();
        jPasswordField_pass = new javax.swing.JPasswordField();
        jPanel3 = new javax.swing.JPanel();
        jButton_in = new javax.swing.JButton();
        jButton_out = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.EtchedBorder());
        jPanel2.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBorder(new javax.swing.border.TitledBorder(new javax.swing.border.EtchedBorder(), "\u041f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438 \u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430 "));
        jLabel1.setText("\u0411\u0430\u0437\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(30, 30, 5, 5);
        jPanel2.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 5, 5);
        jPanel2.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u041f\u0430\u0440\u043e\u043b\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 30, 20, 5);
        jPanel2.add(jLabel3, gridBagConstraints);

        jComboBase.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jComboBaseKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 200;
        gridBagConstraints.insets = new java.awt.Insets(30, 5, 5, 30);
        jPanel2.add(jComboBase, gridBagConstraints);

        jTextField_user.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField_userKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.ipadx = 200;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 5, 30);
        jPanel2.add(jTextField_user, gridBagConstraints);

        jPasswordField_pass.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPasswordField_passKeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 30);
        jPanel2.add(jPasswordField_pass, gridBagConstraints);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton_in.setFont(new java.awt.Font("Tahoma", 1, 14));
        jButton_in.setText("\u0412\u0445\u043e\u0434");
        jButton_in.setPreferredSize(new java.awt.Dimension(80, 27));
        jButton_in.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton_inActionPerformed(evt);
            }
        });
        jButton_in.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton_inKeyPressed(evt);
            }
        });

        jPanel3.add(jButton_in);

        jButton_out.setFont(new java.awt.Font("Tahoma", 1, 14));
        jButton_out.setText("\u0418\u0437\u0445\u043e\u0434");
        jButton_out.setPreferredSize(new java.awt.Dimension(80, 27));
        jButton_out.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton_outActionPerformed(evt);
            }
        });
        jButton_out.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButton_outKeyPressed(evt);
            }
        });

        jPanel3.add(jButton_out);

        jPanel1.add(jPanel3, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton_outActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton_outActionPerformed
        exitApp(); // exit application
    }//GEN-LAST:event_jButton_outActionPerformed
    
    private void jButton_inActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton_inActionPerformed
         makeAcc();  // try to make connection and load main form
    }//GEN-LAST:event_jButton_inActionPerformed
    
    private void jButton_outKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton_outKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton_out.doClick();} // do click on "Enter"
    }//GEN-LAST:event_jButton_outKeyPressed
    
    private void jButton_inKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton_inKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton_in.doClick();} // do click on "Enter"
    }//GEN-LAST:event_jButton_inKeyPressed
    
    private void jPasswordField_passKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordField_passKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jPasswordField_pass.transferFocus();} // transfer focus on "Enter"
    }//GEN-LAST:event_jPasswordField_passKeyPressed
    
    private void jComboBaseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jComboBaseKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jComboBase.transferFocus();}  // transfer focus on "Enter"
    }//GEN-LAST:event_jComboBaseKeyPressed
    
    private void jTextField_userKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField_userKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField_user.transferFocus();}  // transfer focus on "Enter"
    }//GEN-LAST:event_jTextField_userKeyPressed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton_in;
    private javax.swing.JButton jButton_out;
    private javax.swing.JComboBox jComboBase;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPasswordField jPasswordField_pass;
    private javax.swing.JTextField jTextField_user;
    // End of variables declaration//GEN-END:variables
    private sales_main parent = null;
    private String lDBDriver = null;
    private String lDBSource = null;
    private String lDBUser = null;
    private String lDBPass =null;
    private java.sql.Connection dbConn;
    private java.sql.Statement stm;
    private java.sql.ResultSet rs;
    private int sd;
    private String[] drivers;
    private String[] names, urls;
    private String fint ="",lineStr;
    private java.awt.Dimension dim;
    private int i, x, y;
}
