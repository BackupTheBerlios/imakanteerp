
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
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jpControls = new javax.swing.JPanel();
        jbSave = new javax.swing.JButton();
        jbUndo = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jpData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpData.setFont(new java.awt.Font("Tahoma", 0, 11));
        jpMovement.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041d\u0430\u0432\u0438\u0433\u0430\u0446\u0438\u044f"));
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

        jLabel1.setText("\u0414\u0430\u0442\u0430:");

        jLabel2.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jLabel3.setText("\u041a\u0443\u0440\u0441:");

        org.jdesktop.layout.GroupLayout jpDataLayout = new org.jdesktop.layout.GroupLayout(jpData);
        jpData.setLayout(jpDataLayout);
        jpDataLayout.setHorizontalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .add(56, 56, 56)
                .add(jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel3)
                    .add(jLabel2)
                    .add(jLabel1)
                    .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 299, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(41, Short.MAX_VALUE))
        );
        jpDataLayout.setVerticalGroup(
            jpDataLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.LEADING, jpDataLayout.createSequentialGroup()
                .add(40, 40, 40)
                .add(jLabel1)
                .add(24, 24, 24)
                .add(jLabel2)
                .add(35, 35, 35)
                .add(jLabel3)
                .add(33, 33, 33)
                .add(jpMovement, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(30, Short.MAX_VALUE))
        );
        getContentPane().add(jpData, java.awt.BorderLayout.CENTER);

        jpControls.setFont(new java.awt.Font("Tahoma", 0, 11));
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
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbFirst;
    private javax.swing.JButton jbLast;
    private javax.swing.JButton jbNext;
    private javax.swing.JButton jbPrevious;
    private javax.swing.JButton jbSave;
    private javax.swing.JButton jbUndo;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpData;
    private javax.swing.JPanel jpMovement;
    // End of variables declaration//GEN-END:variables
    
}
