
package imakante.sales;

public class FormChooser extends javax.swing.JDialog {
    
    public FormChooser(imakante.com.vcomponents.iFrame parent, boolean modal, String form, javax.swing.JDesktopPane pane) {
        super(parent, modal);
        myParent = parent;
        myDesk = pane;
        chosenForm = form;
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jbOld = new javax.swing.JButton();
        jbNew = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0418\u0437\u0431\u043e\u0440 \u043d\u0430 \u0444\u043e\u0440\u043c\u0430");
        setResizable(false);
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
        jbOld.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbOld.setText("\u0421\u0422\u0410\u041d\u0414\u0410\u0420\u0422\u041d\u0410");
        jbOld.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbOldActionPerformed(evt);
            }
        });
        jbOld.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbOldKeyPressed(evt);
            }
        });

        jbNew.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbNew.setText("\u041d\u041e\u0412\u0410");
        jbNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNewActionPerformed(evt);
            }
        });
        jbNew.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbNewKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jbOld)
                    .add(jbNew))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1Layout.linkSize(new java.awt.Component[] {jbNew, jbOld}, org.jdesktop.layout.GroupLayout.HORIZONTAL);

        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jbOld)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jbNew)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-165)/2, (screenSize.height-127)/2, 165, 127);
    }// </editor-fold>//GEN-END:initComponents

    private void jbOldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbOldActionPerformed
        loadOldForm();
        this.dispose();
    }//GEN-LAST:event_jbOldActionPerformed

    private void jbOldKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbOldKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) jbOld.doClick();
    }//GEN-LAST:event_jbOldKeyPressed

    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        loadNewForm();
        this.dispose();
    }//GEN-LAST:event_jbNewActionPerformed

    private void jbNewKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbNewKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) jbNew.doClick();
    }//GEN-LAST:event_jbNewKeyPressed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbOld;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myParent;
    private javax.swing.JDesktopPane myDesk;
    private String chosenForm;
    
    private void loadOldForm() {
        if (chosenForm.equals("reportFrmDebts")) {
            imakante.sales.reportFrmDebts debts = 
                    new imakante.sales.reportFrmDebts("\u0417\u0410\u0414\u042a\u041b\u0416\u0415\u041d\u0418\u042f", myParent);
            myDesk.add(debts);
            debts.setVisible(true);
        }
        if (chosenForm.equals("reportFrmPayments")) {
            imakante.sales.reportFrmPayments payments = 
                    new imakante.sales.reportFrmPayments("\u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u041d\u0418\u042f", myParent);
            myDesk.add(payments);
            payments.setVisible(true);
        }
    }
    
    private void loadNewForm() {
        // TODO da se implementira forma s ednowremenna wyzmojnost za tyrsene po kod i ime na kontragenta
        // TODO da se implementira funkcionalnost AutoComplete za tyrse6tite tekstowi poleta
        System.out.println("Formata s nowiqt tip funkcionalnost se razrabotwa!");
        imakante.com.MessagePane.NotYetImplemented();
    }
    
}
