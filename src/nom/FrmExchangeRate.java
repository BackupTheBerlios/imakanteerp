
package nom;

public class FrmExchangeRate extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmExchangeRate(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();
        constructObject();
        initTable();
        initComponents();
        initCurrCombo();
        dp = new org.jdesktop.swingx.JXDatePicker();
        in_DATE = (String)formatter.format(dp.getDate());
        date = in_DATE;
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpTop = new javax.swing.JPanel();
        jpMiddle = new javax.swing.JPanel();
        jspData = new javax.swing.JScrollPane();
        jpSearch = new javax.swing.JPanel();
        jlDate = new javax.swing.JLabel();
        jXDatePicker1 = new org.jdesktop.swingx.JXDatePicker();
        jlCurrency = new javax.swing.JLabel();
        jcbCurrencies = new javax.swing.JComboBox();
        jbSearch = new javax.swing.JButton();
        jpBottom = new javax.swing.JPanel();
        jbNew = new javax.swing.JButton();
        jbEdit = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbPrintReport = new javax.swing.JButton();
        jbRefresh = new javax.swing.JButton();
        jbDelete = new javax.swing.JButton();
        jbDropData = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("\u041e\u0431\u043c\u0435\u043d\u043d\u0438 \u043a\u0443\u0440\u0441\u043e\u0432\u0435 \u043d\u0430 \u0432\u0430\u043b\u0443\u0442\u0438");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMaximumSize(new java.awt.Dimension(2400, 1600));
        setMinimumSize(new java.awt.Dimension(880, 350));
        setPreferredSize(new java.awt.Dimension(880, 350));
        jpTop.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jpTopLayout = new org.jdesktop.layout.GroupLayout(jpTop);
        jpTop.setLayout(jpTopLayout);
        jpTopLayout.setHorizontalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 847, Short.MAX_VALUE)
        );
        jpTopLayout.setVerticalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jpTop, java.awt.BorderLayout.NORTH);

        jpMiddle.setLayout(new java.awt.BorderLayout());

        jpMiddle.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jspData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMiddle.add(jspData, java.awt.BorderLayout.CENTER);

        jpSearch.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jlDate.setText("\u0414\u0430\u0442\u0430:");
        jpSearch.add(jlDate);

        jpSearch.add(jXDatePicker1);

        jlCurrency.setText("\u0412\u0430\u043b\u0443\u0442\u0430:");
        jpSearch.add(jlCurrency);

        jcbCurrencies.setMaximumSize(new java.awt.Dimension(180, 22));
        jcbCurrencies.setMinimumSize(new java.awt.Dimension(150, 22));
        jcbCurrencies.setPreferredSize(new java.awt.Dimension(180, 22));
        jpSearch.add(jcbCurrencies);

        jbSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jbSearch.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jpSearch.add(jbSearch);

        jpMiddle.add(jpSearch, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jpMiddle, java.awt.BorderLayout.CENTER);

        jpBottom.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jbNew.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Add 2.png")));
        jbNew.setText("\u041d\u043e\u0432");
        jbNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNewActionPerformed(evt);
            }
        });

        jpBottom.add(jbNew);

        jbEdit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Report Edit 2.png")));
        jbEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jbEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbEditActionPerformed(evt);
            }
        });

        jpBottom.add(jbEdit);

        jbPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Printer.png")));
        jbPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrint);

        jbPrintReport.setText("\u041f\u0435\u0447\u0430\u0442 \u043e\u0442\u0447\u0435\u0442");
        jbPrintReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintReportActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrintReport);

        jbRefresh.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Refresh 3.png")));
        jbRefresh.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jbRefresh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbRefreshActionPerformed(evt);
            }
        });

        jpBottom.add(jbRefresh);

        jbDelete.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Delete 2.png")));
        jbDelete.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jbDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDeleteActionPerformed(evt);
            }
        });

        jpBottom.add(jbDelete);

        jbDropData.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
        jbDropData.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDropDataActionPerformed(evt);
            }
        });

        jpBottom.add(jbDropData);

        jbClose.setText("\u0417\u0430\u0442\u0432\u043e\u0440\u0438");
        jbClose.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbCloseActionPerformed(evt);
            }
        });

        jpBottom.add(jbClose);

        getContentPane().add(jpBottom, java.awt.BorderLayout.SOUTH);

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        newRecord();
    }//GEN-LAST:event_jbNewActionPerformed
    
    private void jbEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbEditActionPerformed
        editRecord();
    }//GEN-LAST:event_jbEditActionPerformed
    
    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        printTable();
    }//GEN-LAST:event_jbPrintActionPerformed
    
    private void jbPrintReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintReportActionPerformed
        printReport();
    }//GEN-LAST:event_jbPrintReportActionPerformed
    
    private void jbRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbRefreshActionPerformed
        refreshTable();
    }//GEN-LAST:event_jbRefreshActionPerformed
    
    private void jbDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDeleteActionPerformed
        deleteRecord();
    }//GEN-LAST:event_jbDeleteActionPerformed
    
    private void jbDropDataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDropDataActionPerformed
        clearTable();
    }//GEN-LAST:event_jbDropDataActionPerformed
    
    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        unload();
    }//GEN-LAST:event_jbCloseActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private org.jdesktop.swingx.JXDatePicker jXDatePicker1;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbDelete;
    private javax.swing.JButton jbDropData;
    private javax.swing.JButton jbEdit;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbPrintReport;
    private javax.swing.JButton jbRefresh;
    private javax.swing.JButton jbSearch;
    private javax.swing.JComboBox jcbCurrencies;
    private javax.swing.JLabel jlCurrency;
    private javax.swing.JLabel jlDate;
    private javax.swing.JPanel jpBottom;
    private javax.swing.JPanel jpMiddle;
    private javax.swing.JPanel jpSearch;
    private javax.swing.JPanel jpTop;
    private javax.swing.JScrollPane jspData;
    // End of variables declaration//GEN-END:variables
    
    private  imakante.com.vcomponents.iFrame myframe;
    private  java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  nom.dbExchangeRate internalObject;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    public static final String Names[] = {"id",
    "\u0414\u0430\u0442\u0430",
    "id_n_money",
    "\u041A\u043E\u0434 \u0432\u0430\u043B\u0443\u0442\u0430",
    "\u0418\u043C\u0435 \u0432\u0430\u043B\u0443\u0442\u0430",
    "\u041a\u0443\u0440\u0441"};
    
    private int id = 0; // imena ot tablicata
    private String date = "2000-01-01";
    private int idCurrency = 0;
    private String codeLatCurrency = "";
    private String nameCurrency = "";
    private Double rate = 0.00;
    private String Currencies[];
    private int selectComboBoxItem;
    private  boolean atBegining = false;
    private  boolean atEnd = false;
    private int row;
    
    private String in_DATE = "";
    private org.jdesktop.swingx.JXDatePicker dp;
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd");
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn == null)
                System.out.println("CONNECTION CAN NOT BE ESTABLISHED!!!");
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            internalObject = new nom.dbExchangeRate(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try {
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_n_money"));
        } catch(Exception e) { e.printStackTrace(); }
        table.requestFocus();
        try {
            refreshTable();
            table.setEditingRow(0);
        } catch(Exception ex) {  }
    }
    
    private void initCurrCombo() {
        jcbCurrencies.addItem("---------------");
        Currencies = getInternalObject().getCurrencies();
        System.out.println("dyljinata na masiwa e: " + Currencies.length);
        for(int i = 0; i < Currencies.length; i++) {
            jcbCurrencies.addItem(new String(Currencies[i]));
        }
    }
    
    private void searchRecords() {
        try {
            try {
                rs = internalObject.searchRecords((String)formatter.format(jXDatePicker1.getDate()),
                        (String)jcbCurrencies.getSelectedItem());
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
                jXDatePicker1.requestFocus();
            }
            jspData.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id"));
            HideColumns(getColumnIndex("id_n_money"));
            jspData.getViewport().add(table);
            jspData.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void newRecord() {
        setId(internalObject.getMaxId());
        nom.aeExchangeRate aeExRates = new nom.aeExchangeRate(this, true);
        aeExRates.setVisible(true);
        refreshTable();
    }
    
    private void editRecord() {
        if (table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            if(getRow() == 0)          //manage button state of ae form
                setAtBegining(true);
            if(getRow() == getMaxRow())
                setAtEnd(true);
            setAllVariables();
            nom.aeExchangeRate aeExRates = new nom.aeExchangeRate(this, true);
            aeExRates.setVisible(true);
        } else {  }
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Exchange Rates");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void printReport() {
        
    }
    
    protected void refreshTable() {
        jspData.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, Names);
        table = new imakante.com.CustomTable(model);
        HideColumns(getColumnIndex("id"));
        HideColumns(getColumnIndex("id_n_money"));
        jspData.getViewport().add(table);
        jspData.repaint();
    }
    
    private void deleteRecord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariables();
            internalObject.deleteRow(getId());
            refreshTable();
        }
    }
    
    private void clearTable() {
        
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
    
    public nom.dbExchangeRate getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(nom.dbExchangeRate val) {
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
        return (table.getRowCount() - 1);
    }
    
    public  int getRow() {
        return row;
    }
    
    public  void setRow(int val) {
        row = val;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public String getDate() {
        return date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }
    
    public int getIDCurrency() {
        return idCurrency;
    }
    
    public void setIDCurrency(int IDCurrency) {
        this.idCurrency = IDCurrency;
    }
    
    public String getCodeLatCurrency() {
        return codeLatCurrency;
    }
    
    public void setCodeLatCurrency(String codeLatCurrency) {
        this.codeLatCurrency = codeLatCurrency;
    }
    
    public String getNameCurrency() {
        return nameCurrency;
    }
    
    public void setNameCurrency(String nameCurrency) {
        this.nameCurrency = nameCurrency;
    }
    
    public Double getRateValue() {
        return rate;
    }
    
    public void setRateValue(Double Rate) {
        this.rate = Rate;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariables();
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
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
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if(getRow() > 0)
                setRow(getRow() - 1);
            setAtEnd(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() + 1); }
        }
        if(getRow() == 0)
            setAtBegining(true);
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariables();
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setAtBegining(true);
        setAtEnd(false);
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
    
    private void setAllVariables(){
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id")));
        java.sql.Date d = (java.sql.Date) table.getValueAt(getRow(), getColumnIndex("\u0414\u0430\u0442\u0430"));
        setDate(d.toString());
        setIDCurrency((Integer) table.getValueAt(getRow(), getColumnIndex("id_n_money")));
        setCodeLatCurrency((String) table.getValueAt(getRow(), getColumnIndex("\u041A\u043E\u0434 \u0432\u0430\u043B\u0443\u0442\u0430")));
        setNameCurrency((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043C\u0435 \u0432\u0430\u043B\u0443\u0442\u0430")));
        java.math.BigDecimal bd2d = (java.math.BigDecimal) table.getValueAt(getRow(), getColumnIndex("\u041a\u0443\u0440\u0441"));
        setRateValue(bd2d.doubleValue());
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
            rs.close();
        } catch(java.sql.SQLException sqle) {  }
        rs = null;
        internalObject.close();
    }
    
}
