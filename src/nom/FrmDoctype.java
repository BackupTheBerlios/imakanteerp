
package nom;

public class FrmDoctype extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmDoctype(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        here = frame;
        prepConn();
        constructObject();
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpTop = new javax.swing.JPanel();
        jpMiddle = new javax.swing.JPanel();
        jspData = new javax.swing.JScrollPane();
        jpControls = new javax.swing.JPanel();
        jlCode = new javax.swing.JLabel();
        jtfCode = new javax.swing.JTextField();
        jlDocName = new javax.swing.JLabel();
        jtfDocName = new javax.swing.JTextField();
        jbSearch = new javax.swing.JButton();
        jpBottom = new javax.swing.JPanel();
        jbNew = new javax.swing.JButton();
        jbEdit = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbPrintRep = new javax.swing.JButton();
        jbAll = new javax.swing.JButton();
        jbDel = new javax.swing.JButton();
        jbDropData = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setTitle("\u0422\u0438\u043f\u043e\u0432\u0435 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442\u0438");
        jpTop.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jpTopLayout = new org.jdesktop.layout.GroupLayout(jpTop);
        jpTop.setLayout(jpTopLayout);
        jpTopLayout.setHorizontalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 857, Short.MAX_VALUE)
        );
        jpTopLayout.setVerticalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jpTop, java.awt.BorderLayout.NORTH);

        jpMiddle.setLayout(new java.awt.BorderLayout());

        jpMiddle.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jspData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jspData.getViewport().add(table);
        jpMiddle.add(jspData, java.awt.BorderLayout.CENTER);

        jpControls.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jlCode.setText("\u041a\u043e\u0434:");
        jpControls.add(jlCode);

        jtfCode.setPreferredSize(new java.awt.Dimension(80, 20));
        jpControls.add(jtfCode);

        jlDocName.setText("\u0418\u043c\u0435 \u043d\u0430 \u0434\u043e\u043a\u0443\u043c\u0435\u043d\u0442:");
        jpControls.add(jlDocName);

        jtfDocName.setPreferredSize(new java.awt.Dimension(200, 20));
        jpControls.add(jtfDocName);

        jbSearch.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
        jbSearch.setText("\u041d\u0410\u041c\u0415\u0420\u0418");
        jbSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSearchActionPerformed(evt);
            }
        });

        jpControls.add(jbSearch);

        jpMiddle.add(jpControls, java.awt.BorderLayout.SOUTH);

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

        jbPrintRep.setText("\u041f\u0435\u0447\u0430\u0442 \u043e\u0442\u0447\u0435\u0442");
        jbPrintRep.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintRepActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrintRep);

        jbAll.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Refresh 3.png")));
        jbAll.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jbAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbAllActionPerformed(evt);
            }
        });

        jpBottom.add(jbAll);

        jbDel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Delete 2.png")));
        jbDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jbDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDelActionPerformed(evt);
            }
        });

        jpBottom.add(jbDel);

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
    
    private void jbSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSearchActionPerformed
        searchRecords();
    }//GEN-LAST:event_jbSearchActionPerformed
    
    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        addNewRecord();
    }//GEN-LAST:event_jbNewActionPerformed
    
    private void jbEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbEditActionPerformed
        editRecord();
    }//GEN-LAST:event_jbEditActionPerformed
    
    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        printTable();
    }//GEN-LAST:event_jbPrintActionPerformed
    
    private void jbPrintRepActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintRepActionPerformed
        printReport();
    }//GEN-LAST:event_jbPrintRepActionPerformed
    
    private void jbAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbAllActionPerformed
        refreshTable();
    }//GEN-LAST:event_jbAllActionPerformed
    
    private void jbDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDelActionPerformed
        deleteRecord();
    }//GEN-LAST:event_jbDelActionPerformed
    
    private void jbDropDataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDropDataActionPerformed
        clearTable();
    }//GEN-LAST:event_jbDropDataActionPerformed
    
    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        unload();
    }//GEN-LAST:event_jbCloseActionPerformed
    // GUI actions methods
    private void searchRecords() {
        jspData.remove(table);
        try{
            rs = doctypeObject.searchRecords(Integer.parseInt(jtfCode.getText()), jtfDocName.getText());
            model = new imakante.com.CustomTableModel(conn, rs, Names);
            table = new imakante.com.CustomTable(model);
        } catch(Exception e) { e.printStackTrace(); }
        jspData.getViewport().add(table);
        jspData.repaint();
    }
    
    private void addNewRecord() {
        doctypeObject.insertRow((doctypeObject.getMaxCode() + 1));
        refreshTable();
        setRow(getMaxRow());
        table.changeSelection(getRow(), 2, false, false);
        setAllVariables();
        setFirst(false);
        setLast(true);
        nom.aeDoctype typeDoc = new nom.aeDoctype(this, true);
        typeDoc.setVisible(true);
        refreshTable();
    }
    
    private void editRecord() {
        if (table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            if(getRow()==0){          //manage button state of ae form
                setFirst(true);
            } else if(getRow()==getMaxRow()){
                setLast(true);
            }else{
                setFirst(false);
                setLast(false);
            }
            setAllVariables();
            nom.aeDoctype typeDoc = new nom.aeDoctype(this, true);
            typeDoc.setVisible(true);
        } else {  }
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Types of Documents");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. " + "- {0} -" + " IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void printReport() {
        
    }
    
    protected void refreshTable() {
        jspData.remove(table);
        rs = doctypeObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, Names);
        table = new imakante.com.CustomTable(model);
        jspData.getViewport().add(table);
        jspData.repaint();
        HideColumns(0);
    }
    
    private void deleteRecord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setId((Integer)table.getValueAt(getRow(),0));
            doctypeObject.deleteRow(getId());
            refreshTable();
        }
    }
    
    private void clearTable() {
        
    }
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAll;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbDel;
    private javax.swing.JButton jbDropData;
    private javax.swing.JButton jbEdit;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbPrintRep;
    private javax.swing.JButton jbSearch;
    private javax.swing.JLabel jlCode;
    private javax.swing.JLabel jlDocName;
    private javax.swing.JPanel jpBottom;
    private javax.swing.JPanel jpControls;
    private javax.swing.JPanel jpMiddle;
    private javax.swing.JPanel jpTop;
    private javax.swing.JScrollPane jspData;
    private javax.swing.JTextField jtfCode;
    private javax.swing.JTextField jtfDocName;
    // End of variables declaration//GEN-END:variables
    
    // Custom members
    private imakante.com.vcomponents.iFrame here;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private nom.dbDoctype doctypeObject;
    
    private int row;
    private int id = 0;
    private int code = 0;
    private String name = "";
    private String printName = "";
    private boolean first = false;
    private boolean last = false;
    public static final String Names[] = {"id",
    "\u041a\u043e\u0434\u043e\u0432\u0435",
    "\u0418\u043c\u0435\u043d\u0430",
    "\u041f\u0435\u0447\u0430\u0442\u043d\u043e \u0438\u043c\u0435"};
    
    
    private void prepConn() {
        try{
            conn =  here.getConn();
            if(conn==null){
                System.out.println("CONNECTION CAN NOT BE ESTABLISHED!");
            }
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructObject() {
        try {
            doctypeObject = new nom.dbDoctype(conn);
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try{
            rs = doctypeObject.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, Names);
            table = new imakante.com.CustomTable(model);
            HideColumns(0);
        }catch(Exception e){e.printStackTrace();}
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
        }
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariables();
            table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setFirst(true);
        setLast(false);
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0) {
            if(getRow() > 0) {
                setRow(getRow() - 1);
            }
            setLast(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
        }
        if(getRow() == 0){
            setFirst(true);
        }
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setFirst(false);
            try {
                setAllVariables();
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
            }
            if(getRow() == getMaxRow()) {
                setLast(true);
            }
        }
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariables();
            table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setFirst(false);
        setLast(true);
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
    
    
    public nom.dbDoctype getDoctypeObject() {
        return doctypeObject;
    }
    
    public void setDoctypeObject(nom.dbDoctype DTO) {
        this.doctypeObject = DTO;
    }
    
    public imakante.com.CustomTableModel getModel() {
        return model;
    }
    
    public void setModel(imakante.com.CustomTableModel mod) {
        this.model = mod;
    }
    
    public imakante.com.CustomTable getTable() {
        return table;
    }
    
    public void setTable(imakante.com.CustomTable tab) {
        this.table = tab;
    }
    
    public imakante.com.vcomponents.iFrame getThisFrame() {
        return here;
    }
    
    public void setThisFrame(imakante.com.vcomponents.iFrame fra) {
        this.here = fra;
    }
    
    public boolean isFirst() {
        return first;
    }
    
    public void setFirst(boolean First) {
        first = First;
    }
    
    public boolean isLast() {
        return last;
    }
    
    public void setLast(boolean Last) {
        last = Last;
    }
    
    private int  getMaxRow() {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    
    public  int getRow() {
        return row;
    }
    
    public  void setRow(int Row) {
        row = Row;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public int getCode() {
        return code;
    }
    
    public void setCode(int Code) {
        this.code = Code;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String Name) {
        this.name = Name;
    }
    
    public String getPName() {
        return printName;
    }
    
    public void setPName(String PName) {
        this.printName = PName;
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
        doctypeObject.close();
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
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
        setCode((Integer) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434\u043e\u0432\u0435")));
        setName((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043c\u0435\u043d\u0430")));
        setPName((String) table.getValueAt(getRow(), getColumnIndex("\u041f\u0435\u0447\u0430\u0442\u043d\u043e \u0438\u043c\u0435")));
    }
    
}
