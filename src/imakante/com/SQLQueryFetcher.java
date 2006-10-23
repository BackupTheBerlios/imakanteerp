
package imakante.com;

public class SQLQueryFetcher extends imakante.com.vcomponents.iDialog  {
    
    public SQLQueryFetcher(imakante.com.vcomponents.iFrame parent, boolean modal) {
        super(parent, modal);
        myFrame = parent;
        prepareConn();
        prepareStm();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jtfQuery = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jPanel3 = new javax.swing.JPanel();
        jbExecute = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("\u0417\u0430\u044f\u0432\u043a\u0430 \u043a\u044a\u043c \u0431\u0430\u0437\u0430\u0442\u0430 \u0434\u0430\u043d\u043d\u0438");
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0417\u0430\u044f\u0432\u043a\u0430"));
        jtfQuery.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jtfQueryFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jtfQueryFocusLost(evt);
            }
        });
        jtfQuery.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfQueryKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jtfQuery, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 520, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(jtfQuery, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041e\u0442\u0433\u043e\u0432\u043e\u0440"));
        jTextArea1.setColumns(20);
        jTextArea1.setEditable(false);
        jTextArea1.setFont(new java.awt.Font("Courier", 0, 11));
        jTextArea1.setRows(5);
        jTextArea1.setFocusable(false);
        jScrollPane1.setViewportView(jTextArea1);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 520, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 145, Short.MAX_VALUE)
                .addContainerGap())
        );

        jbExecute.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbExecute.setForeground(new java.awt.Color(0, 51, 153));
        jbExecute.setText("\u0418\u0417\u041f\u042a\u041b\u041d\u0418");
        jbExecute.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbExecuteActionPerformed(evt);
            }
        });
        jbExecute.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jbExecuteKeyPressed(evt);
            }
        });

        jPanel3.add(jbExecute);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 552, Short.MAX_VALUE)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-560)/2, (screenSize.height-317)/2, 560, 317);
    }// </editor-fold>//GEN-END:initComponents

    private void jtfQueryFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfQueryFocusGained
        jtfQuery.selectAll();
    }//GEN-LAST:event_jtfQueryFocusGained

    private void jtfQueryFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jtfQueryFocusLost
        
    }//GEN-LAST:event_jtfQueryFocusLost

    private void jtfQueryKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfQueryKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) 
            jtfQuery.transferFocus();
    }//GEN-LAST:event_jtfQueryKeyPressed

    private void jbExecuteKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jbExecuteKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) 
            jbExecute.doClick();
    }//GEN-LAST:event_jbExecuteKeyPressed

    private void jbExecuteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbExecuteActionPerformed
        executeIt();
    }//GEN-LAST:event_jbExecuteActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JButton jbExecute;
    private javax.swing.JTextField jtfQuery;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private java.sql.Connection conn;
    private java.sql.Statement stm;
    
    private String QUERY = "";
    
    private void executeIt() {
        this.setQUERY(this.jtfQuery.getText());
        try {
            this.getStm().execute(this.getQUERY());
            this.jTextArea1.setText(getStm().getWarnings().toString());
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
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
    
    public String getQUERY() {
        return QUERY;
    }
    
    public void setQUERY(String QUERY) {
        this.QUERY = QUERY;
    }
    
}
