
package imakante.com.vcomponents;

public class periodicaDialog extends imakante.com.vcomponents.iDialog {
    
    public periodicaDialog(imakante.com.vcomponents.iInternalFrame parent, boolean modal, imakante.com.CustomTable table, 
            java.sql.Connection conn, java.util.HashMap hm, String jasperFile, String title) {
        super(parent, modal, table);
        this.myParent = parent;
        this.table = table;
        setTableView(true);
        this.conn = conn;
        this.hm = hm;
        this.jasperFile = jasperFile;
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpButtons = new javax.swing.JPanel();
        jbPane = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();
        jpDataPanes = new javax.swing.JPanel();
        jpPrevious = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jpCurrent = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jpNext = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        jbPane.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbPane.setForeground(new java.awt.Color(0, 51, 153));
        jbPane.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Report Edit 2.png")));
        jbPane.setText("\u041e\u0422\u0427\u0415\u0422");
        jbPane.setMaximumSize(new java.awt.Dimension(100, 25));
        jbPane.setMinimumSize(new java.awt.Dimension(100, 25));
        jbPane.setPreferredSize(new java.awt.Dimension(100, 25));
        jbPane.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPaneActionPerformed(evt);
            }
        });

        jpButtons.add(jbPane);

        jbPrint.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbPrint.setForeground(new java.awt.Color(0, 51, 153));
        jbPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jbPrint.setText("\u041f\u0415\u0427\u0410\u0422");
        jbPrint.setEnabled(false);
        jbPrint.setMaximumSize(new java.awt.Dimension(100, 25));
        jbPrint.setMinimumSize(new java.awt.Dimension(100, 25));
        jbPrint.setPreferredSize(new java.awt.Dimension(100, 25));
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });

        jpButtons.add(jbPrint);

        jbQuit.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbQuit.setForeground(new java.awt.Color(0, 51, 153));
        jbQuit.setText("\u0417\u0410\u0422\u0412\u041e\u0420\u0418");
        jbQuit.setMaximumSize(new java.awt.Dimension(100, 25));
        jbQuit.setMinimumSize(new java.awt.Dimension(100, 25));
        jbQuit.setPreferredSize(new java.awt.Dimension(100, 25));
        jbQuit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbQuitActionPerformed(evt);
            }
        });

        jpButtons.add(jbQuit);

        jpDataPanes.setLayout(new java.awt.BorderLayout());

        jpPrevious.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0420\u0435\u0437\u044e\u043c\u0435 \u043d\u0430 \u043f\u0440\u0435\u0434\u0438\u0448\u0435\u043d \u043f\u0435\u0440\u0438\u043e\u0434", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel1.setText("\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0437\u0430 \u043f\u0440\u0435\u0434\u0445\u043e\u0434\u043d\u0438\u044f \u043f\u0435\u0440\u0438\u043e\u0434:");
        jpPrevious.add(jLabel1);

        jTextField1.setColumns(15);
        jpPrevious.add(jTextField1);

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 11));
        jpPrevious.add(jLabel3);

        jpDataPanes.add(jpPrevious, java.awt.BorderLayout.NORTH);

        jpCurrent.setLayout(new java.awt.BorderLayout());

        jpCurrent.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0422\u044a\u0440\u0441\u0435\u043d \u043f\u0435\u0440\u0438\u043e\u0434", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 11), new java.awt.Color(0, 51, 153)));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.LOWERED));
        jpCurrent.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jpDataPanes.add(jpCurrent, java.awt.BorderLayout.CENTER);

        jpNext.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0420\u0435\u0437\u044e\u043c\u0435 \u043d\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449 \u043f\u0435\u0440\u0438\u043e\u0434", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u0421\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0437\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043f\u0435\u0440\u0438\u043e\u0434 (\u0434\u043e \u0434\u043d\u0435\u0441):");
        jpNext.add(jLabel2);

        jTextField2.setColumns(15);
        jpNext.add(jTextField2);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11));
        jpNext.add(jLabel4);

        jpDataPanes.add(jpNext, java.awt.BorderLayout.SOUTH);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpDataPanes, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 568, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jpButtons, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 568, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .add(jpDataPanes, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 418, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jpButtons, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jbPaneActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPaneActionPerformed
        if (isTableView())
            showTable();
        else 
            showReport();
    }//GEN-LAST:event_jbPaneActionPerformed

    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        
    }//GEN-LAST:event_jbPrintActionPerformed

    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbQuitActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private javax.swing.JButton jbPane;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbQuit;
    private javax.swing.JPanel jpButtons;
    private javax.swing.JPanel jpCurrent;
    private javax.swing.JPanel jpDataPanes;
    private javax.swing.JPanel jpNext;
    private javax.swing.JPanel jpPrevious;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iInternalFrame myParent;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn = null;
    private java.util.HashMap hm = null;
    private String jasperFile = null;
    private String title;
    
    private boolean tableView = true;
    
    private void showTable() {
        // TODO Statement for previous period
        
        // TODO Table for current period
        
        // TODO Statement for netxt period
        
        // TODO Buttons readyness
    }
    
    private void showReport() {
        
    }
    
    public boolean isTableView() {
        return tableView;
    }

    public void setTableView(boolean tableView) {
        this.tableView = tableView;
    }
    
}
