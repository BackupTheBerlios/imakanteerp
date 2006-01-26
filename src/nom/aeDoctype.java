
package nom;

public class aeDoctype extends imakante.com.vcomponents.iDialog {
    
    public aeDoctype(imakante.com.vcomponents.iFrame parent, boolean modal) {
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
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jlPrintName = new javax.swing.JLabel();
        jtfPrintName = new javax.swing.JTextField();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430: \u0422\u0438\u043f\u043e\u0432\u0435 \u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMovement.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
        jbFirst.setText("<<");
        jbFirst.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbFirstActionPerformed(evt);
            }
        });

        jpMovement.add(jbFirst);

        jbPrevious.setText("<");
        jbPrevious.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPreviousActionPerformed(evt);
            }
        });

        jpMovement.add(jbPrevious);

        jbNext.setText(">");
        jbNext.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNextActionPerformed(evt);
            }
        });

        jpMovement.add(jbNext);

        jbLast.setText(">>");
        jbLast.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbLastActionPerformed(evt);
            }
        });

        jpMovement.add(jbLast);

        jlName.setText("\u0418\u043c\u0435:");

        jlPrintName.setText("\u041f\u0435\u0447\u0430\u0442\u043d\u043e \u0438\u043c\u0435:");

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .add(49, 49, 49)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                                .add(jlPrintName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .add(21, 21, 21))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                                .add(jlName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 23, Short.MAX_VALUE)
                                .add(66, 66, 66)))
                        .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jtfName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                            .add(jtfPrintName, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)))
                    .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 295, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(52, Short.MAX_VALUE))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataLayout.createSequentialGroup()
                .add(29, 29, 29)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlName)
                    .add(jtfName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(20, 20, 20)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jlPrintName)
                    .add(jtfPrintName, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 38, Short.MAX_VALUE)
                .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(24, 24, 24))
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jbSave.setText("\u0421\u044a\u0445\u0440\u0430\u043d\u0438");
        jbSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSaveActionPerformed(evt);
            }
        });

        jpControls.add(jbSave);

        jbUndo.setText("\u041f\u0440\u0435\u0434\u0438\u0448\u043d\u0438");
        jbUndo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbUndoActionPerformed(evt);
            }
        });

        jpControls.add(jbUndo);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });

        jpControls.add(jbClose);

        getContentPane().add(jpControls, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents

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
    private javax.swing.JLabel jlName;
    private javax.swing.JLabel jlPrintName;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpMovement;
    private javax.swing.JTextField jtfName;
    private javax.swing.JTextField jtfPrintName;
    // End of variables declaration//GEN-END:variables
    
}
