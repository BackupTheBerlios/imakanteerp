
package imakante.sales;

public class aeExchangeRate extends javax.swing.JDialog {
    
    public aeExchangeRate(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpData = new javax.swing.JPanel();
        jpMovement = new javax.swing.JPanel();
        jbFirst = new javax.swing.JButton();
        jbPrevious = new javax.swing.JButton();
        jbNext = new javax.swing.JButton();
        jbLast = new javax.swing.JButton();
        jlDate = new javax.swing.JLabel();
        jtfDate = new javax.swing.JTextField();
        jlCurrency = new javax.swing.JLabel();
        jcbCurrency = new javax.swing.JComboBox();
        jlValue = new javax.swing.JLabel();
        jtfValue = new javax.swing.JTextField();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMovement.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jbFirst.setText("<<");
        jbFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbFirstActionPerformed(evt);
            }
        });
        jbFirst.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbFirstKeyPressed(evt);
            }
        });

        jpMovement.add(jbFirst);

        jbPrevious.setText("<");
        jbPrevious.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPreviousActionPerformed(evt);
            }
        });
        jbPrevious.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbPreviousKeyPressed(evt);
            }
        });

        jpMovement.add(jbPrevious);

        jbNext.setText(">");
        jbNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNextActionPerformed(evt);
            }
        });
        jbNext.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbNextKeyPressed(evt);
            }
        });

        jpMovement.add(jbNext);

        jbLast.setText(">>");
        jbLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbLastActionPerformed(evt);
            }
        });
        jbLast.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbLastKeyPressed(evt);
            }
        });

        jpMovement.add(jbLast);

        jlDate.setText("\u0414\u0430\u0442\u0430:");

        jtfDate.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfDateFocusLost(evt);
            }
        });
        jtfDate.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfDateKeyPressed(evt);
            }
        });

        jlCurrency.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jcbCurrency.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        jlValue.setText("\u041a\u0443\u0440\u0441:");

        jtfValue.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfValueFocusLost(evt);
            }
        });
        jtfValue.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfValueKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .add(26, 26, 26)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jpDataLayout.createSequentialGroup()
                        .add(jlValue)
                        .add(186, 186, 186))
                    .add(jpDataLayout.createSequentialGroup()
                        .add(jlCurrency)
                        .add(175, 175, 175))
                    .add(jpDataLayout.createSequentialGroup()
                        .add(jlDate)
                        .add(36, 36, 36)
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jcbCurrency, 0, 159, Short.MAX_VALUE)
                            .add(jtfDate, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)
                            .add(jtfValue, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 159, Short.MAX_VALUE)))
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                        .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)))
                .add(39, 39, 39))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jpDataLayout.createSequentialGroup()
                .add(24, 24, 24)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlDate)
                    .add(jtfDate, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(20, 20, 20)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlCurrency)
                    .add(jcbCurrency, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(22, 22, 22)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlValue)
                    .add(jtfValue, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(32, 32, 32)
                .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(28, Short.MAX_VALUE))
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jbSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jbSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSaveActionPerformed(evt);
            }
        });
        jbSave.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbSaveKeyPressed(evt);
            }
        });

        jpControls.add(jbSave);

        jbUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jbUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbUndoActionPerformed(evt);
            }
        });
        jbUndo.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbUndoKeyPressed(evt);
            }
        });

        jpControls.add(jbUndo);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });
        jbClose.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbCloseKeyPressed(evt);
            }
        });

        jpControls.add(jbClose);

        getContentPane().add(jpControls, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jtfDateFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfDateFocusLost
        
    }//GEN-LAST:event_jtfDateFocusLost

    private void jtfDateKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfDateKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){  }
    }//GEN-LAST:event_jtfDateKeyPressed

    private void jtfValueFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfValueFocusLost
        
    }//GEN-LAST:event_jtfValueFocusLost

    private void jtfValueKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfValueKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbSave.doClick(); }
    }//GEN-LAST:event_jtfValueKeyPressed

    private void jbFirstKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbFirstKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbFirst.doClick(); }
    }//GEN-LAST:event_jbFirstKeyPressed

    private void jbPreviousKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbPreviousKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbPrevious.doClick(); }
    }//GEN-LAST:event_jbPreviousKeyPressed

    private void jbNextKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbNextKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbNext.doClick(); }
    }//GEN-LAST:event_jbNextKeyPressed

    private void jbLastKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbLastKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbLast.doClick(); }
    }//GEN-LAST:event_jbLastKeyPressed

    private void jbSaveKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbSaveKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbSave.doClick(); }
    }//GEN-LAST:event_jbSaveKeyPressed

    private void jbUndoKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbUndoKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbUndo.doClick(); }
    }//GEN-LAST:event_jbUndoKeyPressed

    private void jbCloseKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbCloseKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER){ jbClose.doClick(); }
    }//GEN-LAST:event_jbCloseKeyPressed

    private void jbFirstActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbFirstActionPerformed
        
    }//GEN-LAST:event_jbFirstActionPerformed

    private void jbPreviousActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPreviousActionPerformed
        
    }//GEN-LAST:event_jbPreviousActionPerformed

    private void jbNextActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNextActionPerformed
        
    }//GEN-LAST:event_jbNextActionPerformed

    private void jbLastActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbLastActionPerformed
        
    }//GEN-LAST:event_jbLastActionPerformed

    private void jbSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSaveActionPerformed
        
    }//GEN-LAST:event_jbSaveActionPerformed

    private void jbUndoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbUndoActionPerformed
        
    }//GEN-LAST:event_jbUndoActionPerformed

    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        
    }//GEN-LAST:event_jbCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JComboBox jcbCurrency;
    private javax.swing.JLabel jlCurrency;
    private javax.swing.JLabel jlDate;
    private javax.swing.JLabel jlValue;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpMovement;
    private javax.swing.JTextField jtfDate;
    private javax.swing.JTextField jtfValue;
    // End of variables declaration//GEN-END:variables
    
}
