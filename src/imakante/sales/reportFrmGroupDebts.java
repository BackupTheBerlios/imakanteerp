
package imakante.sales;

public class reportFrmGroupDebts extends imakante.com.vcomponents.iInternalFrame {
    
    public reportFrmGroupDebts(String title, imakante.com.vcomponents.iFrame frame, int levelx) {
        super(title);
        myFrame = frame;
        this.levelx = levelx;
        prepareConn();
        prepareStm();
        initComponents();
//        this.jlLevelx.setText("" + this.levelx);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jbClose = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0417\u0410\u0414\u042a\u041b\u0416\u0415\u041d\u0418\u042f \u041d\u0410 \u0413\u0420\u0423\u041f\u0410 \u041e\u0422 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 390, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 235, Short.MAX_VALUE)
        );

        jbClose.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbClose.setForeground(new java.awt.Color(0, 51, 153));
        jbClose.setText("\u0417\u0410\u0422\u0412\u041e\u0420\u0418");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });

        jPanel2.add(jbClose);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 394, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton jbClose;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private  java.sql.Connection conn;
    private  java.sql.Statement stm;
    private static boolean isFromF7 = false;
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
    private org.jdesktop.swingx.JXDatePicker dp = new org.jdesktop.swingx.JXDatePicker();
    
    private int levelx = 3;
    
    
    
    private void prepareConn() {
        try {
            setConn(myFrame.getConn());
            if(getConn() == null)
                System.out.println("CAN NOT ESTABLISH CONNECTION!");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareStm() {
        try {
            setStm(getConn().createStatement());
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 255, 255), null));
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    public java.sql.Statement getStm() {
        return stm;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stm = stm;
    }
    
    private int getColumnIndex(imakante.com.CustomTable tab, String in) {
        int count = tab.getColumnCount();
        for(int i = 0; i < count; i++) {
            if(tab.getColumnName(i).equals(in))
                return i;
        }
        return 0;
    }
    
    private void HideColumns(imakante.com.CustomTable tab, int col) {
        tab.getColumnModel().getColumn(col).setMaxWidth(0);
        tab.getColumnModel().getColumn(col).setMinWidth(0);
        tab.getTableHeader().getColumnModel().getColumn(col).setMaxWidth(0);
        tab.getTableHeader().getColumnModel().getColumn(col).setMinWidth(0);
    }
    
}
