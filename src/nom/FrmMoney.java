package nom;

import imakante.com.CustomTable;
import imakante.com.CustomTableModel;
import imakante.com.vcomponents.iFrame;
import java.awt.print.PrinterException;
import javax.swing.JTable;

public class FrmMoney extends  imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmMoney(String title,imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        constructObject(); // inicializira class otgovarq6t za vryzkata s DB
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
        jTextCodLat = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextName = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
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
        setMaximizable(true);
        setResizable(true);
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

        jTextCod.setPreferredSize(new java.awt.Dimension(80, 20));
        jPanel4.add(jTextCod);

        jLabel2.setText("\u041a\u043e\u0434 \u043b\u0430\u0442\u0438\u043d\u0438\u0446\u0430:");
        jPanel4.add(jLabel2);

        jTextCodLat.setPreferredSize(new java.awt.Dimension(80, 20));
        jPanel4.add(jTextCodLat);

        jLabel3.setText("\u0418\u043c\u0435 \u043d\u0430 \u0412\u0430\u043b\u0443\u0442\u0430\u0442\u0430");
        jPanel4.add(jLabel3);

        jTextName.setPreferredSize(new java.awt.Dimension(160, 20));
        jPanel4.add(jTextName);

        jButton1.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton1);

        jPanel1.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 821, Short.MAX_VALUE)
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jPanel2, java.awt.BorderLayout.NORTH);

        jPanel3.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel3.setPreferredSize(new java.awt.Dimension(801, 37));
        jButtonNew.setText("\u041d\u043e\u0432");
        jButtonNew.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonNewActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonNew);

        jButtonEdit.setText("\u0420\u0435\u0434\u0430\u043a\u0446\u0438\u044f");
        jButtonEdit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonEditActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonEdit);

        jButtonPrint.setText("\u041f\u0435\u0447\u0430\u0442");
        jButtonPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonPrintActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonPrint);

        jButtonPrnReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0435\u043f\u043e\u0440\u0442");
        jPanel3.add(jButtonPrnReport);

        jButtonDel.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDelActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonDel);

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
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        searchRecords();
    }//GEN-LAST:event_jButton1ActionPerformed
    
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
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDel;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrnReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextCod;
    private javax.swing.JTextField jTextCodLat;
    private javax.swing.JTextField jTextName;
    // End of variables declaration//GEN-END:variables
    
    //--------------- My Variables
    private int id=0; // imena ot tablicata
    private int nom=0; // imena ot tablicata
    private int cod =0;
    private String codLat,name,comment; // imena ot tablicata
    
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    
    private  imakante.com.vcomponents.iFrame myframe;
    private  java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  nom.moneyDB internalObject;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    public static final String Names[] = {"id",
    "\u041a\u043e\u0434\u043e\u0432\u0435",
    "\u041a\u043e\u0434 \u041b\u0430\u0442\u0438\u043d\u0438\u0446\u0430",
    "\u0418\u043c\u0435\u043d\u0430",
    "\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440"};
    
    //---------------END My Variables
    
    //---------------START Methods
    
    private void prepareConn() //TEST
    {
        try{
            conn =  myframe.getConn();
            if(conn==null){System.out.println("conn problem");
            }
        }catch(Exception e){e.printStackTrace();}
    }
    
    
    private void constructObject() //OK
    {
        try {
            
            internalObject = new nom.moneyDB(conn);
        } catch(Exception e)
        
        {
            e.printStackTrace();
        }
        
    }
    private void initTable() //OK  -- !!ima za dovyr6wane - skrivane na koloni!!
    {
        try {
            
            rs = internalObject.getTable();
            model = new imakante.com.CustomTableModel(getConn(), rs, Names);
            table = new imakante.com.CustomTable(model);
           HideColumns(0);
        } catch(Exception e) {
            e.printStackTrace();
        }
        table.requestFocus();
        try {
            table.setEditingRow(0);
        } catch(Exception ex) {
            
        }
    }
    
    public void windowOpened(java.awt.event.WindowEvent e) {
    }
    public void windowClosing(java.awt.event.WindowEvent e) // colose frame`s windows
    {
        
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
    
    public nom.moneyDB getInternalObject() //OK
    {
        return internalObject;
    }
    
    public void setInternalObject(nom.moneyDB val)//OK
    {
        this.internalObject = val;
    }
    
    public CustomTableModel getModel()//OK
    {
        return model;
    }
    
    public void setModel(CustomTableModel val)//OK
    {
        this.model = val;
    }
    
    public CustomTable getTable()//OK
    {
        return table;
    }
    
    public void setTable(CustomTable val) //OK
    {
        this.table = val;
    }
    
    public iFrame getMyframe()//OK
    {
        return myframe;
    }
    
    public void setMyframe(iFrame val)//OK
    {
        this.myframe = val;
    }
    public  boolean isAtBegining()//OK
    {
        return atBegining;
    }
    
    public  void setAtBegining(boolean aAtBegining)//OK
    {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd()//OK
    {
        return atEnd;
    }
    
    public  void setAtEnd(boolean aAtEnd) //OK
    {
        atEnd = aAtEnd;
    }
    private int  getMaxRow() //OK
    {
        System.out.println("from getMaxRow()");
        int i = 0;
        i  = table.getRowCount() - 1;
        System.out.println("from getMaxRow()");
        return i;
    }
    public  int getRow() {
        return row;
    }
    
    public void setId(int ID) //OK
    {
        this.id = ID;
    }
    public int getId() //OK
    {
        return id;
    }
    public void setNom(int NOM) //OK
    {
        this.nom = NOM;
    }
    public int getNom()//OK
    {
        return nom;
    }
    public void setCod(int Cod) //OK
    {
        this.cod = Cod;
    }
    public int getCod() //OK
    {
        return cod;
    }
    public void setCodLat(String CODLAT) //OK
    {
        this.codLat = CODLAT;
    }
    public String getCodLat() //OK
    {
        return codLat;
    }
    public void setNames(String Name) //OK
    {
        this.name = Name;
    }
    public String getNames() //OK
    {
        return name;
    }
    
    
    public void setComment(String Comment) //OK
    {
        this.comment = Comment;
    }
    
    public String getComment() //OK
    {
        return comment;
    }
    
    public  void setRow(int val) //OK
    {
        row = val;
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariables();
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
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
                table.changeSelection(getRow(), 2, false, false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem");
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
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
                System.out.println("problem");
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
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem");
        }
        setAtBegining(true);
        setAtEnd(false);
    }
    
    private void printTable() {
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("\u041f\u0410\u0420\u0418\u0427\u041d\u0418");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("\u0421\u0442\u0440. " + "- {0} -" + " IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }
    
    private void newRecord() {
        setCod(0);
        setCodLat("");
        setNames("");
        setComment("");
        internalObject.insertRow(getCod(),getCodLat(),getNames(),getComment());
        setId(internalObject.getMaxId());
        nom.aeMoney ae_Money = new nom.aeMoney(this, true);
        ae_Money.setVisible(true);
        refreshTable();
    }
    
    private void editRecord(){
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){          //manage button state of ae form
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariables();
            nom.aeMoney ae_Money = new nom.aeMoney(this, true);
            ae_Money.setVisible(true);
        }else{
            
        }
    }
    private void searchRecords() {
        try {
            try {
                rs = internalObject.searchRecords(Integer.parseInt(jTextCod.getText()),jTextCodLat.getText(),jTextName.getText());
            } catch (NumberFormatException ex) {
                ex.printStackTrace();
                jTextCod.requestFocus();
            }
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(getConn(), rs, null);
            table = new imakante.com.CustomTable(model);
            HideColumns(0);
            jScrollPane1.getViewport().add(table);
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = internalObject.getTable();
        model = new imakante.com.CustomTableModel(getConn(), rs, Names);
        table = new imakante.com.CustomTable(model);
        HideColumns(0);
        jScrollPane1.getViewport().add(table);
        jScrollPane1.repaint();
    }
    
    public java.sql.Connection getConn() {
        return conn;
    }
    
    public void setConn(java.sql.Connection conn) {
        this.conn = conn;
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
// set column width
        table.getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getColumnModel().getColumn(iColumn).setMinWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMaxWidth(0);
        table.getTableHeader().getColumnModel().getColumn(iColumn).setMinWidth(0);
        
    }
    
    private void setAllVariables(){
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id")));
        setCod((Integer) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434\u043e\u0432\u0435")));
        setCodLat((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434 \u041b\u0430\u0442\u0438\u043d\u0438\u0446\u0430")));
        setNames((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043c\u0435\u043d\u0430")));
        setComment((String) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u043c\u0435\u043d\u0442\u0430\u0440")));
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
