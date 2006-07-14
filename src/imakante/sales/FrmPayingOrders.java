
package imakante.sales;

public class FrmPayingOrders extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmPayingOrders(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();
        constructObject();
        /* Here generally is applied a filter, which divides the main resultset in two base categories:
         * 1. Juridical persons (0 in database); 2. Physical persons (1 in database)
         */
        initTable(getOrderingPerson());
        initComponents();
        jComboBox1.addItem("--------------");
        Currencies = getInternalObject().getAvailableCurrencies();
        for(int i = 0; i < Currencies.length; i++)
            jComboBox1.addItem(new String(Currencies[i]));
        jComboBox2.addItem("-------------------------");
        OrderTypes = getInternalObject().getTypesOfOreders();
        for(int i = 0; i < OrderTypes.length; i++)
            jComboBox2.addItem(new String(OrderTypes[i]));
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextField2 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jButtonSearch = new javax.swing.JButton();
        jComboBox1 = new javax.swing.JComboBox();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jComboBox2 = new javax.swing.JComboBox();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel6 = new javax.swing.JLabel();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jPanel2 = new javax.swing.JPanel();
        jLabel7 = new javax.swing.JLabel();
        jRadioButton1 = new javax.swing.JRadioButton();
        jRadioButton2 = new javax.swing.JRadioButton();
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
        setTitle("\u041f\u043b\u0430\u0442\u0435\u0436\u043d\u0438 \u043d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMinimumSize(new java.awt.Dimension(890, 470));
        setPreferredSize(new java.awt.Dimension(900, 480));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(getTable());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 75));
        jLabel1.setText("\u041a\u043e\u0434:");

        jTextField1.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextField1.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextField1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField1FocusGained(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });

        jLabel2.setText("\u041f\u043e\u043b\u0443\u0447\u0430\u0442\u0435\u043b:");

        jTextField2.setPreferredSize(new java.awt.Dimension(80, 20));
        jTextField2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextField2FocusGained(evt);
            }
        });
        jTextField2.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField2KeyPressed(evt);
            }
        });

        jLabel3.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jButtonSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButtonSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButtonSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSearchActionPerformed(evt);
            }
        });

        jLabel4.setText("\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u044f:");

        jLabel5.setText("\u041e\u0442 \u0434\u0430\u0442\u0430:");

        jLabel6.setText("\u0414\u043e \u0434\u0430\u0442\u0430:");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .add(55, 55, 55)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(35, 35, 35))
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(5, 5, 5)
                        .add(jTextField1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 128, Short.MAX_VALUE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jTextField2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)))
                .add(29, 29, 29)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .add(14, 14, 14)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jComboBox2, 0, 161, Short.MAX_VALUE)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(79, 79, 79)
                        .add(jComboBox1, 0, 82, Short.MAX_VALUE)))
                .add(39, 39, 39)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 48, Short.MAX_VALUE)
                    .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 48, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(30, 30, 30)
                .add(jButtonSearch, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 97, Short.MAX_VALUE)
                .add(30, 30, 30))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(26, 26, 26)
                        .add(jButtonSearch))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(19, 19, 19)
                        .add(jLabel5))
                    .add(jPanel4Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jPanel4Layout.createSequentialGroup()
                                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                    .add(jLabel1)
                                    .add(jLabel3)
                                    .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                                .add(8, 8, 8)
                                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                                    .add(jLabel2)
                                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 27, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                                    .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                                        .add(jComboBox2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                                        .add(jLabel6))
                                    .add(jLabel4))
                                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jLabel7.setText("\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438:   ");
        jPanel2.add(jLabel7);

        buttonGroup1.add(jRadioButton1);
        jRadioButton1.setSelected(true);
        jRadioButton1.setText("\u041f\u0440\u0435\u0432\u043e\u0434\u043d\u0438 \u043d\u0430\u0440\u0435\u0436\u0434\u0430\u043d\u0438\u044f");
        jRadioButton1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioButton1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jRadioButton1.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jRadioButton1ItemStateChanged(evt);
            }
        });

        jPanel2.add(jRadioButton1);

        buttonGroup1.add(jRadioButton2);
        jRadioButton2.setText("\u0412\u043d\u043e\u0441\u043d\u0438 \u0431\u0435\u043b\u0435\u0436\u043a\u0438");
        jRadioButton2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        jRadioButton2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        jRadioButton2.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jRadioButton2ItemStateChanged(evt);
            }
        });

        jPanel2.add(jRadioButton2);

        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

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
        jButtonEdit.setEnabled(false);
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
        jPanel3.add(jButtonPrnReport);

        jButtonDel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Delete 2.png")));
        jButtonDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDel.setEnabled(false);
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
        jButtonDeleteAll.setEnabled(false);
        jPanel3.add(jButtonDeleteAll);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jRadioButton1ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jRadioButton1ItemStateChanged
        if (jRadioButton1.isSelected()) {
            this.setOrderingPerson(0);
            this.setIdOrderType(1);     // Razpla6taniq
        } else {
            this.setOrderingPerson(1);
            this.setIdOrderType(2);     // DDS-ta
        }
        refreshTable();
    }//GEN-LAST:event_jRadioButton1ItemStateChanged
    
    private void jRadioButton2ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jRadioButton2ItemStateChanged
        if (jRadioButton2.isSelected()) {
            this.setOrderingPerson(1);
            this.setIdOrderType(2);     // DDS-ta
        } else {
            this.setOrderingPerson(0);
            this.setIdOrderType(1);     // Razpla6taniq
        }
        refreshTable();
    }//GEN-LAST:event_jRadioButton2ItemStateChanged
    
    private void jTextField1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField1FocusGained
        jTextField1.selectAll();
    }//GEN-LAST:event_jTextField1FocusGained
    
    private void jTextField2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextField2FocusGained
        jTextField2.selectAll();
    }//GEN-LAST:event_jTextField2FocusGained
    
    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField1.setText(""); }
    }//GEN-LAST:event_jTextField1KeyPressed
    
    private void jTextField2KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField2KeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords();
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextField2.setText(""); }
    }//GEN-LAST:event_jTextField2KeyPressed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        printTable();
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
//        delRecord();
    }//GEN-LAST:event_jButtonDelActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
