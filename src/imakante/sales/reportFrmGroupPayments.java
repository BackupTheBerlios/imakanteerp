
package imakante.sales;

public class reportFrmGroupPayments extends imakante.com.vcomponents.iInternalFrame {
    
    public reportFrmGroupPayments(String title, imakante.com.vcomponents.iFrame frame, int levelx) {
        super(title);
        myFrame = frame;
        this.levelx = levelx;
        
        initComponents();
        this.jlLevelx.setText("" + this.levelx);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel5 = new javax.swing.JPanel();
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel4 = new javax.swing.JLabel();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jPanel6 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox();
        jlLevelx = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 100, Short.MAX_VALUE)
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 100, Short.MAX_VALUE)
        );

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u041d\u0418\u042f \u041d\u0410 \u0413\u0420\u0423\u041f\u0410 \u041e\u0422 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422\u0418");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442\u0438"));
        jLabel1.setText("\u041e\u0422");

        jLabel2.setText("\u0414\u041e");

        jTextField1.setBackground(new java.awt.Color(204, 204, 255));
        jTextField1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField1FocusLost(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jTextField2.setBackground(new java.awt.Color(204, 204, 255));
        jTextField2.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jTextField2FocusLost(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 120, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 20, Short.MAX_VALUE)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 120, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel2)
                    .add(jLabel1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041f\u0435\u0440\u0438\u043e\u0434"));
        jLabel3.setText("\u041e\u0422");

        jLabel4.setText("\u0414\u041e");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jLabel4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel4)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0422\u0438\u043f \u0440\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u043d\u0435"));
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "\u041a\u0410\u0421\u041e\u0412\u041e (\u043f\u043e \u041f\u0440\u0438\u0445\u043e\u0434\u043d\u0438 \u043e\u0440\u0434\u0435\u0440\u0438)", "\u0411\u0410\u041d\u041a\u041e\u0412\u041e (\u043f\u043e \u041f\u043b\u0430\u0442\u0435\u0436\u043d\u0438 \u043d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f)" }));

        org.jdesktop.layout.GroupLayout jPanel6Layout = new org.jdesktop.layout.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .add(jComboBox1, 0, 298, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel6Layout.createSequentialGroup()
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jlLevelx.setFont(new java.awt.Font("Tahoma", 1, 10));
        jlLevelx.setForeground(new java.awt.Color(0, 51, 153));

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(jlLevelx, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 17, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .add(119, 119, 119))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jlLevelx)
                .addContainerGap())
        );

        jButton1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jButton1.setForeground(new java.awt.Color(0, 51, 153));
        jButton1.setText("\u0413\u0415\u041d\u0415\u0420\u0418\u0420\u0410\u0419");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel2.add(jButton1);

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
            .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 355, Short.MAX_VALUE)
            .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 355, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 19, Short.MAX_VALUE)
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        setBounds(80, 60, 365, 318);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        if (this.jTextField1.getText().equals("") || this.jTextField2.getText().equals(""))
            imakante.com.MessagePane.MissingData();
        else
            executeReport();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        
    }//GEN-LAST:event_jTextField2KeyPressed

    private void jTextField2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusLost
        
    }//GEN-LAST:event_jTextField2FocusLost

    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        
    }//GEN-LAST:event_jTextField2FocusGained

    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        
    }//GEN-LAST:event_jTextField1KeyPressed

    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        
    }//GEN-LAST:event_jTextField1FocusLost

    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        
    }//GEN-LAST:event_jTextField1FocusGained

    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    private javax.swing.JButton jbClose;
    private javax.swing.JLabel jlLevelx;
    // End of variables declaration//GEN-END:variables
    
    private imakante.com.vcomponents.iFrame myFrame;
    private  java.sql.Connection conn;
    private  java.sql.Statement stm;
    private static boolean isFromF7 = false;
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
    private org.jdesktop.swingx.JXDatePicker dp = new org.jdesktop.swingx.JXDatePicker();
    private int buffCode = 0;
    private String buffName = "";
    private int idContragent = 0;
    private int codeContragent = 0;
    private String nameContragent = "";
    private String startOfPeriod = "";
    private String endOfPeriod = "";
    private int IDTransfer = 0;
    private int levelx = 3;
    
    private String contragentsList =
            "SELECT nc.id_contragent, nc.code_contragent, nc.name_n_contragent " +
            "FROM n_contragent nc ";
    
    private String contragentById =
            "SELECT nc.code_contragent, nc.name_n_contragent FROM n_contragent nc " +
            "WHERE nc.id_contragent = ";
    
    private void executeReport() {
        
    }
    
    
    
    private void getContragent() {
        String filter;
        if (obtainInputType())
            filter = "WHERE nc.code_contragent LIKE '%";
        else
            filter = "WHERE nc.name_n_contragent LIKE '%";
        String contragents = contragentsList + filter + jTextField1.getText() + "%';";
        java.sql.ResultSet rsC;
        imakante.com.CustomTableModel modelC;
        imakante.com.CustomTable tableC;
        String[] names = { "id", "\u041A\u043E\u0434", "\u0418\u043C\u0435" };
        try {
            rsC = getStm().executeQuery(contragents);
            modelC = new imakante.com.CustomTableModel(getConn(), rsC, names);
            tableC = new imakante.com.CustomTable(modelC);
            HideColumns(tableC, getColumnIndex(tableC, "id"));
            tableC.setEditingRow(0);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, tableC,
                    "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u041A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442",
                    "", "\u041A\u043E\u0434");
            td.setVisible(true);
            
        } catch(java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private boolean obtainInputType() {
        int i = 0;
        try {
            i = Integer.parseInt(jTextField1.getText());
        } catch (NumberFormatException ex) { return false; }
        return true;
    }
    
    private void getContragentByID(int ID) {
        String contragent = contragentById + ID + ";";
        try {
            java.sql.ResultSet rsC = getStm().executeQuery(contragent);
            rsC.next();
            setIdContragent(ID);
            setCodeContragent(rsC.getInt("code_contragent"));
            setNameContragent(rsC.getString("name_n_contragent"));
            buffCode = getCodeContragent();
            buffName = getNameContragent();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        jTextField1.setText("" + getCodeContragent() + " - " + getNameContragent());
    }
    
    private void manageKeyEvents() {
        String entry = this.jTextField1.getText();
        // dali fokusa se gubi zaradi wikane na tableDialog ili zaradi transfer
        if (this.isFromF7) {
            getContragent();
        } else {
            // dali tekstowoto pole e prazno pri zaguba na fokusa
            if (entry.equals("")) {
                // dali ima predi6ni stoinosti w bufera
                if (this.buffCode == 0 || this.buffName.equals("")) {
                    // Propuska swobodno fokusa da premine kym sledwa6tiq komponent
                } else {
                    // jTextField1.setText("" + getCodeContragent() + " - " + getNameContragent());
                }
            } else {
                // dali ima predi6ni stoinosti w bufera
                if ((buffCode > 0 && entry.contains("" + buffCode)) || (!buffName.equals("") && entry.contains(buffName))) {
                    jTextField1.setText("" + getCodeContragent() + " - " + getNameContragent());
                } else {
                    getContragent();
                }
            }
        }
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
    
    private void fGain(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf){
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 255, 255), null));
    }
    
    public int getIdContragent() {
        return idContragent;
    }
    
    public void setIdContragent(int idContragent) {
        this.idContragent = idContragent;
    }
    
    public int getCodeContragent() {
        return codeContragent;
    }
    
    public void setCodeContragent(int codeContragent) {
        this.codeContragent = codeContragent;
    }
    
    public String getNameContragent() {
        return nameContragent;
    }
    
    public void setNameContragent(String nameContragent) {
        this.nameContragent = nameContragent;
    }
    
    public String getStartOfPeriod() {
        return startOfPeriod;
    }
    
    public void setStartOfPeriod(org.jdesktop.swingx.JXDatePicker startOfPeriod) {
        this.startOfPeriod = (String)formatter.format(startOfPeriod.getDate());
    }
    
    public String getEndOfPeriod() {
        return endOfPeriod;
    }
    
    public void setEndOfPeriod(org.jdesktop.swingx.JXDatePicker endOfPeriod) {
        this.endOfPeriod = (String)formatter.format(endOfPeriod.getDate());
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
