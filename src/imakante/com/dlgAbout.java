

package imakante.com;

public class dlgAbout extends javax.swing.JDialog {
 
    public dlgAbout(java.awt.Frame parent, boolean modal, int nModule, String sModuleInfo) {
        super(parent, modal);
        initComponents();
        // Set module and extra info
        jInfoPane.setText(sModuleInfo);
        jModuleLabel.setText("Име на модула");
    }
    
 
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jInfoPane = new javax.swing.JTextPane();
        jModuleLabel = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();

        getContentPane().setLayout(new java.awt.GridBagLayout());

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Imakante ERP");
        setResizable(false);
        jLabel1.setIcon(new javax.swing.ImageIcon(""));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridheight = 3;
        gridBagConstraints.ipady = -1;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(14, 12, 0, 0);
        getContentPane().add(jLabel1, gridBagConstraints);

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 18));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("\u041c\u043e\u0434\u0443\u043b");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 0;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 243;
        gridBagConstraints.ipady = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(16, 3, 0, 0);
        getContentPane().add(jLabel2, gridBagConstraints);

        jInfoPane.setBackground(javax.swing.UIManager.getDefaults().getColor("Button.background"));
        jInfoPane.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        jInfoPane.setEditable(false);
        jInfoPane.setFont(new java.awt.Font("Microsoft Sans Serif", 0, 14));
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 3;
        gridBagConstraints.gridwidth = 4;
        gridBagConstraints.ipadx = 388;
        gridBagConstraints.ipady = 186;
        gridBagConstraints.insets = new java.awt.Insets(10, 12, 0, 12);
        getContentPane().add(jInfoPane, gridBagConstraints);

        jModuleLabel.setFont(new java.awt.Font("Times New Roman", 1, 18));
        jModuleLabel.setForeground(new java.awt.Color(0, 51, 255));
        jModuleLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jModuleLabel.setText("\u0420\u0435\u0430\u043b\u0438\u0437\u0430\u0446\u0438\u044f");
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.gridwidth = 2;
        gridBagConstraints.ipadx = 204;
        gridBagConstraints.ipady = 6;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTHWEST;
        gridBagConstraints.insets = new java.awt.Insets(14, 3, 0, 0);
        getContentPane().add(jModuleLabel, gridBagConstraints);

        jButton1.setText("\u0414\u043e\u0431\u0440\u0435");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 1;
        gridBagConstraints.gridy = 4;
        gridBagConstraints.ipadx = 43;
        gridBagConstraints.ipady = 7;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(16, 41, 16, 0);
        getContentPane().add(jButton1, gridBagConstraints);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-421)/2, (screenSize.height-390)/2, 421, 390);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        dispose();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    /**
     * @param args the command line arguments
     */
  
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JTextPane jInfoPane;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jModuleLabel;
    // End of variables declaration//GEN-END:variables
    
}