//        editRecord();
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        newRecord();
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JButton jButtonSearch;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JComboBox jComboBox2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JRadioButton jRadioButton1;
    private javax.swing.JRadioButton jRadioButton2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    // End of variables declaration//GEN-END:variables
    
    //--------------- My Variables
    private int id = 0;
    private int orderingPerson = 0;     // 0 - Juridical Person, 1 - Physical Person
    private int idOrderType = 0;        //
    private String OrderType = "";
    private int idBankAccount = 0;
    private String BankName = "";
    private String OurIBAN = "";
    private int idTypeAccount = 0;
    private String TypeAccount = "";
    private int idPerson = 0;
    private String namePerson = "";
    private int idContragent = 0;
    private String NameContragent = "";
    private int CodeContragent = 0;
    private String BankR = "";
    private String IBANR = "";
    private String BICR = "";
    private String CurrencyR = "";
    private String BankVAT = "";
    private String IBANVAT = "";
    private String BICVAT = "";
    private String CurrencyVAT = "";
    private double amount = 0.00;
    private String osnovanie = "";
    private String poiasnenie = "";
    private String instant = "0000-00-00";
    private String dateBegin = "0000-00-00";
    private String dateEnd = "0000-00-00";
    
    private String Currencies[];
    private String OrderTypes[];
    
    private int idChosenPerson = 0;
    private String nameChosenPerson = "";
    private int idChosenContragent = 0;
    private int codeChosenContragent = 0;
    private String nameChosenContragent = "";
    private String chosenIBAN = "";
    private String chosenCurrency = "";
    
    private boolean atBegining = false;
    private boolean atEnd = false;
    private int row;
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private imakante.sales.dbPayingOrders internalObject;
    private java.sql.ResultSet rs;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.ResultSet rsC;
    private imakante.com.CustomTableModel modelC;
    private imakante.com.CustomTable tableC;
    private java.sql.ResultSet rsP;
    private imakante.com.CustomTableModel modelP;
    private imakante.com.CustomTable tableP;
    public static final String NamesJP[] = { "id",
    "ordering_person",
    "id_type_porder",
    "\u0422\u0438\u043F \u043D\u0430 \u043E\u043F\u0435\u0440\u0430\u0446\u0438\u044F\u0442\u0430",
    "id_bank_account",
    "\u0411\u0430\u043D\u043A\u0430 \u043D\u0430 \u041D\u0430\u0440\u0435\u0434\u0438\u0442\u0435\u043B\u044F",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN)",
    "id_type_account",
    "\u0422\u0438\u043F \u043D\u0430 \u0441\u043C\u0435\u0442\u043A\u0430\u0442\u0430",
    "id_contragent",
    "\u041F\u043E\u043B\u0443\u0447\u0430\u0442\u0435\u043B",
    "\u041A\u043E\u0434",
    "\u0411\u0430\u043D\u043A\u0430 \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN) \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434 (BIC) - \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0412\u0430\u043B\u0443\u0442\u0430 \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0435",
    "\u0411\u0430\u043D\u043A\u0430 \u043F\u043E \u0414\u0414\u0421",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN) \u043F\u043E \u0414\u0414\u0421",
    "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434 (BIC) - \u0414\u0414\u0421",
    "\u0412\u0430\u043B\u0443\u0442\u0430 \u043F\u043E \u0414\u0414\u0421",
    "\u0421\u0443\u043C\u0430",
    "\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435",
    "\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F",
    "\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430" };
    public static final String NamesPP[] = { "id",
    "ordering_person",
    "id_type_porder",
    "\u0422\u0438\u043F \u043D\u0430 \u043E\u043F\u0435\u0440\u0430\u0446\u0438\u044F\u0442\u0430",
    "id_ls_n_person",
    "\u0418\u043C\u0435",
    "id_contragent",
    "\u041F\u043E\u043B\u0443\u0447\u0430\u0442\u0435\u043B",
    "\u041A\u043E\u0434",
    "\u0411\u0430\u043D\u043A\u0430 \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN) \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434 (BIC) - \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0438\u044F",
    "\u0412\u0430\u043B\u0443\u0442\u0430 \u043F\u043E \u0440\u0430\u0437\u043F\u043B\u0430\u0449\u0430\u043D\u0435",
    "\u0411\u0430\u043D\u043A\u0430 \u043F\u043E \u0414\u0414\u0421",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN) \u043F\u043E \u0414\u0414\u0421",
    "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434 (BIC) - \u0414\u0414\u0421",
    "\u0412\u0430\u043B\u0443\u0442\u0430 \u043F\u043E \u0414\u0414\u0421",
    "\u0421\u0443\u043C\u0430",
    "\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435",
    "\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F",
    "\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430" };
    public static final String NamesC[] = { "id", "\u041A\u043E\u0434", "\u0418\u043C\u0435",
    "\u0411\u0430\u043D\u043A\u0430", "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434",
    "\u0421\u043C\u0435\u0442\u043A\u0430", "\u0412\u0430\u043B\u0443\u0442\u0430" };
    public static final String NamesP[] = { "id", "\u0418\u043C\u0435\u043D\u0430" };
    //---------------END My Variables
    
    //---------------START Methods
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn == null) System.out.println("*** FOR SOME REASON CONNECTION COULD NOT BE ESTABLISHED! ***");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            internalObject = new imakante.sales.dbPayingOrders(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable(int orderingPerson) {
        int filter = orderingPerson;
        try {
            if (filter == 0) {  // 0 - Juridical Person
                setRs(internalObject.getTable(getOrderingPerson()));
                setModel(new imakante.com.CustomTableModel(getConn(), getRs(), NamesJP));
                setTable(new imakante.com.CustomTable(getModel()));
                HideColumnsForJP();
            }
            if (filter == 1) {  // 1 - Physical Person
                setRs(internalObject.getTable(getOrderingPerson()));
                setModel(new imakante.com.CustomTableModel(getConn(), getRs(), NamesPP));
                setTable(new imakante.com.CustomTable(getModel()));
                HideColumnsForPP();
            }
        } catch(Exception e) { e.printStackTrace(); }
        getTable().requestFocus();
        try {
            getTable().setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void HideColumnsForJP() {
        HideColumns(getColumnIndex("id"));
        HideColumns(getColumnIndex("ordering_person"));
        HideColumns(getColumnIndex("id_type_porder"));
        HideColumns(getColumnIndex("id_bank_account"));
        HideColumns(getColumnIndex("id_type_account"));
        HideColumns(getColumnIndex("id_contragent"));
    }
    
    private void HideColumnsForPP() {
        HideColumns(getColumnIndex("id"));
        HideColumns(getColumnIndex("ordering_person"));
        HideColumns(getColumnIndex("id_type_porder"));
        HideColumns(getColumnIndex("id_ls_n_person"));
        HideColumns(getColumnIndex("id_contragent"));
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
    
    public imakante.sales.dbPayingOrders getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(imakante.sales.dbPayingOrders val) {
        this.internalObject = val;
    }
    
    public java.sql.ResultSet getRs() {
        return rs;
    }
    
    public void setRs(java.sql.ResultSet rs) {
        this.rs = rs;
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
        i  = getTable().getRowCount() - 1;
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
    
    public int getOrderingPerson() {
        return orderingPerson;
    }
    
    public void setOrderingPerson(int orderingPerson) {
        this.orderingPerson = orderingPerson;
    }
    
    public int getIdOrderType() {
        return idOrderType;
    }
    
    public void setIdOrderType(int idOrderType) {
        this.idOrderType = idOrderType;
    }
    
    public String getOrderType() {
        return OrderType;
    }
    
    public void setOrderType(String OrderType) {
        this.OrderType = OrderType;
    }
    
    public int getIdBankAccount() {
        return idBankAccount;
    }
    
    public void setIdBankAccount(int idBankAccount) {
        this.idBankAccount = idBankAccount;
    }
    
    public String getBankName() {
        return BankName;
    }
    
    public void setBankName(String BankName) {
        this.BankName = BankName;
    }
    
    public String getOurIBAN() {
        return OurIBAN;
    }
    
    public void setOurIBAN(String OurIBAN) {
        this.OurIBAN = OurIBAN;
    }
    
    public int getIdTypeAccount() {
        return idTypeAccount;
    }
    
    public void setIdTypeAccount(int idTypeAccount) {
        this.idTypeAccount = idTypeAccount;
    }
    
    public String getTypeAccount() {
        return TypeAccount;
    }
    
    public void setTypeAccount(String TypeAccount) {
        this.TypeAccount = TypeAccount;
    }
    
    public int getIdPerson() {
        return idPerson;
    }
    
    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }
    
    public String getNamePerson() {
        return namePerson;
    }
    
    public void setNamePerson(String namePerson) {
        this.namePerson = namePerson;
    }
    
    public int getIdContragent() {
        return idContragent;
    }
    
    public void setIdContragent(int idContragent) {
        this.idContragent = idContragent;
    }
    
    public String getNameContragent() {
        return NameContragent;
    }
    
    public void setNameContragent(String NameContragent) {
        this.NameContragent = NameContragent;
    }
    
    public int getCodeContragent() {
        return CodeContragent;
    }
    
    public void setCodeContragent(int CodeContragent) {
        this.CodeContragent = CodeContragent;
    }
    
    public String getBankR() {
        return BankR;
    }
    
    public void setBankR(String BankR) {
        this.BankR = BankR;
    }
    
    public String getIBANR() {
        return IBANR;
    }
    
    public void setIBANR(String IBANR) {
        this.IBANR = IBANR;
    }
    
    public String getCurrencyR() {
        return CurrencyR;
    }
    
    public void setCurrencyR(String CurrencyR) {
        this.CurrencyR = CurrencyR;
    }
    
    public String getBankVAT() {
        return BankVAT;
    }
    
    public void setBankVAT(String BankVAT) {
        this.BankVAT = BankVAT;
    }
    
    public String getIBANVAT() {
        return IBANVAT;
    }
    
    public void setIBANVAT(String IBANVAT) {
        this.IBANVAT = IBANVAT;
    }
    
    public String getCurrencyVAT() {
        return CurrencyVAT;
    }
    
    public void setCurrencyVAT(String CurrencyVAT) {
        this.CurrencyVAT = CurrencyVAT;
    }
    
    public double getAmount() {
        return amount;
    }
    
    public void setAmount(double amount) {
        this.amount = amount;
    }
    
    public String getBICR() {
        return BICR;
    }
    
    public void setBICR(String BICR) {
        this.BICR = BICR;
    }
    
    public String getBICVAT() {
        return BICVAT;
    }
    
    public void setBICVAT(String BICVAT) {
        this.BICVAT = BICVAT;
    }
    
    public String getOsnovanie() {
        return osnovanie;
    }
    
    public void setOsnovanie(String osnovanie) {
        this.osnovanie = osnovanie;
    }
    
    public String getPoiasnenie() {
        return poiasnenie;
    }
    
    public void setPoiasnenie(String poiasnenie) {
        this.poiasnenie = poiasnenie;
    }
    
    public String getInstant() {
        return instant;
    }
    
    public void setInstant(String instant) {
        this.instant = instant;
    }
    
    public String getDateBegin() {
        return dateBegin;
    }
    
    public void setDateBegin(String dateBegin) {
        this.dateBegin = dateBegin;
    }
    
    public String getDateEnd() {
        return dateEnd;
    }
    
    public void setDateEnd(String dateEnd) {
        this.dateEnd = dateEnd;
    }
    
    public  void setRow(int val) {
        row = val;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariables();
            getTable().changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(false);
        setAtEnd(true);
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow())
                setRow(getRow()+1);
            setAtBegining(false);
            try {
                setAllVariables();
                getTable().changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
            if(getRow() == getMaxRow())
                setAtEnd(true);
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if(getRow() > 0)
                setRow(getRow() - 1);
            setAtEnd(false);
            try {
                setAllVariables();
                getTable().changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() + 1); }
        }
        if(getRow() == 0)
            setAtBegining(true);
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariables();
            getTable().changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(true);
        setAtEnd(false);
    }
    
    private void newRecord() {
        internalObject.insertRow();
        refreshTable();
        setRow(getMaxRow());
        getTable().changeSelection(getRow(), 2, false, false);
        setAllVariables();
        setAtBegining(false);
        setAtEnd(true);
        if (this.jRadioButton1.isSelected()) {
            imakante.sales.aePayingOrdersJP ae_POrder = new imakante.sales.aePayingOrdersJP(this, true);
            ae_POrder.setVisible(true);
        }
        if (this.jRadioButton2.isSelected()) {
            imakante.sales.aePayingOrdersPP ae_POrder = new imakante.sales.aePayingOrdersPP(this, true);
            ae_POrder.setVisible(true);
        }
        refreshTable();
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Platejni Narejdania");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            getTable().print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void searchRecords() {
        try {
            try {
//                if (jTextField1.getText().equals("")) {
//                    rs = internalObject.searchRecords(-1, jTextEGN.getText(), jTextName.getText());
//                } else {
//                    rs = internalObject.searchRecords(Integer.parseInt(jTextField1.getText()), jTextEGN.getText(), jTextName.getText());
//                }
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
                jTextField2.requestFocus();
            }
            jScrollPane1.remove(getTable());
            setModel(new imakante.com.CustomTableModel(getConn(), getRs(), NamesJP));
            setTable(new imakante.com.CustomTable(getModel()));
            jScrollPane1.getViewport().add(getTable());
            if (getOrderingPerson() == 0)   // 0 - Juridical Person
                HideColumnsForJP();
            if (getOrderingPerson() == 1)   // 1 - Physical Person
                HideColumnsForPP();
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(getTable());
        if (getOrderingPerson() == 0) {  // 0 - Juridical Person
            setRs(internalObject.getTable(0));
            setModel(new imakante.com.CustomTableModel(getConn(), getRs(), NamesJP));
            setTable(new imakante.com.CustomTable(getModel()));
            jScrollPane1.getViewport().add(getTable());
            HideColumnsForJP();
        }
        if (getOrderingPerson() == 1) {  // 1 - Physical Person
            setRs(internalObject.getTable(1));
            setModel(new imakante.com.CustomTableModel(getConn(), getRs(), NamesPP));
            setTable(new imakante.com.CustomTable(getModel()));
            jScrollPane1.getViewport().add(getTable());
            HideColumnsForPP();
        }
        jTextField1.setText("");
        jTextField2.setText("");
        jComboBox1.setSelectedIndex(0);
        jComboBox2.setSelectedIndex(0);
        jScrollPane1.repaint();
    }
    
//    private void editRecord() {
//        if (table.getSelectedRow() != -1) {
//            setRow(table.getSelectedRow());
//            if(getRow() == 0) {
//                setAtBegining(true);
//            } else if(getRow() == getMaxRow()){
//                setAtEnd(true);
//            } else {
//                setAtBegining(false);
//                setAtEnd(false);
//            }
//            setAllVariables();
//            imakante.sales.aePayingOrders ae_POrder = new imakante.sales.aePayingOrders(this, true);
//            ae_POrder.setVisible(true);
//        } else {  }
//    }
//
//    private void delRecord(){
//        if(table.getSelectedRow() != -1) {
//            setRow(table.getSelectedRow());
//            setAllVariables();
//            internalObject.deleteRow(getId());
//            refreshTable();
//        }
//    }
    
    public void choosePerson(String Name) {
        String name = Name;
        try {
            rsP = getInternalObject().getPersonsList(name);
        } catch (Exception ex) { ex.printStackTrace(); }
        modelP = new imakante.com.CustomTableModel(getConn(), rsP, NamesP);
        tableP = new imakante.com.CustomTable(modelP);
//        try {
//            tableC.setEditingRow(0);
//        } catch(Exception ex) { ex.printStackTrace(); }
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, tableP,
                "\u0421\u043C\u0435\u0442\u043A\u0430\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u043F\u043E\u0434\u043E\u0442\u0447\u0435\u0442\u043D\u043E \u043B\u0438\u0446\u0435", "");
        td.setVisible(true);
    }
    
    public void validatePerson() {
        
    }
    
    public void chooseContragent(int CodeFragment) {
        int codeContragent = CodeFragment;
        int orderType = getIdOrderType();
        try {
            rsC = getInternalObject().getContragentsList(codeContragent, orderType);
        } catch (Exception ex) { ex.printStackTrace(); }
        modelC = new imakante.com.CustomTableModel(getConn(), rsC, NamesC);
        tableC = new imakante.com.CustomTable(modelC);
//        try {
//            tableC.setEditingRow(0);
//        } catch(Exception ex) { ex.printStackTrace(); }
        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, tableC,
                "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u043A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442", "");
        td.setVisible(true);
    }
    
    public void validateContragentByCode(int codeForChecking) {
        setIdChosenContragent(0);
        setNameChosenContragent("");
        setChosenIBAN("");
        setChosenCurrency("");
        getInternalObject().getContragentByCode(codeForChecking, getIdOrderType());
        try {
            while (getRs().next()) {
                setIdChosenContragent(getRs().getInt("id_contragent"));
                setNameChosenContragent(getRs().getString("name_n_contragent"));
                if (getIdOrderType() == 1 || getIdOrderType() == 0) {      // 0 e edinstweniqt slu4ai za wnosnite belejki
                    setChosenIBAN(getRs().getString("IBANR"));
                    setChosenCurrency(getRs().getString("VIDVALR"));
                } else if (getIdOrderType() == 2) {
                    setChosenIBAN(getRs().getString("IBAND"));
                    setChosenCurrency(getRs().getString("VIDVALD"));
                }
            }
        } catch (java.sql.SQLException sqlex) { sqlex.printStackTrace(); }
        if (getIdChosenContragent() < 1 || getCodeChosenContragent() < 1) {
            javax.swing.JOptionPane.showMessageDialog(null, "\u041d\u044f\u043c\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0441 \u0442\u0430\u043a\u044a\u0432 \u043a\u043e\u0434!", 
                    "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }
    
    private int getColumnIndex(String in) {
        int count = getTable().getColumnCount();
        for(int i = 0; i < count; i++) {
            if(getTable().getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    public int getIdChosenPerson() {
        return idChosenPerson;
    }
    
    public void setIdChosenPerson(int idChosenPerson) {
        this.idChosenPerson = idChosenPerson;
    }
    
    public String getNameChosenPerson() {
        return nameChosenPerson;
    }
    
    public void setNameChosenPerson(String nameChosenPerson) {
        this.nameChosenPerson = nameChosenPerson;
    }
    
    public int getIdChosenContragent() {
        return idChosenContragent;
    }
    
    public void setIdChosenContragent(int idChosenContragent) {
        this.idChosenContragent = idChosenContragent;
    }
    
    public int getCodeChosenContragent() {
        return codeChosenContragent;
    }
    
    public void setCodeChosenContragent(int codeChosenContragent) {
        this.codeChosenContragent = codeChosenContragent;
    }
    
    public String getNameChosenContragent() {
        return nameChosenContragent;
    }
    
    public void setNameChosenContragent(String nameChosenContragent) {
        this.nameChosenContragent = nameChosenContragent;
    }
    
    public String getChosenIBAN() {
        return chosenIBAN;
    }
    
    public void setChosenIBAN(String chosenIBAN) {
        this.chosenIBAN = chosenIBAN;
    }
    
    public String getChosenCurrency() {
        return chosenCurrency;
    }
    
    public void setChosenCurrency(String chosenCurrency) {
        this.chosenCurrency = chosenCurrency;
    }
    
    private void HideColumns(int col) {
        int iColumn = col;
        getTable().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        getTable().getColumnModel().getColumn(iColumn).setMinWidth(0);
        getTable().getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        getTable().getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
    }
    
    private void setAllVariables() {
        setId((Integer) getTable().getValueAt(getRow(), getColumnIndex("id")));
        setOrderingPerson((Integer) getTable().getValueAt(getRow(), getColumnIndex("ordering_person")));
        setIdOrderType((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_type_porder")));
        if (getOrderingPerson() == 0) {
            setIdBankAccount((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_bank_account")));
        }
        if (getOrderingPerson() == 1) {
            setIdPerson((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_ls_n_person")));
        }
        setIdContragent((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_contragent")));
        java.math.BigDecimal bd2d = (java.math.BigDecimal) getTable().getValueAt(getRow(), getColumnIndex("\u0421\u0443\u043C\u0430"));
        setAmount(bd2d.doubleValue());
        setOsnovanie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435")));
        setPoiasnenie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F")));
        java.sql.Date inst = (java.sql.Date) getTable().getValueAt(getRow(), getColumnIndex("\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430"));
        setInstant(inst.toString());
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
    
}
