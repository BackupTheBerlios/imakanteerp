
package nom;

import java.awt.event.KeyEvent;
import java.awt.event.*;
import imakante.com.vcomponents.*;
import javax.swing.event.*;

public class aeCountry extends iDialog{
    
    public aeCountry(imakante.com.vcomponents.iInternalFrame frame, boolean ismodal, int code, String name) {
        super(frame, ismodal);
        initComponents();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel2.setText(""+code);
        jLabel3 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton7 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton2.setEnabled(false);
        jButton3 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jPanel1.setLayout(new java.awt.GridBagLayout());

        jPanel1.setBorder(new javax.swing.border.TitledBorder(""));
        jLabel1.setText("\u041d\u043e\u043c\u0435\u0440");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(20, 20, 5, 5);
        jPanel1.add(jLabel1, gridBagConstraints);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(20, 5, 5, 20);
        jPanel1.add(jLabel2, gridBagConstraints);

        jLabel3.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0430");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        gridBagConstraints.insets = new java.awt.Insets(5, 20, 10, 5);
        jPanel1.add(jLabel3, gridBagConstraints);

        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.ipadx = 200;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.WEST;
        gridBagConstraints.insets = new java.awt.Insets(5, 5, 10, 20);
        jPanel1.add(jTextField1, gridBagConstraints);

        jPanel4.setBorder(new javax.swing.border.TitledBorder("\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f "));
        jButton4.setText("<<");
        jPanel4.add(jButton4);

        jButton5.setText("<");
        jPanel4.add(jButton5);

        jButton6.setText(">");
        jPanel4.add(jButton6);

        jButton7.setText(">>");
        jPanel4.add(jButton7);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 2;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.fill = java.awt.GridBagConstraints.HORIZONTAL;
        jPanel1.add(jPanel4, gridBagConstraints);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jButton1.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

        jButton2.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jButton2.addChangeListener(new javax.swing.event.ChangeListener() {
            public void stateChanged(javax.swing.event.ChangeEvent evt) {
                jButton2StateChanged(evt);
            }
        });

        jPanel2.add(jButton2);

        jButton3.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton3);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        pack();
    }
    // </editor-fold>//GEN-END:initComponents
    
    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        closeDialog();
    }//GEN-LAST:event_jButton3ActionPerformed
    
    private void jButton2StateChanged(javax.swing.event.ChangeEvent evt) {//GEN-FIRST:event_jButton2StateChanged
        
    }//GEN-LAST:event_jButton2StateChanged
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        
        if (evt.getKeyCode() != KeyEvent.VK_ENTER){ jButton2.setEnabled(true);}
        if (evt.getKeyCode() == KeyEvent.VK_ENTER){jTextField1.transferFocus(); }
        
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
       getOldValue();
    }//GEN-LAST:event_jButton2ActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        refresh();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables
    private nom.FrmCountry myparent;
    private int code =0;
    private String name = "";
    private String newname = "";
    private boolean isEdited = false;
    
    private void refresh(){
        
        nom.FrmCountry.refreshTable();
    }
    private void closeDialog(){
        this.dispose();
    }
    private void getOldValue(){
     jTextField1.setText(name);
         
     }

    public JButton getJButton1() {
        return jButton1;
    }

    public void setJButton1(JButton val) {
        this.jButton1 = val;
    }

    public JButton getJButton2() {
        return jButton2;
    }

    public void setJButton2(JButton val) {
        this.jButton2 = val;
    }

    public JButton getJButton3() {
        return jButton3;
    }

    public void setJButton3(JButton val) {
        this.jButton3 = val;
    }

    public JButton getJButton4() {
        return jButton4;
    }

    public void setJButton4(JButton val) {
        this.jButton4 = val;
    }

    public JButton getJButton5() {
        return jButton5;
    }

    public void setJButton5(JButton val) {
        this.jButton5 = val;
    }

    public JButton getJButton6() {
        return jButton6;
    }

    public void setJButton6(JButton val) {
        this.jButton6 = val;
    }

    public JButton getJButton7() {
        return jButton7;
    }

    public void setJButton7(JButton val) {
        this.jButton7 = val;
    }

    public JLabel getJLabel1() {
        return jLabel1;
    }

    public void setJLabel1(JLabel val) {
        this.jLabel1 = val;
    }

    public JLabel getJLabel2() {
        return jLabel2;
    }

    public void setJLabel2(JLabel val) {
        this.jLabel2 = val;
    }

    public JLabel getJLabel3() {
        return jLabel3;
    }

    public void setJLabel3(JLabel val) {
        this.jLabel3 = val;
    }

    public JPanel getJPanel1() {
        return jPanel1;
    }

    public void setJPanel1(JPanel val) {
        this.jPanel1 = val;
    }

    public JPanel getJPanel2() {
        return jPanel2;
    }

    public void setJPanel2(JPanel val) {
        this.jPanel2 = val;
    }

    public JPanel getJPanel4() {
        return jPanel4;
    }

    public void setJPanel4(JPanel val) {
        this.jPanel4 = val;
    }

    public JTextField getJTextField1() {
        return jTextField1;
    }

    public void setJTextField1(JTextField val) {
        this.jTextField1 = val;
    }

    public FrmCountry getMyparent() {
        return myparent;
    }

    public void setMyparent(FrmCountry val) {
        this.myparent = val;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int val) {
        this.code = val;
    }

    public String getName() {
        return name;
    }

    public void setName(String val) {
        this.name = val;
    }

    public String getNewname() {
        return newname;
    }

    public void setNewname(String val) {
        this.newname = val;
    }

    public boolean getIsEdited() {
        return isEdited;
    }

    public void setIsEdited(boolean val) {
        this.isEdited = val;
    }
    
    
    
    
}
