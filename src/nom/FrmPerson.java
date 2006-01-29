
package nom;

public class FrmPerson extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmPerson(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        personFrame = frame;
        prepareConn();
        constructObject(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
    }
    
    // --- Custom Members --- //
    private imakante.com.vcomponents.iFrame personFrame;
    private java.sql.Connection conn;
    private nom.dbPerson internalObject;
    private java.sql.ResultSet rs;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    
    private boolean First = false;
    private boolean Last = false;
    private int id = 0;
    private int groupCode = 0;
    private String egn, nomlk, name, comment;
    private String groupNames[];
    private int selectedItem;
    private int row;
    
    // --- Custom Methods --- //
    private void prepareConn() {
        try{
            conn =  personFrame.getConn();
            if(conn==null){System.out.println("Connection problem!");
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    private void constructObject() {
        try {
            internalObject = new nom.dbPerson(conn);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    private void initTable() {
        try {
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, null);
            table = new imakante.com.CustomTable(model);
            // da se napravqt skriti kolona "id" i kolona "nom"
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
            
        }
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jpTop = new javax.swing.JPanel();
        jpMiddle = new javax.swing.JPanel();
        jpSearch = new javax.swing.JPanel();
        jlEGN = new javax.swing.JLabel();
        jtfEGN = new javax.swing.JTextField();
        jlName = new javax.swing.JLabel();
        jtfName = new javax.swing.JTextField();
        jbSearch = new javax.swing.JButton();
        jspData = new javax.swing.JScrollPane();
        jpBottom = new javax.swing.JPanel();
        jbNew = new javax.swing.JButton();
        jbEdit = new javax.swing.JButton();
        jbPrint = new javax.swing.JButton();
        jbPrintReport = new javax.swing.JButton();
        jbAll = new javax.swing.JButton();
        jbDelete = new javax.swing.JButton();
        jbDropData = new javax.swing.JButton();
        jbClose = new javax.swing.JButton();

        jpTop.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jpTopLayout = new org.jdesktop.layout.GroupLayout(jpTop);
        jpTop.setLayout(jpTopLayout);
        jpTopLayout.setHorizontalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 772, Short.MAX_VALUE)
        );
        jpTopLayout.setVerticalGroup(
            jpTopLayout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jpTop, java.awt.BorderLayout.NORTH);

        jpMiddle.setLayout(new java.awt.BorderLayout());

        jpMiddle.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpSearch.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jlEGN.setText("\u0415\u0413\u041d:");
        jpSearch.add(jlEGN);

        jtfEGN.setPreferredSize(new java.awt.Dimension(80, 20));
        jpSearch.add(jtfEGN);

        jlName.setText("\u0418\u043c\u0435:");
        jpSearch.add(jlName);

        jtfName.setPreferredSize(new java.awt.Dimension(160, 20));
        jpSearch.add(jtfName);

        jbSearch.setText("\u041d\u0410\u041c\u0415\u0420\u0418");
        jbSearch.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbSearchActionPerformed(evt);
            }
        });

        jpSearch.add(jbSearch);

        jpMiddle.add(jpSearch, java.awt.BorderLayout.SOUTH);

        jspData.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jpMiddle.add(jspData, java.awt.BorderLayout.CENTER);

        getContentPane().add(jpMiddle, java.awt.BorderLayout.CENTER);

        jpBottom.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jbNew.setText("\u041d\u043e\u0432");
        jbNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbNewActionPerformed(evt);
            }
        });

        jpBottom.add(jbNew);

        jbEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jbEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbEditActionPerformed(evt);
            }
        });

        jpBottom.add(jbEdit);

        jbPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jbPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrint);

        jbPrintReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0430\u043f\u043e\u0440\u0442");
        jbPrintReport.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbPrintReportActionPerformed(evt);
            }
        });

        jpBottom.add(jbPrintReport);

        jbAll.setText("\u0412\u0441\u0438\u0447\u043a\u0438 \u0437\u0430\u043f\u0438\u0441\u0438");
        jbAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbAllActionPerformed(evt);
            }
        });

        jpBottom.add(jbAll);

        jbDelete.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jbDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbDeleteActionPerformed(evt);
            }
        });

        jpBottom.add(jbDelete);

        jbDropData.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435 \u043d\u0430 \u0442\u0430\u0431\u043b\u0438\u0446\u0430");
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

    private void jbCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbCloseActionPerformed
        unload();
    }//GEN-LAST:event_jbCloseActionPerformed

    private void jbDropDataActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDropDataActionPerformed
        emptyTable();
    }//GEN-LAST:event_jbDropDataActionPerformed

    private void jbDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbDeleteActionPerformed
        delRecord();
    }//GEN-LAST:event_jbDeleteActionPerformed

    private void jbAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbAllActionPerformed
        refreshTable();
    }//GEN-LAST:event_jbAllActionPerformed

    private void jbPrintReportActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintReportActionPerformed
        printReport();
    }//GEN-LAST:event_jbPrintReportActionPerformed

    private void jbPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbPrintActionPerformed
        printTable();
    }//GEN-LAST:event_jbPrintActionPerformed

    private void jbEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbEditActionPerformed
        editRecord();
    }//GEN-LAST:event_jbEditActionPerformed

    private void jbNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbNewActionPerformed
        newRecord();
    }//GEN-LAST:event_jbNewActionPerformed

    private void jbSearchActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbSearchActionPerformed
        searchRecords();
    }//GEN-LAST:event_jbSearchActionPerformed
    
    private void emptyTable() {
        
    }
    
    private void delRecord(){
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setId((Integer)table.getValueAt(getRow(),0));
            internalObject.deleteRow(getId());
            refreshTable();
        }
    }
    
    protected  void refreshTable() {
        jspData.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, null);
        table = new imakante.com.CustomTable(model);
        jspData.getViewport().add(table);
        jspData.repaint();
    }
    
    private void printReport() {
        
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Person");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) {
            e.printStackTrace();
        }
    }
    
    private void editRecord(){
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){          //manage button state of ae form
                setFirst(true);
            }
            if(getRow()==getMaxRow()){
                setLast(true);
            }
            setId((Integer) table.getValueAt(getRow(), 0));
            setIDGroup((Integer) table.getValueAt(getRow(), 1));
            setEGN((String) table.getValueAt(getRow(), 3));
            setNomLK((String) table.getValueAt(getRow(), 4));
            setNames((String) table.getValueAt(getRow(), 5));
            setComment((String) table.getValueAt(getRow(), 6));
            nom.aeCasa ae_Casa = new nom.aeCasa(this, true);
            ae_Casa.setVisible(true);
        } else {
            
        }
    }
    
    private void newRecord(){
        setId(internalObject.getMaxId());
        setIDGroup(internalObject.getMaxGrID());
        internalObject.insertRow(getIDGroup());
        nom.aePerson aeP = new nom.aePerson(this, true);
        aeP.setVisible(true);
        refreshTable();
        
    }
    
    private void searchRecords() {
        try {
            try {
                rs = internalObject.searchRecords(jtfEGN.getText(), jtfName.getText());
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
                jtfEGN.requestFocus();
            }
            jspData.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), rs, null);
            table = new imakante.com.CustomTable(model);
            jspData.getViewport().add(table);
            jspData.repaint();
        } catch(Exception e) {
            e.printStackTrace();
        }
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
    
    public nom.dbPerson getInternalObject() {
        return internalObject;
    }
    
    public void setInternalObject(nom.dbPerson value) {
        this.internalObject = value;
    }
    
    public imakante.com.CustomTableModel getModel() {
        return model;
    }
    
    public void setModel(imakante.com.CustomTableModel value) {
        this.model = value;
    }
    
    public imakante.com.CustomTable getTable() {
        return table;
    }
    
    public void setTable(imakante.com.CustomTable value) {
        this.table = value;
    }
    
    public imakante.com.vcomponents.iFrame getPersonFrame() {
        return personFrame;
    }
    
    public void setPersonFrame(imakante.com.vcomponents.iFrame value) {
        this.personFrame = value;
    }
    
    public  boolean isFirst() {
        return First;
    }
    
    public void setFirst(boolean aFirst) {
        First = aFirst;
    }
    
    public  boolean isLast() {
        return Last;
    }
    
    public  void setLast(boolean aLast) {
        Last = aLast;
    }
    
    private int  getMaxRow() {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    
    public  void setRow(int value) {
        row = value;
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
    
    public void setIDGroup(int Group) {
        this.groupCode = Group;
    }
    
    public int getIDGroup() {
        return groupCode;
    }
    
    public void setEGN(String EGN) {
        this.egn = EGN;
    }
    
    public String getEGN() {
        return egn;
    }
    
    public void setNomLK(String NumLK) {
        this.nomlk = NumLK;
    }
    
    public String getNomLK() {
        return nomlk;
    }
    
    public void setNames(String Name) {
        this.name = Name;
    }
    
    public String getNames() {
        return name;
    }
    
    public void setComment(String Comment) {
        this.comment = Comment;
    }
    
    public String getComment() {
        return comment;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setId((Integer) table.getValueAt(getRow(), 0));
            setIDGroup((Integer) table.getValueAt(getRow(), 1));
            setEGN((String) table.getValueAt(getRow(), 3));
            setNomLK((String) table.getValueAt(getRow(), 4));
            setNames((String) table.getValueAt(getRow(), 5));
            setComment((String) table.getValueAt(getRow(), 6));
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setFirst(false);
        setLast(true);
    }
    
    public void mOneRowPlus() {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setFirst(false);
            try {
                setId((Integer) table.getValueAt(getRow(), 0));
                setIDGroup((Integer) table.getValueAt(getRow(), 1));
                setEGN((String) table.getValueAt(getRow(), 3));
                setNomLK((String) table.getValueAt(getRow(), 4));
                setNames((String) table.getValueAt(getRow(), 5));
                setComment((String) table.getValueAt(getRow(), 6));
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
            }
            if(getRow() == getMaxRow()) {
                setLast(true);
            }
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setLast(false);
            try {
                setId((Integer) table.getValueAt(getRow(), 0));
                setIDGroup((Integer) table.getValueAt(getRow(), 1));
                setEGN((String) table.getValueAt(getRow(), 3));
                setNomLK((String) table.getValueAt(getRow(), 4));
                setNames((String) table.getValueAt(getRow(), 5));
                setComment((String) table.getValueAt(getRow(), 6));
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
            }
        if(getRow() == 0){
            setFirst(true);
        }
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setId((Integer) table.getValueAt(getRow(), 0));
            setIDGroup((Integer) table.getValueAt(getRow(), 1));
            setEGN((String) table.getValueAt(getRow(), 3));
            setNomLK((String) table.getValueAt(getRow(), 4));
            setNames((String) table.getValueAt(getRow(), 5));
            setComment((String) table.getValueAt(getRow(), 6));
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
        }
        setFirst(true);
        setLast(false);
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
    
    private java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
    }
        
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jbAll;
    private javax.swing.JButton jbClose;
    private javax.swing.JButton jbDelete;
    private javax.swing.JButton jbDropData;
    private javax.swing.JButton jbEdit;
    private javax.swing.JButton jbNew;
    private javax.swing.JButton jbPrint;
    private javax.swing.JButton jbPrintReport;
    private javax.swing.JButton jbSearch;
    private javax.swing.JLabel jlEGN;
    private javax.swing.JLabel jlName;
    private javax.swing.JPanel jpBottom;
    private javax.swing.JPanel jpMiddle;
    private javax.swing.JPanel jpSearch;
    private javax.swing.JPanel jpTop;
    private javax.swing.JScrollPane jspData;
    private javax.swing.JTextField jtfEGN;
    private javax.swing.JTextField jtfName;
    // End of variables declaration//GEN-END:variables
    
}
