
package nom;

public class FrmDoctypeUserRights extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmDoctypeUserRights(String title, imakante.com.vcomponents.iFrame frame) {
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
        jLabel2 = new javax.swing.JLabel();
        jTextCod = new javax.swing.JTextField();
        jButtonSearch = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
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
        setTitle("\u041d\u043e\u043c\u0435\u043d\u043a\u043b\u0430\u0442\u0443\u0440\u0430: \u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u043f\u0440\u0430\u0432\u0430 \u0432\u044a\u0440\u0445\u0443 \u043a\u043e\u0447\u0430\u043d\u0438");
        setFont(new java.awt.Font("Tahoma", 0, 11));
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel2.setText("\u041f\u0440\u0430\u0432\u0430:");
        jPanel4.add(jLabel2);

        jTextCod.setPreferredSize(new java.awt.Dimension(80, 20));
        jPanel4.add(jTextCod);

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

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 879, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
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

        pack();
    }// </editor-fold>//GEN-END:initComponents
    
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
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextCod;
    // End of variables declaration//GEN-END:variables
    
    private int id = 0;
    private int userMaster = 0;
    private int doctypeNum = 0;
    private int right = 3;
    private String namesG[];
    private int selectComboBoxItem;
    private  boolean atBegining = false;
    private  boolean atEnd = false;
    private int row;
    
    private  imakante.com.vcomponents.iFrame myframe;
    private  java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  nom.dbDoctypeUserRights internalObject;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    public static final String Names[] = {"id",
    "id_um","\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b",
    "id_sdtn","\u041e\u0431\u043b\u0430\u0441\u0442","\u0414\u043e\u043a\u0443\u043c\u0435\u043d\u0442",
    "\u041f\u0440\u0430\u0432\u0430"};
    
    
    private void prepareConn() {
        try{
            conn =  myframe.getConn();
            if(conn==null){System.out.println("conn problem");
            }
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            internalObject = new nom.dbDoctypeUserRights(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {  //OK  -- !!ima za dovyr6wane - skrivane na koloni!!
        try {
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_ndtur"));
            HideColumns(getColumnIndex("id_um"));
            HideColumns(getColumnIndex("id_sdtn"));
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
    
    public nom.dbDoctypeUserRights getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(nom.dbDoctypeUserRights val) {
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
    
    public void setUserMaster(int UserMaster) {
        this.userMaster = UserMaster;
    }
    
    public int getUserMaster() {
        return userMaster;
    }
    
    public void setDoctypeNumber(int DoctypeNum) {
        this.doctypeNum = DoctypeNum;
    }
    
    public int getDoctypeNumber() {
        return doctypeNum;
    }
    
    public void setRight(int Right) {
        this.right = Right;
    }
    
    public int getRight() {
        return right;
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
        if(getRow() == 0){
            setAtBegining(true);
        }
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
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Doctype User Rights");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void searchRecords() {
        try {
            try {
                rs = internalObject.searchRecords(Integer.parseInt(jTextCod.getText()));
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
                jTextCod.requestFocus();
            }
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_ndtur"));
            HideColumns(getColumnIndex("id_um"));
            HideColumns(getColumnIndex("id_sdtn"));
            jScrollPane1.getViewport().add(table);
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, Names);
        table = new imakante.com.CustomTable(model);
        HideColumns(getColumnIndex("id_ndtur"));
        HideColumns(getColumnIndex("id_um"));
        HideColumns(getColumnIndex("id_sdtn"));
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
    }
    
    private void newRecord() {
        setId(internalObject.getMaxId());
        setRight(3);        // 3 - default value - maximum restricted rights
        internalObject.insertRow(getUserMaster());
        nom.aeDoctypeUserRights ae_DTUR= new nom.aeDoctypeUserRights(this, true);
        ae_DTUR.setVisible(true);
        refreshTable();
    }
    
    private void editRecord() {
        if (table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            if(getRow() == 0) {
                setAtBegining(true);
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            } else {
                setAtBegining(false);
                setAtEnd(false);
            }
            setAllVariables();
            nom.aeDoctypeUserRights ae_DTUR = new nom.aeDoctypeUserRights(this, true);
            ae_DTUR.setVisible(true);
        } else {  }
    }
    
    private void delRecord(){
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setId((Integer)table.getValueAt(getRow(),0));
            internalObject.deleteRow(getId());
            refreshTable();
        }
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
    
    private int getColumnIndex(String in) //test
    {
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
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id_ndtur")));
        setUserMaster((Integer) table.getValueAt(getRow(), getColumnIndex("id_um")));
        setDoctypeNumber((Integer) table.getValueAt(getRow(), getColumnIndex("id_sdtn")));
        setRight((Integer) table.getValueAt(getRow(), getColumnIndex("rights_ndtur")));
    }
}
