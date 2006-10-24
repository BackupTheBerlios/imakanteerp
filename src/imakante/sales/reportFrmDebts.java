
package imakante.sales;

public class reportFrmDebts extends imakante.com.vcomponents.iInternalFrame {
    
    public reportFrmDebts(String title, imakante.com.vcomponents.iFrame frame, int levelx) {
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
        setTitle("\u0417\u0410\u0414\u042a\u041b\u0416\u0415\u041d\u0418\u042f \u041d\u0410 \u041a\u041e\u041d\u0422\u0420\u0410\u0413\u0415\u041d\u0422");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
        jLabel1.setText("\u041a\u043e\u0434 - \u0418\u043c\u0435:");

        jTextField1.setBackground(new java.awt.Color(204, 204, 255));
        jTextField1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField1.setToolTipText("\u0412\u044a\u0432\u0435\u0434\u0435\u0442\u0435 \u0447\u0430\u0441\u0442 \u043e\u0442 \u043a\u043e\u0434 \u0438\u043b\u0438 \u0438\u043c\u0435 - F7 \u0432\u0430\u0434\u0438 \u0441\u043f\u0438\u0441\u044a\u043a \u0437\u0430 \u0438\u0437\u0431\u043e\u0440");
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
                .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 263, Short.MAX_VALUE)
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

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u041f\u0435\u0440\u0438\u043e\u0434", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(0, 51, 153)));
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
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 28, Short.MAX_VALUE)
                .add(jLabel4)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
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
                        .add(jlLevelx, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 19, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 8, Short.MAX_VALUE)
                .add(jlLevelx)
                .addContainerGap())
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

        setBounds(50, 20, 386, 246);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jTextField1.transferFocus();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_F7) {
            this.isFromF7 = true;
            manageKeyEvents(this.jTextField1);
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField1.setText(""); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jTextField1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusLost
        if (!isFromF7)  // wika metoda samo, ako fokusa e izguben NE zaradi F7, za dane go izpylnqwa 2 pyti!
            manageKeyEvents(this.jTextField1);
        fLost(jTextField1);
    }//GEN-LAST:event_jTextField1FocusLost
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        jTextField1.selectAll();
        fGain(jTextField1);
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jbQuitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbQuitActionPerformed
        this.dispose();
    }//GEN-LAST:event_jbQuitActionPerformed
    
    private void jbExecuteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbExecuteActionPerformed
        if (this.jTextField1.getText().equals("") || !this.jTextField1.getText().startsWith("" + buffCode))
            imakante.com.MessagePane.MissingData();
        else
            executeReport();
    }//GEN-LAST:event_jbExecuteActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
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
    private String startOfPeriod = "";
    private String endOfPeriod = "";
    private int IDTransfer = 0;
    private int levelx = 3;
    
    private String contragentDebts =
            "SELECT d.id_df AS id, " +
            "td.name_ntd AS Document, " +
            "d.number_df AS ofNumber, " +
            "d.date_edition_df AS fromDate, " +
            "d.total_df AS Due, " +
            "IFNULL(@LIQ:=(SELECT SUM(sum_os_val_sl_mop) FROM sl_m_operation WHERE id_order_spec = d.id_df), 0.00) AS Liquidated, " +
            "IFNULL((d.total_df - @LIQ), 0.00) AS Remainder, " +
            "d.date_pay_df AS Term, " +
            "DATEDIFF(CURRENT_DATE, d.date_pay_df) AS Overdue " +
            "FROM sl_document_facade d " +
            "JOIN n_type_doc td ON td.code_ntd = d.type_df " +
            "JOIN n_contragent nc ON nc.id_contragent = d.out_contragent_df " +
            "WHERE nc.code_contragent = ";
    
    private String sumContragentDebts =
            "SELECT SUM(total_df) AS suma " +
            "FROM sl_document_facade d " +
            "JOIN n_contragent nc ON nc.id_contragent = d.out_contragent_df " +
            "WHERE nc.code_contragent = ";
    
    private String initialDate =
            "SELECT IFNULL(MIN(date_edition_df), '0000-00-00') AS data " +
            "FROM sl_document_facade d " +
            "JOIN n_contragent nc ON nc.id_contragent = d.out_contragent_df " +
            "WHERE nc.code_contragent = ";
    
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
        java.sql.ResultSet rsD;
        imakante.com.CustomTableModel modelD;
        imakante.com.CustomTable tableD;
        String[] names = { "id",
        "\u0414\u043E\u043A\u0443\u043C\u0435\u043D\u0442",
        "\u041D\u043E\u043C\u0435\u0440",
        "\u041E\u0442 \u0434\u0430\u0442\u0430",
        "\u0414\u044A\u043B\u0436\u0438\u043C\u043E",
        "\u0418\u0437\u043F\u043B\u0430\u0442\u0435\u043D\u043E",
        "\u041E\u0441\u0442\u0430\u0442\u044A\u043A",
        "\u0421\u0440\u043E\u043A",
        "\u041F\u0440\u043E\u0441\u0440\u043E\u0447\u0435\u043D\u043E (\u0434\u043D\u0438)" };
        java.sql.ResultSet pDebts, nDebts, iniDate, sumDebt;
        java.util.HashMap hm = new java.util.HashMap();
        String jasperFile = "contragent_debts.jasper";
        String level = "";
        if (getIdContragent() > 0) {
            if (jXDatePicker1.getDateInMillis() <= jXDatePicker2.getDateInMillis()) {
                setStartOfPeriod(jXDatePicker1);
                setEndOfPeriod(jXDatePicker2);
                if (levelx == 3) {
                    level = "003";
                    hm.put("levelBoth", "");
                    hm.put("levelReal", "");
                    hm.put("levelVirtual", level);
                }
                if (levelx == 2) {
                    level = "002";
                    hm.put("levelBoth", "");
                    hm.put("levelReal", level);
                    hm.put("levelVirtual", "");
                }
                if (levelx == 1) {
                    level = "003 OR d.level_df = 002 OR d.level_df = 001";
                    hm.put("levelBoth", "001");
                    hm.put("levelReal", "002");
                    hm.put("levelVirtual", "003");
                }
                String previousDebtsQuery = sumContragentDebts + getCodeContragent() +
                        " AND date_edition_df < '" + getStartOfPeriod() +  "' AND (d.level_df = " + level + ");";
                String debts4PeriodQuery = contragentDebts + getCodeContragent() +
                        " AND date_edition_df BETWEEN '" + getStartOfPeriod() + "' AND '" + getEndOfPeriod() + "' AND (d.level_df = " + level + ")" +
                        "ORDER BY d.date_edition_df;";
                String nextDebtsQuery = sumContragentDebts + getCodeContragent() +
                        " AND date_edition_df > '" + getEndOfPeriod() +  "' AND (d.level_df = " + level + ");";
                String iniDateQuery = initialDate + getCodeContragent() + " AND (d.level_df = " + level + ");";
                String sumDebtQuery = sumContragentDebts + getCodeContragent() + " AND (d.level_df = " + level + ");";
                hm.put("codeContragent", getCodeContragent());
                hm.put("contragent", getNameContragent());
                hm.put("startPeriod", getStartOfPeriod());
                hm.put("endPeriod", getEndOfPeriod());
                try {
                    rsD = getStm().executeQuery(debts4PeriodQuery);
                    System.out.println("Za perioda: " + debts4PeriodQuery);
                    modelD = new imakante.com.CustomTableModel(getConn(), rsD, names);
                    tableD = new imakante.com.CustomTable(modelD);
                    HideColumns(tableD, getColumnIndex(tableD, "id"));
                    // "NIAMA ZADYLJENIA"
                    String[] bord = { "\u041D\u042F\u041C\u0410 \u0417\u0410\u0414\u042A\u041B\u0416\u0415\u041D\u0418\u042F",
                    "\u041D\u042F\u041C\u0410 \u0417\u0410\u0414\u042A\u041B\u0416\u0415\u041D\u0418\u042F" };
                    pDebts = getStm().executeQuery(previousDebtsQuery);
                    pDebts.next();
                    if (pDebts.getDouble("suma") > 0.00)
                        bord[0] = "" + pDebts.getDouble("suma");
                    hm.put("previousTotal", pDebts.getDouble("suma"));
                    nDebts = getStm().executeQuery(nextDebtsQuery);
                    nDebts.next();
                    if (nDebts.getDouble("suma") > 0.00) // 1 - first record of resultset
                        bord[1] = "" + nDebts.getDouble("suma");
                    hm.put("nextTotal", nDebts.getDouble("suma"));
                    sumDebt = getStm().executeQuery(sumDebtQuery);
                    sumDebt.next();
                    hm.put("GrandTotal", sumDebt.getDouble("suma"));
                    iniDate = getStm().executeQuery(iniDateQuery);
                    iniDate.next();
                    if (iniDate.getString("data").equals("0000-00-00"))
                        hm.put("initialDate", "\u043D\u044F\u043C\u0430 \u0434\u0430\u043D\u043D\u0438");   // niama danni
                    else
                        hm.put("initialDate", iniDate.getDate("data").toString());
                    imakante.com.vcomponents.periodicaDialog td = new imakante.com.vcomponents.periodicaDialog(this, true, tableD, getConn(), hm, jasperFile,
                            "\u0417\u0434\u044A\u043B\u0436\u0435\u043D\u0438\u044F \u043D\u0430 " + getNameContragent().toUpperCase(), bord);
                    td.setVisible(true);
                } catch(java.sql.SQLException ex) { ex.printStackTrace(); }
            } else {
                // Nekorekten izbor na period!
                imakante.com.MessagePane.Error("\u041D\u0435\u043A\u043E\u0435\u0440\u043A\u0442\u0435\u043D " +
                        "\u0438\u0437\u0431\u043E\u0440 \u043D\u0430 \u043F\u0435\u0440\u0438\u043E\u0434!");
            }
        } else { getContragent(); }
    }
    
    private void getContragent() {
        String filter;
        if (obtainInputType(this.jTextField1))
            filter = "WHERE nc.code_contragent LIKE '%";
        else
            filter = "WHERE nc.name_n_contragent LIKE '%";
        String contragents = contragentsList + filter + jTextField1.getText() + "%' AND nc.flag_n_contragent = 0;";
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
                    // jtf.setText("" + getCodeContragent() + " - " + getNameContragent());
                }
            } else {
                // dali ima predi6ni stoinosti w bufera
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
        this.isFromF7 = false;
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
    
    private void fGain(javax.swing.JComponent jtf) {
        jtf.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED,
                new java.awt.Color(255, 0, 51), null));
    }
    
    private void fLost(javax.swing.JComponent jtf) {
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
