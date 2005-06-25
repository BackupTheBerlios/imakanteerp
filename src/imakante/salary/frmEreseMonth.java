
package imakante.salary;

import java.awt.event.KeyEvent;
import javax.swing.JOptionPane;


public class frmEreseMonth extends javax.swing.JDialog {
    
    
    public frmEreseMonth(java.awt.Frame parent, boolean modal, java.sql.Connection dbCon) {
        super(parent, modal);
        dbInternal = dbCon;
        initComponents();
        java.awt.Dimension dim = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        int   x = (((dim.width)-(this.getSize().width))/2);
        int   y = (((dim.height)-(this.getSize().height))/2);
        this.setLocation(x, y);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jTextField1 = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel2.setBorder(new javax.swing.border.EtchedBorder());
        jLabel1.setForeground(new java.awt.Color(255, 51, 51));
        jLabel1.setText("\u0422\u0430\u0437\u0438 \u0444\u043e\u0440\u043c\u0430 \u043d\u0443\u043b\u0438\u0440\u0430 \u043e\u043a\u0430\u0437\u0430\u043d\u0438\u0442\u0435 \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438 \u0437\u0430 \u043c\u0435\u0441\u0435\u0446 \u0438 \u0433\u043e\u0434\u0438\u043d\u0430 \u0432 \u0440\u0435\u0437\u0443\u043b\u0442\u0430\u0442\u043d\u0430\u0442\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430!!!");
        jPanel2.add(jLabel1);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(new javax.swing.border.EtchedBorder());
        jButton1.setText("\u0418\u0437\u043f\u044a\u043b\u043d\u0438");
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

        jButton2.setText("\u041e\u0422\u041a\u0410\u0417 \u041e\u0422 \u041e\u041f\u0415\u0420\u0410\u0426\u0418\u042f\u0422\u0410");
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

        jPanel3.add(jButton2);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        jPanel4.setLayout(new java.awt.GridBagLayout());

        jPanel4.setBorder(new javax.swing.border.EtchedBorder());
        jLabel2.setText("\u043c\u0435\u0441\u0435\u0446");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel4.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0433\u043e\u0434\u0438\u043d\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 20, 5);
        jPanel4.add(jLabel3, gridBagConstraints);

        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 20, 20);
        jPanel4.add(jTextField2, gridBagConstraints);

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.ipadx = 50;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 0, 20);
        jPanel4.add(jTextField1, gridBagConstraints);

        getContentPane().add(jPanel4, java.awt.BorderLayout.CENTER);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField1.transferFocus();}
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jTextField2.transferFocus();}
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jButton2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton2KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton2.doClick(); }
    }//GEN-LAST:event_jButton2KeyPressed
    
    private void jButton1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButton1KeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){ jButton1.doClick(); }
    }//GEN-LAST:event_jButton1KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        try{
            stm = dbInternal.createStatement(java.sql.ResultSet.TYPE_SCROLL_INSENSITIVE,java.sql.ResultSet.CONCUR_UPDATABLE);
            stm.executeUpdate("UPDATE lsresult SET lsresult.pyear = NULL, pmonth = NULL WHERE pyear = " + jTextField2.getText()  +  " AND pmonth = " + jTextField1.getText());
        }catch(java.sql.SQLException sqle){
            sqle.printStackTrace();
            JOptionPane.showMessageDialog(null,"\u0413\u0440\u0435\u0448\u043a\u0430 \u043f\u0440\u0438 \u0438\u0437\u043f\u0430\u043b\u043d\u0435\u043d\u0438\u0435 \u043d\u0430 \u043e\u043f\u0435\u0440\u0446\u0438\u044f",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.INFORMATION_MESSAGE);
            
        }
        JOptionPane.showMessageDialog(null,"\u0417\u0410\u041f\u0418\u0421\u042a\u0422 \u0415 \u041f\u0420\u041e\u041c\u0415\u041d\u0415\u041d",
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415",JOptionPane.INFORMATION_MESSAGE);
        dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables
    public java.sql.Connection dbInternal;
    public java.sql.Statement stm;
}
