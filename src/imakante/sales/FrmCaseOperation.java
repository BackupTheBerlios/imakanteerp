
package imakante.sales;

public class FrmCaseOperation extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmCaseOperation(String title, imakante.com.vcomponents.iFrame frame, int level, int ndtur) {
        super(title);
        myframe = frame;
        this.level = level;
        this.ndtur = ndtur;
        prepareConn();     // zapazva connection
        constructObject(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
        isEmpty();
        currDate = new java.util.Date();
        in_DATE = formatter.getDateInstance().format(currDate);
        this.internalObject.setIn_DATE(in_DATE);
        prepareStm();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jtfCasaBegin = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jtfContragentBEGIN = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jButtonSearch = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jtfCasaEND = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jtfContragentEND = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jXDatePickerBEGIN = new org.jdesktop.swingx.JXDatePicker();
        jXDatePickerEND = new org.jdesktop.swingx.JXDatePicker();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrnReport = new javax.swing.JButton();
        jButtonDel = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonDeleteAll = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel2.setText("\u041a\u0430\u0441\u0430:");

        jtfCasaBegin.setPreferredSize(new java.awt.Dimension(80, 20));
        jtfCasaBegin.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfCasaBeginKeyPressed(evt);
            }
        });

        jLabel3.setText("\u041a\u043b\u0438\u0435\u043d\u0442:");

        jtfContragentBEGIN.setPreferredSize(new java.awt.Dimension(80, 20));
        jtfContragentBEGIN.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfContragentBEGINKeyPressed(evt);
            }
        });

        jLabel1.setText("\u0414\u0430\u0442\u0430:");

        jButtonSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButtonSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButtonSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSearchActionPerformed(evt);
            }
        });
        jButtonSearch.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jButtonSearchKeyPressed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel4.setText("\u041e\u0422");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel5.setText("\u0414\u041e");

        jLabel6.setText("\u041a\u0430\u0441\u0430:");

        jtfCasaEND.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfCasaENDKeyPressed(evt);
            }
        });

        jLabel7.setText("\u041a\u043b\u0438\u0435\u043d\u0442:");

        jtfContragentEND.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jtfContragentENDKeyPressed(evt);
            }
        });

        jLabel8.setText("\u0414\u0430\u0442\u0430:");

        jXDatePickerBEGIN.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDatePickerBEGINActionPerformed(evt);
            }
        });
        jXDatePickerBEGIN.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jXDatePickerBEGINKeyPressed(evt);
            }
        });

        jXDatePickerEND.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDatePickerENDActionPerformed(evt);
            }
        });
        jXDatePickerEND.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jXDatePickerENDKeyPressed(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .add(151, 151, 151)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(65, 65, 65)
                        .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 28, Short.MAX_VALUE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 16, Short.MAX_VALUE)
                        .add(67, 67, 67)
                        .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 28, Short.MAX_VALUE)))
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(5, 5, 5)
                        .add(jtfCasaBegin, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 86, Short.MAX_VALUE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jtfCasaEND, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 87, Short.MAX_VALUE)))
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(5, 5, 5)
                        .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 42, Short.MAX_VALUE)
                        .add(2, 2, 2)))
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jtfContragentBEGIN, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 82, Short.MAX_VALUE)
                    .add(org.jdesktop.layout.GroupLayout.TRAILING, jtfContragentEND, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 82, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jXDatePickerEND, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 31, Short.MAX_VALUE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jXDatePickerBEGIN, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 128, Short.MAX_VALUE)))
                .add(17, 17, 17)
                .add(jButtonSearch)
                .add(127, 127, 127))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(5, 5, 5)
                        .add(jtfCasaBegin, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(8, 8, 8)
                        .add(jLabel3))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                            .add(jPanel4Layout.createSequentialGroup()
                                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                                    .add(jLabel1)
                                    .add(jtfContragentBEGIN, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                                .add(5, 5, 5))
                            .add(jPanel4Layout.createSequentialGroup()
                                .add(jXDatePickerBEGIN, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)))
                        .add(jXDatePickerEND, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(8, 8, 8)
                        .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel2)
                            .add(jLabel4))
                        .add(14, 14, 14)
                        .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                            .add(jLabel5)
                            .add(jLabel6)
                            .add(jtfCasaEND, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel7)
                            .add(jtfContragentEND, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                            .add(jLabel8))))
                .addContainerGap())
            .add(jPanel4Layout.createSequentialGroup()
                .add(25, 25, 25)
                .add(jButtonSearch)
                .addContainerGap(27, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 882, Short.MAX_VALUE)
            .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 882, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .add(jScrollPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 314, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 81, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setPreferredSize(new java.awt.Dimension(801, 37));
        jButtonNew.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Add 2.png")));
        jButtonNew.setText("\u041d\u043e\u0432");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonNew);

        jButtonEdit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Report Edit 2.png")));
        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButtonEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonEdit);

        jButtonPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrint);

        jButtonPrnReport.setText("\u041f\u0435\u0447\u0430\u0442 \u043e\u0442\u0447\u0435\u0442");
        jButtonPrnReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrnReportActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrnReport);

        jButtonDel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Delete 2.png")));
        jButtonDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDelActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonDel);

        jButtonRefresh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Refresh 3.png")));
        jButtonRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButtonRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonRefreshActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonRefresh);

        jButtonDeleteAll.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jPanel3.add(jButtonDeleteAll);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-892)/2, (screenSize.height-468)/2, 892, 468);
    }// </editor-fold>//GEN-END:initComponents

    private void jXDatePickerENDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDatePickerENDActionPerformed
        dEstate = true;
    }//GEN-LAST:event_jXDatePickerENDActionPerformed

    private void jXDatePickerBEGINActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDatePickerBEGINActionPerformed
        dBstate = true;
    }//GEN-LAST:event_jXDatePickerBEGINActionPerformed

    private void jButtonPrnReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrnReportActionPerformed
        loadOtchetPrihodi();
    }//GEN-LAST:event_jButtonPrnReportActionPerformed
    
    private void jButtonSearchKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jButtonSearchKeyPressed
        
    }//GEN-LAST:event_jButtonSearchKeyPressed
    
    private void jXDatePickerENDKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jXDatePickerENDKeyPressed
        
    }//GEN-LAST:event_jXDatePickerENDKeyPressed
    
    private void jXDatePickerBEGINKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jXDatePickerBEGINKeyPressed
        
    }//GEN-LAST:event_jXDatePickerBEGINKeyPressed
    
    private void jtfContragentENDKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfContragentENDKeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField4();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jtfContragentEND.getText().equals("")) {
                jtfContragentEND.setText("999999999");
                jtfContragentEND.transferFocus();
            }
        }
    }//GEN-LAST:event_jtfContragentENDKeyPressed
    
    private void jtfContragentBEGINKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfContragentBEGINKeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField3();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jtfContragentBEGIN.getText().equals("")) {
                jtfContragentBEGIN.setText("1");
                jtfContragentBEGIN.transferFocus();
            }
        }
    }//GEN-LAST:event_jtfContragentBEGINKeyPressed
    
    private void jtfCasaENDKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfCasaENDKeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField2();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jtfCasaEND.getText().equals("")) {
                jtfCasaEND.setText("999999999");
                jtfCasaEND.transferFocus();
            }
        }
    }//GEN-LAST:event_jtfCasaENDKeyPressed
    
    private void jtfCasaBeginKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfCasaBeginKeyPressed
        if(java.awt.event.KeyEvent.VK_F7== evt.getKeyCode()){
            processField1();
        }
        if(java.awt.event.KeyEvent.VK_ENTER == evt.getKeyCode()){
            if(jtfCasaBegin.getText().equals("")) {
                jtfCasaBegin.setText("1");
                jtfCasaBegin.transferFocus();
            }
        }
    }//GEN-LAST:event_jtfCasaBeginKeyPressed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        loadReport();
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        unload();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButtonSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonSearchActionPerformed
        searchRecords();
    }//GEN-LAST:event_jButtonSearchActionPerformed
    
    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed
    
    private void jButtonDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDelActionPerformed
        delRecord();
    }//GEN-LAST:event_jButtonDelActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
        editRecord();
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        newRecord();
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JButton jButtonSearch;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerBEGIN;
    private org.jdesktop.swingx.JXDatePicker jXDatePickerEND;
    private javax.swing.JTextField jtfCasaBegin;
    private javax.swing.JTextField jtfCasaEND;
    private javax.swing.JTextField jtfContragentBEGIN;
    private javax.swing.JTextField jtfContragentEND;
    // End of variables declaration//GEN-END:variables
    
    //--------------- My Variables
    private int level = 1;
    private int ndtur = 1;
    private int sdtn = 1;
    private String area = "000";
    private java.util.Date currDate;
    private java.util.Calendar m_calendar = java.util.Calendar.getInstance();
    
    private int id = 0; // imena ot tablicata
    private int code = 0;
    private int contragent_cod = 0;  // kod na kontragent
    private String contragent_name = ""; // name na kontragent
    private int in_in_sl_mop = 1; //id na kasa
    private int in_code_casa = 1; // cod na kasa
    private int in_outsl_mop = 0; // id na kontragent
    private int in_id_order_spec = -1 ;
    private int in_id_order_spec_type = 1;
    private int in_id_order_doc = -1;
    private String in_DATE;
    private int in_id_n_money = 1;
    private String in_code_lat = "BGN";
    private double in_exchange_rate = 1;
    private double in_sum_sl_mop = 0;
    private double in_sum_os_val_sl_mop = 0;
    private int in_user_id = imakante.com.NewMain.getUserId();
    private String user_name = "";
    private int in_id_sdtn = 1;
    private String  comment = "";
    
    private String namesG[]; //imena na grupi
    private int selectComboBoxItem;
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    
    private  imakante.com.vcomponents.iFrame myframe;
    private  java.sql.Connection conn;
    private  java.sql.Statement stm;
    private  java.sql.ResultSet rs;
    private  imakante.sales.casaOp internalObject;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    
    private int hInt =0;
    private int hCode = 0;
    private String hName = "";
    
    private boolean isNew = false;
    private int levelPermition = 1;
    
    private imakante.sales.aeCaseOp ae_Casa;
    public static final String Names[] =
    {
        "id",                 // Row N - 0. (H) - Hidden
        "\u041d\u043e\u043c\u0435\u0440",             //         1. (V) - Visible
        "id_casa",            //         2. (H)
        "\u041a\u043e\u0434 \u043a\u0430\u0441\u0430",          //         3. (V)
        "id_contragent",      //         4. (H)
        "\u041a\u043e\u0434 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442",     //         5. (V)
        "\u0418\u043c\u0435 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442",    //         6. (V)
        "\u0421\u0432\u044a\u0440\u0437\u0430\u043d \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442",          //         7. (V)
        "id_df",              //         8. (H)
        "id_order_doc",       //         9. (H)
        "\u0412\u0438\u0434 \u043f\u0440\u0438\u0445\u043e\u0434",      //        10. (V)
        "id_n_money",         //        11. (H)
        "\u041f\u0430\u0440\u0438\u0447\u0435\u043d \u043a\u043e\u0434",        //        12. (V)
        "\u0414\u0430\u0442\u0430 \u0438\u0437\u0434\u0430\u0432\u0430\u043d\u0435",            //        13. (V)
        "\u041a\u0443\u0440\u0441",      //        14. (V)
        "\u0421\u0443\u043c\u0430",         //        15. (V)
        "\u0421\u0443\u043c\u0430 \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0430",         //        16. (V)
        "user_id",            //        17. (H)
        "\u0418\u0437\u0434\u0430\u043b \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430",            //        18. (V)
        "id_sdtn",            //        19. (H)
        "\u041A\u043E\u0447\u0430\u043D",          //        20. (V)
        "\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440"             //        21. (V)
    };
    
    private  imakante.com.CustomTableModel model1;
    private  imakante.com.CustomTable table1;
    private  int intTransfer;
    private  int CompNumber = 0;
    
    private String strContragent = "SELECT "
            + "`n_contragent`.`code_contragent`, `n_contragent`.`name_n_contragent`"
            + "FROM `n_contragent` WHERE `n_contragent`.`code_contragent` LIKE  '%";
    
    private String strCasa =  "SELECT "
            + "`n_casa`.`code_n_casa`, `n_casa`.`name_n_casa`"
            + "FROM `n_casa` WHERE `n_casa`.`code_n_casa` LIKE  '%";
    
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
    
    private String jasperFile = "inorder.jasper";
    private String otchetPrihodi = "report_prih_orders.jasper";
    
    private boolean dBstate = false;
    private boolean dEstate = false;
    //---------------END My Variables
    
    //---------------START Methods
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn==null){System.out.println("conn problem");
            }
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void prepareStm() {
        try {
            setStm(conn.createStatement());
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    private void initTableD(String str , String[] names) {
        try {
            setRs(getStm().executeQuery(str));
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        try {
            model1 = new imakante.com.CustomTableModel(getConn(), getRs(), names);
            table1 = new imakante.com.CustomTable(model1);
        } catch(Exception e) { e.printStackTrace(); }
        try {
            table1.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void constructDialod(String str, int rCompNumber, String[] names) {
        this.CompNumber = rCompNumber;
        initTableD(str, names);
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, table1,"\u0418\u0437\u0431\u043e\u0440", "");
        td.setVisible(true);
    }
    
    private void constructObject() {
        if(getStm() == null){
            prepareStm();
        }
        try {
            setRs(getStm().executeQuery("SELECT id_sdtn, rights_ndtur FROM n_doc_type_user_rights WHERE id_ndtur = " + ndtur));
            while(getRs().next()){
                sdtn = getRs().getInt("id_sdtn");
                setLevelPermition(getRs().getInt("rights_ndtur"));
            }
        } catch (java.sql.SQLException ex) {
            ex.printStackTrace();
            sdtn = 1;
        }
        try {
            setRs(getStm().executeQuery("SELECT area_number_sdtn FROM sl_doc_type_num WHERE id_sdtn = " + sdtn));
            while(getRs().next()){
                area = "" +  getRs().getInt("area_number_sdtn");
            }
        } catch (java.sql.SQLException ex) {
            ex.printStackTrace();
            sdtn = 1;
        }
        try {
            internalObject = new imakante.sales.casaOp(conn, this.level, this.sdtn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try {
            setRs(internalObject.getTable());
            model = new imakante.com.CustomTableModel(getConn(), getRs(), Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_casa"));
            HideColumns(getColumnIndex("id_contragent"));
            HideColumns(getColumnIndex("id_df"));
            HideColumns(getColumnIndex("id_order_doc"));
            HideColumns(getColumnIndex("id_n_money"));
            HideColumns(getColumnIndex("user_id"));
            HideColumns(getColumnIndex("id_sdtn"));
        } catch(Exception e) { e.printStackTrace(); }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void isEmpty() {
        if (getTable().getRowCount() < 1) {
            jButtonEdit.setEnabled(false);
            jButtonPrint.setEnabled(false);
            jButtonPrnReport.setEnabled(false);
            jButtonDel.setEnabled(false);
            jButtonRefresh.setEnabled(false);
            jButtonDeleteAll.setEnabled(false);
            jButtonSearch.setEnabled(false);
        }
    }
    
    private void setButtonEnabled() {
        jButtonEdit.setEnabled(true);
        jButtonPrint.setEnabled(true);
        jButtonPrnReport.setEnabled(true);
        jButtonDel.setEnabled(true);
        jButtonRefresh.setEnabled(true);
        jButtonDeleteAll.setEnabled(true);
        jButtonSearch.setEnabled(true);
    }
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) {
        unload();
    }
    public void windowClosed(java.awt.event.WindowEvent e) {
    }
    public void windowIconified(java.awt.event.WindowEvent e) {
    }
    public void windowDeiconified(java.awt.event.WindowEvent e) {
    }
    public void windowActivated(java.awt.event.WindowEvent e) {
    }
    public void windowDeactivated(java.awt.event.WindowEvent e) {
    }
    
    public int getIntTransfer() {
        return intTransfer;
    }
    
    private void processField1() {
        String newString = strCasa + this.jtfCasaBegin.getText() + "%'";
        constructDialod(newString, 1, Names);
    }
    
    private void processField2() {
        if (this.jtfCasaBegin.getText() == "") { this.jtfCasaBegin.setText("0"); }
        String newString = strCasa + this.jtfCasaEND.getText() + "%' AND `n_casa`.`code_n_casa` >= " + this.jtfCasaBegin.getText() + ";";
        constructDialod(newString, 2, Names);
    }
    
//    private void processField5() {
//        String newString =strProduct + this.jTextField5.getText() + "%'";
//        constructDialod(newString, 5, Names);
//
//    }
//
//    private void processField6() {
//        if(this.jTextField5.getText()==""){this.jTextField5.setText("0");}
//        String newString = strProduct + this.jTextField6.getText() + "%' AND `rep_comm_nal`.`code_pm` >= " + this.jTextField5.getText() + ";";
//        constructDialod(newString, 6, Names);
//    }
    
    private void processField3() {
        String newString = strContragent + this.jtfContragentBEGIN.getText() + "%'";
        constructDialod(newString, 3, Names);
    }
    
    private void processField4() {
        if (this.jtfContragentBEGIN.getText() == "") { this.jtfContragentBEGIN.setText("0"); }
        String newString = strContragent + this.jtfContragentEND.getText() + "%' AND `n_contragent`.`code_contragent` >= " + this.jtfContragentBEGIN.getText() + ";";
        constructDialod(newString, 4, Names);
    }
    
    public void setIntTransfer(int intTransfer) {
        this.intTransfer = intTransfer;
        if (CompNumber == 0) {  }
        if(CompNumber == 1) {
            this.jtfCasaBegin.setText("" + this.intTransfer); }
        if(CompNumber == 2) {
            this.jtfCasaEND.setText("" + this.intTransfer); }
        if(CompNumber == 3) {
            this.jtfContragentBEGIN.setText("" + this.intTransfer); }
        if(CompNumber == 4) {
            this.jtfContragentEND.setText("" + this.intTransfer); }
        if(CompNumber == 99) {
            this.setHCode(this.intTransfer);
            ae_Casa.revalidateFText();
        }
    }
    
    public void intContrDialog(int CodDialod) {
        String newString = strContragent + this.jtfContragentEND.getText() + "%' AND `n_contragent`.`code_contragent` >= " + CodDialod + ";";
        constructDialod(newString, 99, Names);
    }
    
    public void getCodFromQu(int CodDialog) {
        setHInt(0);
        setHCode(0);
        setHName("");
        String str = "SELECT n_contragent.id_contragent, "
                + "`n_contragent`.`code_contragent`, `n_contragent`.`name_n_contragent`"
                + "FROM `n_contragent` WHERE `n_contragent`.`code_contragent` = ";
        if(getStm() == null){
            this.prepareStm();
        } else {  }
        try {
            setRs(getStm().executeQuery(str + CodDialog));
            while(getRs().next()){
                setHInt(getRs().getInt("id_contragent"));
                setHCode(getRs().getInt("code_contragent"));
                setHName(getRs().getString("name_n_contragent"));
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        if (getHInt() == 0 || getHCode() == 0) {
            javax.swing.JOptionPane.showMessageDialog(null, "\u041d\u044f\u043c\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0441 \u0442\u0430\u043a\u044a\u0432 \u043a\u043e\u0434!", 
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public imakante.sales.casaOp getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(imakante.sales.casaOp val) {
        this.internalObject = val;
    }
    
    public imakante.com.CustomTableModel getModel() {
        return model;
    }
    
    public void setModel(imakante.com.CustomTableModel val) {
        this.model = val;
    }
    
    public imakante.com.CustomTable getTable() {
        return table;
    }
    
    public void setTable(imakante.com.CustomTable val) {
        this.table = val;
    }
    
    public imakante.com.vcomponents.iFrame getMyframe() {
        return myframe;
    }
    
    public void setMyframe(imakante.com.vcomponents.iFrame val) {
        this.myframe = val;
    }
    
    public  boolean isAtBegining() {
        return atBegining;
    }
    
    public  void setAtBegining(boolean aAtBegining) {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd() {
        return atEnd;
    }
    
    public  void setAtEnd(boolean aAtEnd) {
        atEnd = aAtEnd;
    }
    
    private int  getMaxRow() {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    
    public  int getRow() {
        return row;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public int getId() {
        return id;
    }
    
    public void setCode(int Cod) {
        this.code = Cod;
    }
    
    public int getCode() {
        return code;
    }
    
    public void setContragent(String Contragent) {
        this.setContragent_name(Contragent);
    }
    
    public String getContragent() {
        return getContragent_name();
    }
    
    public void setComment(String Comment) {
        this.comment = Comment;
    }
    
    public String getComment() {
        return comment;
    }
    
    public  void setRow(int val) {
        row = val;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariables();
            table.changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setAtBegining(false);
        setAtEnd(true);
        System.out.println("mTableEnd()" + getRow() + "      " + getMaxRow());
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
        System.out.println("mOneRowPlus()" + getRow() + "      " + getMaxRow());
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if(getRow() > 0) {
                setRow(getRow() - 1);
            }
            setAtEnd(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
        }
        if(getRow() == 0) {
            setAtBegining(true);
        }
        System.out.println("mOneRowMinus()" + getRow() + "      " + getMaxRow());
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariables();
            table.changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setAtBegining(true);
        setAtEnd(false);
        System.out.println("mTableBegining()" + getRow() + "      " + getMaxRow());
    }
    
    private void searchRecords() {
        try {
            try {
                setRs(internalObject.searchRecords(Integer.parseInt(jtfCasaBegin.getText()),
                        Integer.parseInt(jtfCasaEND.getText()),
                        Integer.parseInt(jtfContragentBEGIN.getText()),
                        Integer.parseInt(jtfContragentEND.getText()),
                        (String)formatter.format(this.jXDatePickerBEGIN.getDate()),
                        (String)formatter.format(this.jXDatePickerEND.getDate())));
            } catch (NumberFormatException ex) { ex.printStackTrace(); }
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), getRs(), Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_casa"));
            HideColumns(getColumnIndex("id_contragent"));
            HideColumns(getColumnIndex("id_df"));
            HideColumns(getColumnIndex("id_order_doc"));
            HideColumns(getColumnIndex("id_n_money"));
            HideColumns(getColumnIndex("user_id"));
            HideColumns(getColumnIndex("id_sdtn"));
            jScrollPane1.getViewport().add(table);
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        setRs(internalObject.getTable());
        model = new imakante.com.CustomTableModel(getConn(), getRs(), Names);
        table = new imakante.com.CustomTable(model);
        HideColumns(getColumnIndex("id"));
        HideColumns(getColumnIndex("id_casa"));
        HideColumns(getColumnIndex("id_contragent"));
        HideColumns(getColumnIndex("id_df"));
        HideColumns(getColumnIndex("id_order_doc"));
        HideColumns(getColumnIndex("id_n_money"));
        HideColumns(getColumnIndex("user_id"));
        HideColumns(getColumnIndex("id_sdtn"));
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
    }
    
    private void newRecord() {
        setIsNew(true);
        internalObject.insertRow((internalObject.getMaxCod() + 1));
        refreshTable();
        setRow(getMaxRow());
        table.changeSelection(getRow(), 2, false, false);
        setAllVariables();
        setAtBegining(false);
        setAtEnd(true);
        ae_Casa = new imakante.sales.aeCaseOp(this, false);
        ae_Casa.setVisible(true);
        refreshTable();
        setButtonEnabled();
    }
    
    private void editRecord() {
        if(this.getLevelPermition()<3){
            setIsNew(false);}
        if (table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            if(getRow()==0) {
                setAtBegining(true);
            } else if(getRow()==getMaxRow()) {
                setAtEnd(true);
            } else {
                setAtBegining(false);
                setAtEnd(false);
            }
            setAllVariables();
            ae_Casa = new imakante.sales.aeCaseOp(this, false);
            ae_Casa.setVisible(true);
        } else {  }
    }
    
    private void delRecord(){
        if(this.getLevelPermition() > 2) {
            if(table.getSelectedRow() != -1) {
                setRow(table.getSelectedRow());
                setId((Integer)table.getValueAt(getRow(),0));
                internalObject.deleteRow(getId());
                refreshTable();
            }
            isEmpty(); }
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    private void unload() {
        closeResource();
        this.dispose();
    }
    
    protected void closeResource() {
        try{
            getRs().close();
        } catch(java.sql.SQLException sqle) {  }
        setRs(null);
        internalObject.close();
    }
    
    private int getColumnIndex(String in) {
        int count = table.getColumnCount();
        for(int i=0; i < count; i++) {
            if(table.getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    private void HideColumns(int col) {
        int iColumn = col;
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
    }
    
    private void setAllVariables() {
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id")));
        setCode((Integer) table.getValueAt(getRow(), getColumnIndex("\u041d\u043e\u043c\u0435\u0440")));
        setIn_in_sl_mop((Integer) table.getValueAt(getRow(), getColumnIndex("id_casa")));
        in_code_casa= (Integer) table.getValueAt(getRow(), getColumnIndex( "\u041a\u043e\u0434 \u043a\u0430\u0441\u0430"));
        try{
            setIn_outsl_mop((Integer) table.getValueAt(getRow(), getColumnIndex("id_contragent")));
        } catch(Exception e) {
            setIn_outsl_mop(-1);
        }
        try{
            setContragent_cod((Integer) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442")));
        } catch(Exception e) {
            setContragent_cod(0);
        }
        try{
            setContragent_name((String)table.getValueAt(getRow(), getColumnIndex( "\u0418\u043c\u0435 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442")));
        } catch(Exception e) {
            setContragent_name("");
        }
        setIn_id_order_spec((Integer) table.getValueAt(getRow(), getColumnIndex("id_df")));
        setIn_id_order_doc((Integer) table.getValueAt(getRow(), getColumnIndex("id_order_doc")));
        setIn_DATE((String)table.getValueAt(getRow(), getColumnIndex("\u0414\u0430\u0442\u0430 \u0438\u0437\u0434\u0430\u0432\u0430\u043d\u0435")).toString());
        setIn_id_n_money((Integer) table.getValueAt(getRow(), getColumnIndex("id_n_money")));
        in_code_lat = (String)table.getValueAt(getRow(), getColumnIndex("\u041f\u0430\u0440\u0438\u0447\u0435\u043d \u043a\u043e\u0434"));
        setIn_exchange_rate((Double)table.getValueAt(getRow(), getColumnIndex("\u041a\u0443\u0440\u0441")));
        setIn_sum_sl_mop((Double)table.getValueAt(getRow(), getColumnIndex("\u0421\u0443\u043c\u0430")));
        setIn_sum_os_val_sl_mop((Double)table.getValueAt(getRow(), getColumnIndex("\u0421\u0443\u043c\u0430 \u043e\u0441\u043d\u043e\u0432\u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0430")));
        setUser_name((String)table.getValueAt(getRow(), getColumnIndex("\u0418\u0437\u0434\u0430\u043b \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0430")));
        setIn_id_sdtn((Integer) table.getValueAt(getRow(), getColumnIndex("id_sdtn")));
        setComment((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440")));
    }
    
    public int getIn_in_sl_mop() {
        return in_in_sl_mop;
    }
    
    public void setIn_in_sl_mop(int in_in_sl_mop) {
        this.in_in_sl_mop = in_in_sl_mop;
    }
    
    public int getIn_outsl_mop() {
        return in_outsl_mop;
    }
    
    public void setIn_outsl_mop(int in_outsl_mop) {
        this.in_outsl_mop = in_outsl_mop;
    }
    
    public int getIn_id_order_spec() {
        return in_id_order_spec;
    }
    
    public void setIn_id_order_spec(int in_id_order_spec) {
        this.in_id_order_spec = in_id_order_spec;
    }
    
    public int getIn_id_order_doc() {
        return in_id_order_doc;
    }
    
    public void setIn_id_order_doc(int in_id_order_doc) {
        this.in_id_order_doc = in_id_order_doc;
    }
    
    public String getIn_DATE() {
        return in_DATE;
    }
    
    public void setIn_DATE(String in_DATE) {
        this.in_DATE = in_DATE;
    }
    
    public double getIn_exchange_rate() {
        return in_exchange_rate;
    }
    
    public void setIn_exchange_rate(double in_exchange_rate) {
        this.in_exchange_rate = in_exchange_rate;
    }
    
    public double getIn_sum_sl_mop() {
        return in_sum_sl_mop;
    }
    
    public void setIn_sum_sl_mop(double in_sum_sl_mop) {
        this.in_sum_sl_mop = in_sum_sl_mop;
    }
    
    public double getIn_sum_os_val_sl_mop() {
        return in_sum_os_val_sl_mop;
    }
    
    public void setIn_sum_os_val_sl_mop(double in_sum_os_val_sl_mop) {
        this.in_sum_os_val_sl_mop = in_sum_os_val_sl_mop;
    }
    
    public int getIn_id_sdtn() {
        return in_id_sdtn;
    }
    
    public void setIn_id_sdtn(int in_id_sdtn) {
        this.in_id_sdtn = in_id_sdtn;
    }
    
    public int getIn_id_n_money() {
        return in_id_n_money;
    }
    
    public void setIn_id_n_money(int in_id_n_money) {
        this.in_id_n_money = in_id_n_money;
    }
    
    public int getContragent_cod() {
        return contragent_cod;
    }
    
    public void setContragent_cod(int contragent_cod) {
        this.contragent_cod = contragent_cod;
    }
    
    public String getContragent_name() {
        return contragent_name;
    }
    
    public void setContragent_name(String contragent_name) {
        this.contragent_name = contragent_name;
    }
    
    public String getUser_name() {
        return user_name;
    }
    
    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
    
    public void loadReport() {
        setAllVariables();
        java.util.HashMap hm = new java.util.HashMap();
        imakante.com.priceToString prcT = new imakante.com.priceToString();
        double d = this.getIn_sum_sl_mop();
        prcT.setValue(d);
        prcT.ConstString();
        hm.put("nomer", area + fillZero(this.getCode()));
        hm.put("data_iz", this.getIn_DATE());
        hm.put("sumalv", "" + this.getIn_sum_os_val_sl_mop());
        hm.put("suma", "" + this.getIn_sum_sl_mop());
        hm.put("slovom", "" + prcT.getEndString());
        hm.put("vnosnomer", "" +  this.contragent_cod);
        hm.put("vnositel", "" + this.getContragent_name());
        hm.put("casa", "" + in_code_casa);
        hm.put("valuta", in_code_lat);
        hm.put("casier", this.getUser_name());
        imakante.sales.aeCaseOpReport cor = new imakante.sales.aeCaseOpReport(this, true, getConn(), hm, jasperFile);
        cor.setVisible(true);
    }
    
    public void loadOtchetPrihodi() {
        setAllVariables();
        java.util.HashMap hm = new java.util.HashMap();
        hm.put("izdal", this.getUser_name());
        hm.put("casaBegin", (jtfCasaBegin.getText().equals("") ? "0" : jtfCasaBegin.getText()));
        hm.put("casaEnd", (jtfCasaEND.getText().equals("") ? "999999" : jtfCasaEND.getText()));
        hm.put("contragentBegin", (jtfContragentBEGIN.getText().equals("") ? "0" : jtfContragentBEGIN.getText()));
        hm.put("contragentEnd", (jtfContragentEND.getText().equals("") ? "999999" : jtfContragentEND.getText()));
        hm.put("dataBegin", (dBstate ? (String)formatter.format(this.jXDatePickerBEGIN.getDate()) : "2000-01-01"));
        hm.put("dataEnd", (dEstate ? (String)formatter.format(this.jXDatePickerEND.getDate()) : "2099-01-01"));
        hm.put("in_levelx", "" + this.level);
        hm.put("id_sdtn", "" + this.getIn_id_sdtn());
        imakante.sales.aeCaseOpReport cop = new imakante.sales.aeCaseOpReport(this, true, getConn(), hm, otchetPrihodi);
        cop.setVisible(true);
    }
    
    private String fillZero(int Inp) {
        String p = "0000000";
        String EndString = "";
        p = String.valueOf(Inp);
        int k = 7 - p.length();
        for(int i = 0; i < k; i++) {
            EndString = "0" + EndString;
        }
        return EndString;
    }
    
    public int getHInt() {
        return hInt;
    }
    
    public void setHInt(int hInt) {
        this.hInt = hInt;
    }
    
    public int getHCode() {
        return hCode;
    }
    
    public void setHCode(int hCode) {
        this.hCode = hCode;
    }
    
    public String getHName() {
        return hName;
    }
    
    public void setHName(String hName) {
        this.hName = hName;
    }
    
    public int getLevelPermition() {
        return levelPermition;
    }
    
    public void setLevelPermition(int levelPermition) {
        this.levelPermition = levelPermition;
    }
    
    public boolean isIsNew() {
        return isNew;
    }
    
    public void setIsNew(boolean isNew) {
        this.isNew = isNew;
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
    }
    
    public java.sql.Statement getStm() {
        return stm;
    }
    
    public void setStm(java.sql.Statement stm) {
        this.stm = stm;
    }
}
