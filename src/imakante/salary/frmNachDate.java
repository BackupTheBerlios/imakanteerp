
package imakante.salary;

import java.awt.event.KeyEvent;

public class frmNachDate extends javax.swing.JDialog {
    
    public frmNachDate(java.awt.Frame parent, boolean modal, java.sql.Connection conn) {
        super(parent, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0417\u0430\u0434\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u043f\u044a\u0440\u0432\u043e\u043d\u0430\u0447\u0430\u043b\u043d\u0430 \u0434\u0430\u0442\u0430");
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(new javax.swing.border.BevelBorder(javax.swing.border.BevelBorder.RAISED, null, new java.awt.Color(0, 102, 204), null, null));
        jPanel2.setLayout(new java.awt.GridBagLayout());

        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setText("\u041c\u0435\u0441\u0435\u0446");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.insets = new java.awt.Insets(30, 30, 10, 10);
        jPanel2.add(jLabel1, gridBagConstraints);

        jLabel2.setText("\u0413\u043e\u0434\u0438\u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.insets = new java.awt.Insets(10, 30, 20, 10);
        jPanel2.add(jLabel2, gridBagConstraints);

        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField1FocusLost(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(30, 10, 10, 30);
        jPanel2.add(jTextField1, gridBagConstraints);

        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField2FocusLost(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 20, 30);
        jPanel2.add(jTextField2, gridBagConstraints);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u0417\u0430\u043f\u0430\u0437\u0438");
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

        jPanel1.add(jPanel3, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        if(isNumber(jTextField2.getText()) == false){jTextField2.requestFocus();jTextField2.setBackground(java.awt.Color.PINK);}else{jTextField2.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jTextField2FocusLost
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        if(isNumber(jTextField1.getText()) == false){jTextField1.requestFocus();jTextField1.setBackground(java.awt.Color.PINK);}else{jTextField1.setBackground(java.awt.Color.WHITE);}
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick();}
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField1.transferFocus();}
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        insertValuesDb();
        this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables
    
    java.sql.Connection dbInternal;
    java.sql.Statement stm;
    
    protected boolean isNumber(String str_num){
        boolean is_number = true;
        try{
            int y = Integer.parseInt(str_num);}catch(NumberFormatException nfe){is_number = false; return is_number; }
        return is_number;
    }
    
    private int transform2int(String str){
        int val = 0;
        try {}catch(NumberFormatException nfe){}
        return val;
    }
    
    private void insertValuesDb(){
        
        try{
            
            stm = dbInternal.createStatement();
            stm.execute("INSERT INTO ls_monthpar (pmonth, pyear) VALUES ('"+transform2int(jTextField1.getText())+ ", "+transform2int(jTextField2.getText()) +")");
            
        }catch(java.sql.SQLException sqle){
            imakante.salary.salary_main.setMonth(transform2int(jTextField1.getText()));
            imakante.salary.salary_main.setYear(transform2int(jTextField2.getText()));
        }
        
    }
    
    
    
}
