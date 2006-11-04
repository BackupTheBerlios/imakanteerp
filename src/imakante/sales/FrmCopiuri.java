
package imakante.sales;

public class FrmCopiuri extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmCopiuri(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();
        constructObject();
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jButtonSearch = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jXDatePicker2 = new org.jdesktop.swingx.JXDatePicker();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrnReport = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("\u041f\u0430\u0440\u0438\u0447\u043d\u0438 \u043e\u043f\u0438\u0441\u0438");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMinimumSize(new java.awt.Dimension(560, 480));
        setPreferredSize(new java.awt.Dimension(560, 480));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel3.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel3);

        jTextName.setPreferredSize(new java.awt.Dimension(160, 20));
        jTextName.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextNameFocusGained(evt);
            }
        });
        jTextName.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextNameKeyPressed(evt);
            }
        });

        jPanel4.add(jTextName);

        jButtonSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jButtonSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButtonSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonSearchActionPerformed(evt);
            }
        });

        jPanel4.add(jButtonSearch);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED), "\u0414\u0410\u0422\u0410", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 11), new java.awt.Color(0, 51, 153)));
        jPanel2.setToolTipText("\u0421\u043b\u0435\u0434 \u0438\u0437\u0431\u043e\u0440 \u043d\u0430 \u0436\u0435\u043b\u0430\u043d\u0438\u044f \u043f\u0435\u0440\u0438\u043e\u0434, \u043d\u0430\u0442\u0438\u0441\u043d\u0435\u0442\u0435 '\u0422\u044a\u0440\u0441\u0435\u043d\u0435'");
        jXDatePicker1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDatePicker1ActionPerformed(evt);
            }
        });
        jXDatePicker1.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jXDatePicker1FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jXDatePicker1FocusLost(evt);
            }
        });

        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel1.setText("\u041eT:");

        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jLabel2.setText("\u0414\u041e:");

        jXDatePicker2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jXDatePicker2ActionPerformed(evt);
            }
        });
        jXDatePicker2.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jXDatePicker2FocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                jXDatePicker2FocusLost(evt);
            }
        });

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(95, 95, 95)
                .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 30, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 127, Short.MAX_VALUE)
                .add(26, 26, 26)
                .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 29, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .add(101, 101, 101))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jLabel2)
                    .add(jLabel1)
                    .add(jXDatePicker2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jXDatePicker1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
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

        jButtonRefresh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Refresh 3.png")));
        jButtonRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jButtonRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonRefreshActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonRefresh);

        jButtonClose.setText("\u0417\u0430\u0442\u0432\u0430\u0440\u044f\u043d\u0435");
        jButtonClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCloseActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonClose);

        getContentPane().add(jPanel3, java.awt.BorderLayout.SOUTH);

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-563)/2, (screenSize.height-472)/2, 563, 472);
    }// </editor-fold>//GEN-END:initComponents

    private void jXDatePicker2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDatePicker2ActionPerformed
        
    }//GEN-LAST:event_jXDatePicker2ActionPerformed

    private void jXDatePicker2FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jXDatePicker2FocusGained
        
    }//GEN-LAST:event_jXDatePicker2FocusGained

    private void jXDatePicker2FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jXDatePicker2FocusLost
        
    }//GEN-LAST:event_jXDatePicker2FocusLost

    private void jXDatePicker1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jXDatePicker1ActionPerformed
        
    }//GEN-LAST:event_jXDatePicker1ActionPerformed

    private void jXDatePicker1FocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jXDatePicker1FocusGained
        
    }//GEN-LAST:event_jXDatePicker1FocusGained

    private void jXDatePicker1FocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jXDatePicker1FocusLost
        
    }//GEN-LAST:event_jXDatePicker1FocusLost
    
    private void jTextNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextNameFocusGained
        jTextName.selectAll();
    }//GEN-LAST:event_jTextNameFocusGained
    
    private void jTextNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { 
            jButtonSearch.doClick(); 
            searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextName.setText(""); }
    }//GEN-LAST:event_jTextNameKeyPressed
    
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
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        newRecord();
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JButton jButtonSearch;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextName;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private org.jdesktop.swingx.JXDatePicker jXDatePicker2;
    // End of variables declaration//GEN-END:variables
    
    //--------------- My Variables
    private boolean atBegining = false;
    private boolean atEnd = false;
    private int row;
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private imakante.sales.dbCopiuri internalObject;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    
    public static final String Names[] = { "id", "id_user",
    "\u041F\u043E\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043B", "\u0412\u0440\u0435\u043C\u0435",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 100 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 100 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 50 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 50 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 20 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 20 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 10 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 10 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 5 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 5 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 2 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u0431\u0430\u043D\u043A\u043D\u043E\u0442\u0438 2 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 1 \u043B\u0432",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 1 \u043B\u0432",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 50 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 50 \u0441\u0442",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 20 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 20 \u0441\u0442",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 10 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 10 \u0441\u0442",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 5 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 5 \u0441\u0442",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 2 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 2 \u0441\u0442",
    "\u0411\u0440\u043E\u0439 \u043C\u043E\u043D\u0435\u0442\u0438 1 \u0441\u0442",
    "\u0421\u0443\u043C\u0430 \u043C\u043E\u043D\u0435\u0442\u0438 1 \u0441\u0442" };
    //---------------END My Variables
    
    //---------------START Methods
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn == null) 
                System.out.println("CAN NOT ESTABLISH CONNECTION!");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            internalObject = new imakante.sales.dbCopiuri(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() { 
        try {
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_user"));
        } catch(Exception e) { e.printStackTrace(); }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {  }
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
    
    public imakante.sales.dbCopiuri getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(imakante.sales.dbCopiuri val) {
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
    
    public  void setRow(int val) {
        row = val;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try {
//            setAllVariables();
            table.changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(false);
        setAtEnd(true);
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
//                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
            if(getRow() == getMaxRow())
                setAtEnd(true);
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if(getRow() > 0) {
                setRow(getRow() - 1);
            }
            setAtEnd(false);
            try {
//                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() + 1); }
        }
        if(getRow() == 0)
            setAtBegining(true);
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
//            setAllVariables();
            table.changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(true);
        setAtEnd(false);
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Person");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void searchRecords() {
        try {
            internalObject.setDateBegin(jXDatePicker1);
            internalObject.setDateEnd(jXDatePicker2);
            rs = internalObject.searchRecords(jTextName.getText());
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_user"));
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, Names);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id"));
        HideColumns(getColumnIndex("id_user"));
        jTextName.setText("");
        jScrollPane1.repaint();
    }
    
    private void newRecord() {
        imakante.sales.aeCopiuri ae_Cop = new imakante.sales.aeCopiuri(this, true);
        ae_Cop.setVisible(true);
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
    
    private int getColumnIndex(String in) {
        int count = table.getColumnCount();
        for(int i = 0; i < count; i++) {
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

//    private void setAllVariables() {
//        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id")));
//        setIDG((Integer) table.getValueAt(getRow(), getColumnIndex("id_group")));
//        setCode((Integer) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434")));
//        setEGN((String) table.getValueAt(getRow(), getColumnIndex("\u0415\u0413\u041d")));
//        setNLK((String) table.getValueAt(getRow(), getColumnIndex("\u041d\u041b\u041a")));
//        setNames((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043c\u0435\u043d\u0430")));
//        setComment((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440\u0438")));
//    }
    
    private void unload() {
        closeResource();
        this.dispose();
    }
    
    protected void closeResource() {
        try{
            rs.close();
        } catch(java.sql.SQLException sqle) {  }
        rs = null;
        internalObject.close();
    }
}
