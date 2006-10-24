
package imakante.sales;

public class reportFrmPayments extends imakante.com.vcomponents.iInternalFrame {
    
    public reportFrmPayments(String title, imakante.com.vcomponents.iFrame frame, int levelx) {
        super(title);
        myFrame = frame;
        this.levelx = levelx;
        prepareConn();
        prepareStm();
        initComponents();
        this.jlLevelx.setText("" + this.levelx);
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPanel4 = new javax.swing.JPanel();
        jComboBox1 = new javax.swing.JComboBox();
        jPanel5 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel4 = new javax.swing.JLabel();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jlLevelx = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jbExecute = new javax.swing.JButton();
        jbQuit = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setTitle("\u0420\u0410\u0417\u041f\u041b\u0410\u0429\u0410\u041d\u0418\u042f \u041d\u0410 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel1.setText("\u041a\u043e\u0434 - \u0418\u043c\u0435:");

        jTextField1.setBackground(new java.awt.Color(204, 204, 255));
        jTextField1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField1.setToolTipText("F7 \u0432\u0430\u0434\u0438 \u0441\u043f\u0438\u0441\u044a\u043a \u0437\u0430 \u0438\u0437\u0431\u043e\u0440");
        jTextField1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));
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

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel1)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 281, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0412\u0438\u0434 \u0440\u0430\u0437\u043f\u043b\u0430\u0449\u0430\u043d\u0435", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "\u0412 \u0411\u0420\u041e\u0419 - \u043f\u043e \u041f\u0440\u0438\u0445\u043e\u0434\u043d\u0438 \u043a\u0430\u0441\u043e\u0432\u0438 \u043e\u0440\u0434\u0435\u0440\u0438", "\u0411\u0410\u041d\u041a\u0410 - \u043f\u043e \u0411\u0430\u043d\u043a\u043e\u0432\u0438 \u043d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f", "\u0427\u0410\u0421\u0422\u0418\u0427\u041d\u041e - \u0421\u043c\u0435\u0441\u0435\u043d\u0430 \u0441\u0445\u0435\u043c\u0430" }));
        jComboBox1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED));

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jComboBox1, 0, 338, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041f\u0435\u0440\u0438\u043e\u0434", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel3.setText("\u041e\u0422");

        jLabel4.setText("\u0414\u041e");

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel3)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 42, Short.MAX_VALUE)
                .add(jLabel4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel4)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3))
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
                        .add(jlLevelx, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 16, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 30, Short.MAX_VALUE)
                .add(jlLevelx))
        );
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jbExecute.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbExecute.setForeground(new java.awt.Color(0, 51, 153));
        jbExecute.setText("\u0413\u0415\u041d\u0415\u0420\u0418\u0420\u0410\u0419");
        jbExecute.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbExecuteActionPerformed(evt);
            }
        });

        jPanel2.add(jbExecute);

        jbQuit.setFont(new java.awt.Font("Tahoma", 1, 11));
        jbQuit.setForeground(new java.awt.Color(0, 51, 153));
        jbQuit.setText("\u0417\u0410\u0422\u0412\u041e\u0420\u0418");
        jbQuit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbQuitActionPerformed(evt);
            }
        });

        jPanel2.add(jbQuit);

        getContentPane().add(jPanel2, java.awt.BorderLayout.SOUTH);

        setBounds(70, 40, 400, 313);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField1.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) {
            this.isFromF7 = true;
            manageKeyEvents(this.jTextField1);
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField1.setText(""); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        jTextField1.selectAll();
        fGain(jTextField1);
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        if (!isFromF7) 
            manageKeyEvents(this.jTextField1);
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jbExecuteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbExecuteActionPerformed
        if (this.jTextField1.getText().equals("") || !this.jTextField1.getText().startsWith("" + buffCode))
            imakante.com.MessagePane.MissingData();
        else
            executeReport();
    }//GEN-LAST:event_jbExecuteActionPerformed
    
    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbQuitActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JTextField jTextField1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    private javax.swing.JButton jbExecute;
    private javax.swing.JButton jbQuit;
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
    private int paymentType = 0;
    private String startOfPeriod = "";
    private String endOfPeriod = "";
    private int IDTransfer = 0;
    private int levelx = 3;
    
    private String paymentsView = 
            "SELECT id_df AS ID, " +
            "number_df AS NOMER, " +
            "type_df AS TIP, " +
            "total_df AS SUMA, " +
            "date_edition_df AS 'DATA NA ZADYLJENIE', " +
            "faktura_connection_df AS FAKTURA, " +
            "description_pay_df AS 'TIP RAZPLA6TANE', " +
            "paying_order_df AS 'PRIHODEN KASOV ORDER', " +
            "date_pay_df AS 'DATA NA PLA6TANE', " +
            "out_contragent_df AS 'KLIENT' " +
            "FROM sl_document_facade " +
            "WHERE total_df > 0";
    
    private String paymentsByCROrders = 
            "SELECT " +
            "FROM sl_m_operation " +
            "WHERE ";
    
    private String paymentsByBankOrders = 
            "SELECT " +
            "FROM " +
            "WHERE ";
    
    private String contragentsList =
            "SELECT nc.id_contragent, nc.code_contragent, nc.name_n_contragent, nc.flag_n_contragent " +
            "FROM n_contragent nc ";
    
    private String contragentById =
            "SELECT nc.code_contragent, nc.name_n_contragent FROM n_contragent nc " +
            "WHERE nc.id_contragent = ";
    
    private String contragentByCode =
            "SELECT nc.id_contragent, nc.name_n_contragent, nc.flag_n_contragent FROM n_contragent nc " +
            "WHERE nc.code_contragent = ";
    
    private void executeReport() {
        java.sql.ResultSet rsP;
        imakante.com.CustomTableModel modelP;
        imakante.com.CustomTable tableP;
        String[] names = { "id", 
        "" };
        java.sql.ResultSet pPayments, nPayments, iniDate, sumDebt;
        java.util.HashMap hm = new java.util.HashMap();
        String jasperFile = "contragent_payments.jasper";
        String level = "";
        if (getIdContragent() > 0) {
            
        }
        
        
        
        
        
    }
    
    private void getContragent() {
        String filter;
        if (obtainInputType(this.jTextField1)) 
            filter = "WHERE nc.code_contragent LIKE '%";
        else 
            filter = "WHERE nc.name_n_contragent LIKE '%";
        String contragents = contragentsList + filter + jTextField1.getText() + "%';";
        java.sql.ResultSet rsC;
        imakante.com.CustomTableModel modelC;
        imakante.com.CustomTable tableC;
        String[] names = { "id", "\u041A\u043E\u0434", "\u0418\u043C\u0435", "flag" };
        try {
            rsC = getStm().executeQuery(contragents);
            modelC = new imakante.com.CustomTableModel(getConn(), rsC, names);
            tableC = new imakante.com.CustomTable(modelC);
            HideColumns(tableC, getColumnIndex(tableC, "id"));
            HideColumns(tableC, getColumnIndex(tableC, "flag"));
            tableC.setEditingRow(0);
            imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, tableC,
                    "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u041A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442",
                    "", "\u041A\u043E\u0434");
            td.setVisible(true);
        } catch(java.sql.SQLException ex) { ex.printStackTrace(); }
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
    
    private boolean obtainInputType(javax.swing.JTextField jtf) {
        int i = 0;
        try {
            i = Integer.parseInt(jtf.getText());
        } catch (NumberFormatException ex) { return false; }
        return true;
    }
    
    private void manageKeyEvents(javax.swing.JTextField jtf) {
        String entry = jtf.getText();
        if (this.isFromF7) {
            getContragent();
        } else {
            if (entry.equals("")) {
                if (this.buffCode == 0 || this.buffName.equals("")) {
                    
                } else {
                    // jtf.setText("" + getCodeContragent() + " - " + getNameContragent());
                }
            } else {
                if ((buffCode > 0 && entry.contains("" + buffCode)) || (!buffName.equals("") && entry.contains(buffName))) {
                    jtf.setText("" + getCodeContragent() + " - " + getNameContragent());
                } else {
                    getContragent();
                }
            }
        }
    }
    
    @Override
    public void setIntTransfer(int idTransfer) {
        this.IDTransfer = idTransfer;
        getContragentByID(IDTransfer);
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
