
package imakante.sales;

public class FrmPayingOrders extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmPayingOrders(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();
        constructObject();
        /* Here generally is applied a filter, which divides the main resultset into two base categories:
         * 1. Juridical persons (0 in database); 2. Physical persons (1 in database)
         */
        initTable(getOrderingPerson());
        initComponents();
        
        // TODO Po-4isto e, ako komboto e spisyk na wsi4ki nali4ni w tablicata waluti (izpolzwanite), otkolkoto
        // na wsi4ki nali4ni w bazata danni waluti (n_money)
        jComboBox1.addItem("----------");
        Currencies = getInternalObject().getAvailableCurrencies();
        for(int i = 0; i < Currencies.length; i++)
            jComboBox1.addItem(new String(Currencies[i]));
        manageSearchFields();
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
        jButtonPrintOrder = new javax.swing.JButton();
        jButtonPrintTable = new javax.swing.JButton();
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
        setMinimumSize(new java.awt.Dimension(900, 480));
        setPreferredSize(new java.awt.Dimension(900, 480));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(getTable());
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 75));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
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

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
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

        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel3.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");

        jButtonSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButtonSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButtonSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSearchActionPerformed(evt);
            }
        });

        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel4.setText("\u041e\u043f\u0435\u0440\u0430\u0446\u0438\u044f:");

        jLabel5.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel5.setText("\u041e\u0442 \u0434\u0430\u0442\u0430:");

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel6.setText("\u0414\u043e \u0434\u0430\u0442\u0430:");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 113, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 44, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 123, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(24, 24, 24)
                        .add(jLabel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 56, Short.MAX_VALUE))
                    .add(jPanel4Layout.createSequentialGroup()
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jLabel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 76, Short.MAX_VALUE)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jComboBox2, 0, 159, Short.MAX_VALUE)
                        .add(27, 27, 27))
                    .add(jPanel4Layout.createSequentialGroup()
                        .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 68, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 57, Short.MAX_VALUE)
                    .add(jLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 57, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 31, Short.MAX_VALUE)
                .add(jButtonSearch, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(34, 34, 34))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(27, Short.MAX_VALUE)
                .add(jButtonSearch)
                .add(19, 19, 19))
            .add(jPanel4Layout.createSequentialGroup()
                .add(38, 38, 38)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jComboBox2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel4)
                    .add(jLabel6))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jLabel3)
                    .add(jLabel1)
                    .add(jTextField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jComboBox1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel5))
                .add(8, 8, 8)
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(jTextField2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
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

        jButtonPrintOrder.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jButtonPrintOrder.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrintOrder.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintOrderActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrintOrder);

        jButtonPrintTable.setText("\u041f\u0435\u0447\u0430\u0442 \u043e\u0442\u0447\u0435\u0442");
        jButtonPrintTable.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintTableActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrintTable);

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

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-889)/2, (screenSize.height-497)/2, 889, 497);
    }// </editor-fold>//GEN-END:initComponents
    
    private void jButtonPrintTableActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintTableActionPerformed
        printTable();
    }//GEN-LAST:event_jButtonPrintTableActionPerformed
    
    private void jRadioButton1ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jRadioButton1ItemStateChanged
        resetFields();
        manageSearchFields();
        if (jRadioButton1.isSelected()) {
            this.setOrderingPerson(0);
            this.setIdOrderType(2);     // Razpla6taniq
        } else {
            this.setOrderingPerson(1);
            this.setIdOrderType(1);     // DDS-ta
        }
        refreshTable();
    }//GEN-LAST:event_jRadioButton1ItemStateChanged
    
    private void jRadioButton2ItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jRadioButton2ItemStateChanged
        resetFields();
        manageSearchFields();
        if (jRadioButton2.isSelected()) {
            this.setOrderingPerson(1);
            this.setIdOrderType(1);     // DDS-ta
        } else {
            this.setOrderingPerson(0);
            this.setIdOrderType(2);     // Razpla6taniq
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
    
    private void jButtonPrintOrderActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintOrderActionPerformed
        printOrder();
    }//GEN-LAST:event_jButtonPrintOrderActionPerformed
    
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
    private javax.swing.JButton jButtonPrintOrder;
    private javax.swing.JButton jButtonPrintTable;
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
    private String OurBIC = "";
    private String OurCurrency = "";
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
    
    private int CompNumber = 0;
    private int intTransfer;
    
    private String Currencies[];
    private String OrderTypes[];
    
    private int idChosenPerson = 0;
    private String nameChosenPerson = "";
    private int idChosenContragent = 0;
    private int codeChosenContragent = 0;
    private String nameChosenContragent = "";
    private String chosenBank = "";
    private String chosenBIC = "";
    private String chosenIBAN = "";
    private String chosenCurrency = "";
    
    private String bankBranch = "";
    private String bankAddress = "";
    
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
    "id_bank_account",
    "\u0411\u0430\u043D\u043A\u0430",
    "branch",
    "address",
    "\u0421\u043C\u0435\u0442\u043A\u0430 (IBAN)",
    "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434 (BIC)",
    "id_currency",
    "\u0412\u0430\u043B\u0443\u0442\u0430",
    "id_type_account",
    "\u0422\u0438\u043F \u0441\u043C\u0435\u0442\u043A\u0430",
    "\u0421\u0443\u043C\u0430",
    "\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435",
    "\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F",
    "\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430" };
    public static final String NamesC[] = { "id", "\u041A\u043E\u0434", "\u0418\u043C\u0435",
    "\u0411\u0430\u043D\u043A\u0430", "\u0411\u0430\u043D\u043A\u043E\u0432 \u043A\u043E\u0434",
    "\u0421\u043C\u0435\u0442\u043A\u0430", "\u0412\u0430\u043B\u0443\u0442\u0430" };
    public static final String NamesP[] = { "id", "\u0418\u043C\u0435\u043D\u0430" };
    private String searchField = "";
    private imakante.com.vcomponents.tableDialog td;
    private static imakante.sales.aePayingOrdersJP ajp;
    private static imakante.sales.aePayingOrdersPP app;
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
        HideColumns(getColumnIndex("id_bank_account"));
        HideColumns(getColumnIndex("branch"));
        HideColumns(getColumnIndex("address"));
        HideColumns(getColumnIndex("id_currency"));
        HideColumns(getColumnIndex("id_type_account"));
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
    
    protected int getMaxRow() {
        return getTable().getRowCount() - 1;
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
    
    public String getOurBIC() {
        return OurBIC;
    }
    
    public void setOurBIC(String OurBIC) {
        this.OurBIC = OurBIC;
    }
    
    public String getOurCurrency() {
        return OurCurrency;
    }
    
    public void setOurCurrency(String OurCurrency) {
        this.OurCurrency = OurCurrency;
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
            if (jRadioButton1.isSelected())
                setAllVariablesJP();
            if (jRadioButton2.isSelected())
                setAllVariablesPP();
            getTable().changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(false);
        setAtEnd(true);
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow())
                setRow(getRow() + 1);
            setAtBegining(false);
            try {
                if (jRadioButton1.isSelected())
                    setAllVariablesJP();
                if (jRadioButton2.isSelected())
                    setAllVariablesPP();
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
                if (jRadioButton1.isSelected())
                    setAllVariablesJP();
                if (jRadioButton2.isSelected())
                    setAllVariablesPP();
                getTable().changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() + 1); }
        }
        if(getRow() == 0)
            setAtBegining(true);
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            if (jRadioButton1.isSelected())
                setAllVariablesJP();
            if (jRadioButton2.isSelected())
                setAllVariablesPP();
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
        setAtBegining(false);
        setAtEnd(true);
        if (jRadioButton1.isSelected()) {
            setAllVariablesJP();
            ajp = new imakante.sales.aePayingOrdersJP(this, true);
            ajp.setVisible(true);
        }
        if (jRadioButton2.isSelected()) {
            setAllVariablesPP();
            app = new imakante.sales.aePayingOrdersPP(this, true);
            app.setVisible(true);
        }
        refreshTable();
    }
    
    protected void printOrder() {
        String jasperFile = "";
        String[] keys;
        java.util.HashMap hm = new java.util.HashMap();
        if (jRadioButton1.isSelected()) {
            setRow(getTable().getSelectedRow());
            setAllVariablesJP();
            jasperFile = "pn_freeform_razpla6taniq_extended.jasper";
            keys = new String[14];
            keys[0] = "bank";
            hm.put(keys[0], this.getBankName().toUpperCase());
            keys[1] = "branch";
            hm.put(keys[1], this.getBankBranch().toUpperCase());
            keys[2] = "address";
            hm.put(keys[2], this.getBankAddress().toUpperCase());
            keys[3] = "contragent";
            hm.put(keys[3], this.getNameChosenContragent().toUpperCase());
            keys[4] = "IBANcontragent";
            hm.put(keys[4], this.getChosenIBAN().toUpperCase());
            keys[5] = "BICcontragent";
            hm.put(keys[5], this.getChosenBIC().toUpperCase());
            keys[6] = "BANKcontragent";
            hm.put(keys[6], this.getChosenBank().toUpperCase());
            keys[7] = "currency";
            hm.put(keys[7], this.getChosenCurrency().toUpperCase());
            keys[8] = "amount";
            hm.put(keys[8], this.getAmount());
            keys[9] = "reason";
            hm.put(keys[9], this.getOsnovanie().toUpperCase());
            keys[10] = "comment";
            hm.put(keys[10], this.getPoiasnenie().toUpperCase());
            keys[11] = "firm";
            hm.put(keys[11], imakante.com.NewMain.getParamFirm().getName().toUpperCase());
            keys[12] = "iban";
            hm.put(keys[12], this.getOurIBAN().toUpperCase());
            keys[13] = "bic";
            hm.put(keys[13], this.getOurBIC().toUpperCase());
        } else if (jRadioButton2.isSelected()) {
            setRow(getTable().getSelectedRow());
            setAllVariablesPP();
            jasperFile = "pn_freeform_wnosna_belejka.jasper";
            keys = new String[11];
            imakante.com.priceToString prcT = new imakante.com.priceToString();
            double w = this.getAmount();
            prcT.setValue(w);
            prcT.ConstString();
            keys[0] = "bank";
            hm.put(keys[0], this.getBankName().toUpperCase());
            keys[1] = "branch";
            hm.put(keys[1], this.getBankBranch().toUpperCase());
            keys[2] = "address";
            hm.put(keys[2], this.getBankAddress().toUpperCase());
            keys[3] = "place";
            hm.put(keys[3], "");
            keys[4] = "firm";
            hm.put(keys[4], imakante.com.NewMain.getParamFirm().getName().toUpperCase());
            keys[5] = "IBAN";
            hm.put(keys[5], this.getOurIBAN().toUpperCase());
            keys[6] = "currency";
            hm.put(keys[6], this.getOurCurrency().toUpperCase());
            keys[7] = "amount";
            hm.put(keys[7], this.getAmount());
            keys[8] = "words";
            hm.put(keys[8], prcT.getEndString().toUpperCase());
            keys[9] = "person";
            hm.put(keys[9], this.getNameChosenPerson());
            keys[10] = "reason";
            hm.put(keys[10], this.getOsnovanie().toUpperCase());
        } else {
            keys = null;
            System.out.println("unable to handle the HashMap!");
        }
        imakante.com.vcomponents.tableDialogLite rep = new imakante.com.vcomponents.tableDialogLite(this, false, getConn(), hm, jasperFile);
        rep.setVisible(true);
        
        // TODO Za da raboti dolniqt wariant trqbwa pyrwo da se implementira klasa imakante.com.HashMap2Table(java.util.HashMap hm)
//        imakante.com.vcomponents.tableDialog td = new imakante.com.vcomponents.tableDialog(this, true, new imakante.com.HashMap2Table(hm), getConn(), hm, jasperFile,
//                "\u0418\u0437\u0433\u043B\u0435\u0434 \u043D\u0430 \u043F\u043B\u0430\u0442\u0435\u0436\u043D\u043E\u0442\u043E \u043D\u0430\u0440\u0435\u0436\u0434\u0430\u043D\u0435", "");
//        td.setVisible(true);
    }
    
    private void setReportParameters() {
        java.sql.ResultSet rsB;
        setRow(getTable().getSelectedRow());
        try {
            rsB = getInternalObject().getBankAccountProperties(getIdBankAccount());
            rsB.next();
            setBankBranch(rsB.getString("branch_nbc"));
            setBankAddress(rsB.getString("address_nbc"));
        } catch(Exception ex) { ex.printStackTrace(); }
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("\u041F\u043B\u0430\u0442\u0435\u0436\u043D\u0438" +
                    " \u041D\u0430\u0440\u0435\u0436\u0434\u0430\u043D\u0438\u044F");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("\u0421\u0442\u0440. " +
                    "- {0} -" + " \u0418\u041C\u0410\u041A\u0410\u041D\u0422\u0415' ");
            getTable().print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void searchRecords() {
        
        // TODO working out the search method
        
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
    
    private void manageSearchFields() {
        // TODO Manage info to be send to database, according to the context of the selected JRadioButton (0 or 1 state)
        if (jRadioButton1.isSelected()) {
            jLabel1.setVisible(true);
            jTextField1.setVisible(true);
            jLabel2.setText("\u041F\u043E\u043B\u0443\u0447\u0430\u0442\u0435\u043B:");
            
            
            jComboBox2.addItem("--------------------------");
            OrderTypes = getInternalObject().getTypesOfOreders();
            for(int i = 0; i < OrderTypes.length; i++)
                jComboBox2.addItem(new String(OrderTypes[i]));
            
        }
        if (jRadioButton2.isSelected()) {
            jLabel1.setVisible(false);
            jTextField1.setVisible(false);
            jLabel2.setText("\u041F\u043E\u0434\u043E\u0442\u0447\u0435\u0442\u043D\u043E \u043B\u0438\u0446\u0435:");
            
            
            jComboBox2.addItem("-----------------------------------");
            OrderTypes = getInternalObject().getTypesOfOreders();
            for(int i = 0; i < OrderTypes.length; i++)
                jComboBox2.addItem(new String(OrderTypes[i]));
            
        }
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
    
    @Override
    public void setIntTransfer(int intTransfer) {
        this.intTransfer = intTransfer;
        if (CompNumber == 1) {
            ajp.setIsFromF7();
            setValuesFromContragentId(intTransfer);
        }
        if (CompNumber == 2) {
            app.setIsFromF7();
            if (this.getSearchField().equals("\u0418\u043C\u0435\u043D\u0430"))
                setValuesFromPersonId(intTransfer);
            if (this.getSearchField().equals("\u041A\u043E\u0434"))
                setValuesFromContragentId(intTransfer);
        }
    }
    
    public void choosePerson(String NameFragment) {
        String name = NameFragment;
        this.setSearchField("");
        try {
            rsP = getInternalObject().getPersonsList(name);
            int i = 0;
            while(rsP.next()) i++;  // counts the ROWS in the ResultSet
            rsP.beforeFirst();
            if (i > 1) {
                modelP = new imakante.com.CustomTableModel(getConn(), rsP, NamesP);
                tableP = new imakante.com.CustomTable(modelP);
                try {
                    tableP.setEditingRow(0);
                } catch(Exception ex) { ex.printStackTrace(); }
                this.setSearchField("\u0418\u043C\u0435\u043D\u0430");
                this.CompNumber = 2;
                td = new imakante.com.vcomponents.tableDialog(this, true, tableP,
                        "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u043F\u043E\u0434\u043E\u0442\u0447\u0435\u0442\u043D\u043E \u043B\u0438\u0446\u0435",
                        "", this.getSearchField());
                td.setVisible(true);
            } else if (i == 1) {
                rsP.next();
                setIdChosenPerson(rsP.getInt("id_ls_n_person"));
                setNameChosenPerson(rsP.getString("name_ls_n_person"));
                app.changeField();
            } else {
                javax.swing.JOptionPane.showMessageDialog(null,
                        "\u041d\u044f\u043c\u0430 \u043F\u043E\u0434\u043E\u0442\u0447\u0435\u0442\u043D\u043E \u043B\u0438\u0446\u0435 \u0441 \u0442\u0430\u043a\u044a\u0432 \u043a\u043e\u0434!",
                        "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415", javax.swing.JOptionPane.ERROR_MESSAGE);
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected void setValuesFromPersonId(int id) {
        java.sql.ResultSet rsP = null;
        if (id > 0) {
            try {
                rsP = this.getInternalObject().getPersonById(id);
                rsP.next();
                this.setIdChosenPerson(rsP.getInt("id_ls_n_person"));
                this.setNameChosenPerson(rsP.getString("name_ls_n_person"));
                if (app != null)
                    app.changeField();
            } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
        }
    }
    
    public void chooseContragent(int CodeFragment) {
        this.setSearchField("");
        try {
            rsC = getInternalObject().getContragentsList(CodeFragment, getIdOrderType());
            int i = 0;
            while(rsC.next()) i++;  // counts the ROWS in the ResultSet
            rsC.beforeFirst();
            if (i > 1) {
                modelC = new imakante.com.CustomTableModel(getConn(), rsC, NamesC);
                tableC = new imakante.com.CustomTable(modelC);
                try {
                    tableC.setEditingRow(0);
                } catch(Exception ex) { ex.printStackTrace(); }
                this.setSearchField("\u041A\u043E\u0434");
                if (this.jRadioButton1.isSelected())
                    this.CompNumber = 1;
                else if (this.jRadioButton2.isSelected())
                    this.CompNumber = 2;
                td = new imakante.com.vcomponents.tableDialog(this, true, tableC,
                        "\u0418\u0437\u0431\u043E\u0440 \u043D\u0430 \u043A\u043E\u043D\u0442\u0440\u0430\u0433\u0435\u043D\u0442",
                        "", this.getSearchField());
                td.setVisible(true);
            } else if (i == 1) {
                rsC.next();
                setIdChosenContragent(rsC.getInt("id_contragent"));
                setCodeChosenContragent(rsC.getInt("code_contragent"));
                setNameChosenContragent(rsC.getString("name_n_contragent"));
                if (getIdOrderType() == 2 || getIdOrderType() == 5) {   // platejni kym razpl. smetka i Biudjeta
                    setChosenBank(rsC.getString("BANKNAMER"));
                    setChosenBIC(rsC.getString("BICR"));
                    setChosenIBAN(rsC.getString("IBANR"));
                    setChosenCurrency(rsC.getString("VIDVALR"));
                } else if (getIdOrderType() == 3 || getIdOrderType() == 4) {    // platejni po DDS smetki
                    setChosenBank(rsC.getString("BANKNAMED"));
                    setChosenBIC(rsC.getString("BICD"));
                    setChosenIBAN(rsC.getString("IBAND"));
                    setChosenCurrency(rsC.getString("VIDVALD"));
                } else if (getIdOrderType() == 1) {     // wnosni belejki ot fiz. lica - samo w razpl. smetki
                    setChosenBank(rsC.getString("BANKNAMER"));
                    setChosenBIC(rsC.getString("BICR"));
                    setChosenIBAN(rsC.getString("IBANR"));
                    setChosenCurrency(rsC.getString("VIDVALR"));
                }
                if (jRadioButton1.isSelected() && ajp != null)
                    ajp.changeField();
                if (jRadioButton2.isSelected() && app != null)
                    app.changeField();
            } else {
                javax.swing.JOptionPane.showMessageDialog(null,
                        "\u041d\u044f\u043c\u0430 \u043a\u043e\u043d\u0442\u0440\u0430\u0433\u0435\u043d\u0442 \u0441 \u0442\u0430\u043a\u044a\u0432 \u043a\u043e\u0434!",
                        "\u0418\u041c\u0410\u041a\u0410\u041d\u0422\u0415", javax.swing.JOptionPane.ERROR_MESSAGE);
            }
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected void setValuesFromContragentId(int id) {
        java.sql.ResultSet rsC = null;
        try {
            rsC = this.getInternalObject().getContragentById(id, this.getIdOrderType());
            rsC.next();
            this.setIdChosenContragent(rsC.getInt("id_contragent"));
            this.setCodeChosenContragent(rsC.getInt("code_contragent"));
            this.setNameChosenContragent(rsC.getString("name_n_contragent"));
            if (getIdOrderType() == 2 || getIdOrderType() == 5) {   // platejni kym razpl. smetka i Biudjeta
                setChosenBank(rsC.getString("BANKNAMER"));
                setChosenBIC(rsC.getString("BICR"));
                setChosenIBAN(rsC.getString("IBANR"));
                setChosenCurrency(rsC.getString("VIDVALR"));
            } else if (getIdOrderType() == 3 || getIdOrderType() == 4) {    // platejni po DDS smetki
                setChosenBank(rsC.getString("BANKNAMED"));
                setChosenBIC(rsC.getString("BICD"));
                setChosenIBAN(rsC.getString("IBAND"));
                setChosenCurrency(rsC.getString("VIDVALD"));
            } else if (getIdOrderType() == 1) {     // wnosni belejki ot fiz. lica - samo w razpl. smetki
                setChosenBank(rsC.getString("BANKNAMER"));
                setChosenBIC(rsC.getString("BICR"));
                setChosenIBAN(rsC.getString("IBANR"));
                setChosenCurrency(rsC.getString("VIDVALR"));
            }
            if (jRadioButton1.isSelected() && ajp != null)
                ajp.changeField();
            if (jRadioButton2.isSelected() && app != null)
                app.changeField();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected void setValuesFromBankAccountId(int id_nba) {
        java.sql.ResultSet rsB = null;
        try {
            rsB = this.getInternalObject().getBankAccountProperties(id_nba);
            rsB.next();
            this.setIdBankAccount(rsB.getInt("id_nbc"));
            this.setBankName(rsB.getString("name_nbc"));
            this.setBankBranch(rsB.getString("branch_nbc"));
            this.setBankAddress(rsB.getString("address_nbc"));
            this.setOurIBAN(rsB.getString("account_nbc"));
            this.setOurBIC(rsB.getString("bic_nbc"));
            this.setOurCurrency(rsB.getString("cod_lat_n_money"));
            if (jRadioButton1.isSelected() && ajp != null)
                ajp.changeField();
            if (jRadioButton2.isSelected() && app != null)
                app.changeField();
        } catch (java.sql.SQLException ex) { ex.printStackTrace(); }
    }
    
    protected int getColumnIndex(String in) {
        int count = getTable().getColumnCount();
        for(int i = 0; i < count; i++) {
            if(getTable().getColumnName(i).equals(in)) return i;
        }
        return 0;
    }
    
    public String getSearchField() {
        return searchField;
    }
    
    public void setSearchField(String searchField) {
        this.searchField = searchField;
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
    
    public String getChosenBank() {
        return chosenBank;
    }
    
    public void setChosenBank(String chosenBank) {
        this.chosenBank = chosenBank;
    }
    
    public String getChosenBIC() {
        return chosenBIC;
    }
    
    public void setChosenBIC(String chosenBIC) {
        this.chosenBIC = chosenBIC;
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
    
    public String getBankBranch() {
        return bankBranch;
    }
    
    public void setBankBranch(String bankBranch) {
        this.bankBranch = bankBranch;
    }
    
    public String getBankAddress() {
        return bankAddress;
    }
    
    public void setBankAddress(String bankAddress) {
        this.bankAddress = bankAddress;
    }
    
    private void HideColumns(int col) {
        int iColumn = col;
        getTable().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        getTable().getColumnModel().getColumn(iColumn).setMinWidth(0);
        getTable().getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        getTable().getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
    }
    
    protected void resetFields() {
        if (jRadioButton1.isSelected()) {
            this.setOrderingPerson(0);
            this.setIdOrderType(2);
            this.setIdBankAccount(0);
        }
        if (jRadioButton2.isSelected()) {
            this.setOrderingPerson(1);
            this.setIdOrderType(1);
            this.setIdPerson(0);
        }
        this.setIdContragent(0);
        setAmount(0.00);
        setOsnovanie("");
        setPoiasnenie("");
    }
    
    private void resetChoices() {
        
    }
    
    private void setAllVariablesJP() {
        // Primary variables section
        setId((Integer) getTable().getValueAt(getRow(), getColumnIndex("id")));
        setOrderingPerson(0);
//        setOrderingPerson((Integer) getTable().getValueAt(getRow(), getColumnIndex("ordering_person")));
        setIdOrderType((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_type_porder")));
        setIdBankAccount((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_bank_account")));
        setIdPerson(0);
        setIdContragent((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_contragent")));
        java.math.BigDecimal bd2d = (java.math.BigDecimal) getTable().getValueAt(getRow(), getColumnIndex("\u0421\u0443\u043C\u0430"));
        setAmount(bd2d.doubleValue());
        setOsnovanie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435")));
        setPoiasnenie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F")));
        java.sql.Date inst = (java.sql.Date) getTable().getValueAt(getRow(), getColumnIndex("\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430"));
        setInstant(inst.toString());
        
        // Derivative variables section
        if (getIdBankAccount() > 0)
            setValuesFromBankAccountId(getIdBankAccount());
        if (getIdContragent() > 0)
            setValuesFromContragentId(getIdContragent());
    }
    
    private void setAllVariablesPP() {
        // Primary variables section
        setId((Integer) getTable().getValueAt(getRow(), getColumnIndex("id")));
        setOrderingPerson(1);   // wmesto:
//        setOrderingPerson((Integer) getTable().getValueAt(getRow(), getColumnIndex("ordering_person")));
        setIdOrderType(1);      // wmesto:
//        setIdOrderType((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_type_porder")));
        setIdBankAccount((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_bank_account")));
        setIdPerson((Integer) getTable().getValueAt(getRow(), getColumnIndex("id_ls_n_person")));
        setIdContragent(0);
        java.math.BigDecimal bd2d = (java.math.BigDecimal) getTable().getValueAt(getRow(), getColumnIndex("\u0421\u0443\u043C\u0430"));
        setAmount(bd2d.doubleValue());
        setOsnovanie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041E\u0441\u043D\u043E\u0432\u0430\u043D\u0438\u0435")));
        setPoiasnenie((String) getTable().getValueAt(getRow(), getColumnIndex("\u041F\u043E\u044F\u0441\u043D\u0435\u043D\u0438\u044F")));
        java.sql.Date inst = (java.sql.Date) getTable().getValueAt(getRow(), getColumnIndex("\u0418\u0437\u0432\u044A\u0440\u0448\u0435\u043D\u043E \u043D\u0430"));
        setInstant(inst.toString());
        
        // Derivative variables section
        if (getIdBankAccount() > 0)
            setValuesFromBankAccountId(getIdBankAccount());
        if (getIdPerson() > 0)
            setValuesFromPersonId(getIdPerson());
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
