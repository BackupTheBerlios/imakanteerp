
package nom;

public class FrmAnLevel extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmAnLevel(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        constructAnLevelDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
        
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextCod = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextComment = new javax.swing.JTextField();
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
        setTitle("\u0410\u043d\u0430\u043b\u0438\u0442\u0438\u0447\u043d\u0438 \u043d\u0438\u0432\u0430");
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
        setMaximumSize(new java.awt.Dimension(2000, 1600));
        setMinimumSize(new java.awt.Dimension(900, 400));
        setPreferredSize(new java.awt.Dimension(900, 400));
        addInternalFrameListener(new javax.swing.event.InternalFrameListener() {
            public void internalFrameActivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameClosed(javax.swing.event.InternalFrameEvent evt) {
                formInternalFrameClosed(evt);
            }
            public void internalFrameClosing(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeactivated(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameDeiconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameIconified(javax.swing.event.InternalFrameEvent evt) {
            }
            public void internalFrameOpened(javax.swing.event.InternalFrameEvent evt) {
            }
        });

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel1.setPreferredSize(new java.awt.Dimension(452, 45));
        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel1.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(448, 37));
        jLabel1.setText("\u041a\u043e\u0434:");
        jPanel4.add(jLabel1);

        jTextCod.setMinimumSize(new java.awt.Dimension(45, 20));
        jTextCod.setPreferredSize(new java.awt.Dimension(45, 20));
        jTextCod.setInputVerifier(new imakante.com.InputIntegerVerifier());
        jTextCod.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextCodFocusGained(evt);
            }
        });
        jTextCod.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextCodKeyPressed(evt);
            }
        });

        jPanel4.add(jTextCod);

        jLabel2.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel2);

        jTextName.setMinimumSize(new java.awt.Dimension(100, 20));
        jTextName.setPreferredSize(new java.awt.Dimension(100, 20));
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

        jLabel3.setText("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440:");
        jPanel4.add(jLabel3);

        jTextComment.setMinimumSize(new java.awt.Dimension(150, 20));
        jTextComment.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextComment.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextCommentFocusGained(evt);
            }
        });
        jTextComment.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextCommentKeyPressed(evt);
            }
        });

        jPanel4.add(jTextComment);

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
            .add(0, 875, Short.MAX_VALUE)
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

        java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize();
        setBounds((screenSize.width-889)/2, (screenSize.height-319)/2, 889, 319);
    }// </editor-fold>//GEN-END:initComponents

    private void jTextCommentFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextCommentFocusGained
        jTextComment.selectAll();
    }//GEN-LAST:event_jTextCommentFocusGained

    private void jTextCommentKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextCommentKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextComment.setText(""); }
    }//GEN-LAST:event_jTextCommentKeyPressed
    
    private void jTextCodFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextCodFocusGained
        jTextCod.selectAll();
    }//GEN-LAST:event_jTextCodFocusGained
    
    private void jTextCodKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextCodKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextCod.setText(""); }
    }//GEN-LAST:event_jTextCodKeyPressed
    
    private void jTextNameFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextNameFocusGained
        jTextName.selectAll();
    }//GEN-LAST:event_jTextNameFocusGained
    
    private void jTextNameKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextNameKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButtonSearch.doClick(); searchRecords(); 
        } else if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ESCAPE) { jTextName.setText(""); }
    }//GEN-LAST:event_jTextNameKeyPressed
    
    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
        ((imakante.sales.sales_main)myframe).isStartFrmAnLevel = false;
    }//GEN-LAST:event_formInternalFrameClosed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        
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
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextCod;
    private javax.swing.JTextField jTextComment;
    private javax.swing.JTextField jTextName;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private int id = 0;
    private String code;
    private String name;
    private String comment;
    
    private  boolean atBegining = false;
    private  boolean atEnd = false;
    private int row;
    private aeAnLevel dialog;
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  anLevelDB internalObject;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    private String columnsNames[] = { "id_al",
    "\u041a\u043e\u0434","\u0418\u043c\u0435","\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440" };
    //---------------END My Variables
    
    //---------------START MyFunction
    private void prepareConn() {
        try {
            setConn(myframe.getConn());
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructAnLevelDB() {
        try {
            internalObject = new nom.anLevelDB(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try {
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(conn, rs, columnsNames);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_al"));
        } catch(Exception e) { e.printStackTrace(); }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) { ex.printStackTrace(); }
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
    
    public void setConn(java.sql.Connection con) {
        this.conn = con;
    }
    
    public anLevelDB getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(anLevelDB val) {
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
    
    public  void setAtEnd(boolean aAtEnd)  {
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
    
    
    public void setCode(String COD) {
        this.code = COD;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setNames(String Name) {
        this.name = Name;
    }
    
    public String getNames() {
        return name;
    }
    
    public void setComment(String coment) {
        this.comment = coment;
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
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(false);
        setAtEnd(true);
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if (getRow() < getMaxRow()) setRow(getRow() + 1);
            setAtBegining(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
            if(getRow() == getMaxRow()) setAtEnd(true);
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if (getRow() > 0) setRow(getRow() - 1);
            setAtEnd(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false);
            } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() + 1); }
        }
        if(getRow() == 0) setAtBegining(true);
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariables();
            table.changeSelection(getRow(), 2, false, false);
        } catch(ArrayIndexOutOfBoundsException aioobe) { setRow(getRow() - 1); }
        setAtBegining(true);
        setAtEnd(false);
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
            try {
                dialog = new aeAnLevel(this, true);
                dialog.setVisible(true);
            } catch(Exception e) { e.printStackTrace(); }
        } else {  }
    }
    
    private void newRecord() {
        setAllVariableDefault();
        int maxID =  internalObject.insertRow(0, "", "", "");
        refreshTable();
        setId(maxID);
        try {
            dialog = new aeAnLevel(this, true);
            dialog.setVisible(true);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, columnsNames);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id_al"));
        jTextName.setText("");
        jTextCod.setText("");
        jTextComment.setText("");
        jScrollPane1.repaint();
    }
    
    private void searchRecords() {
        try {
            String nname = jTextName.getText();
            String ccoment = jTextComment.getText();
            String ccode = jTextCod.getText();
            rs = internalObject.searchRecords(0, ccode, nname, ccoment);
            model = new imakante.com.CustomTableModel(conn, rs, columnsNames);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id_al"));
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
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
    
    private void setAllVariables() {
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id_al")));
        setCode((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434")));
        setNames((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043c\u0435")));
        setComment((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440")));
    }
    
    private void setAllVariableDefault() {
        setId(0);
        setCode("");
        setNames("");
        setComment("");
    }
    
    private void unload() {
        ((imakante.sales.sales_main)myframe).isStartFrmAnLevel = false;
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
    
    private void delRecord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariables();
            internalObject.deleteRow(getId());
            refreshTable();
        }
    }
    
}// end class
