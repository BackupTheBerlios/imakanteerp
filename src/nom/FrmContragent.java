/*
 *0.FrmContragent.java
 *
 * 1.contragentDB - cannection to SQL server;
 * 2.aeContragent - edit/insert/search element of table;
 * 3.showAddressContragent - select address (City,province, post code);
 * 4.showNameOfMOL_OSO - select names (first name, surname last name);
 */

package nom;

public class FrmContragent extends imakante.com.vcomponents.iInternalFrame implements java.awt.event.WindowListener {
    
    public FrmContragent(String title,imakante.com.vcomponents.iFrame frame, int flag) {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        this.flag = flag; //  za da rabotim samo s opredeleni zapisi ima6ti syotvetniq fag
        constructGroupDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldCod = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldName = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jTextFieldBulstat = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        jTextFieldDanNomer = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jTextFieldAddress = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        jTextFieldTel = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        jTextFieldFax = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jTextFieldEmail = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        jTextFieldWeb = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel3 = new javax.swing.JPanel();
        jButtonNew = new javax.swing.JButton();
        jButtonEdit = new javax.swing.JButton();
        jButtonPrint = new javax.swing.JButton();
        jButtonPrintReport = new javax.swing.JButton();
        jButtonDelete = new javax.swing.JButton();
        jButtonRefresh = new javax.swing.JButton();
        jButtonDeleteAll = new javax.swing.JButton();
        jButtonClose = new javax.swing.JButton();

        setClosable(true);
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
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

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 1057, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 10, Short.MAX_VALUE)
        );
        getContentPane().add(jPanel1, java.awt.BorderLayout.NORTH);

        jPanel2.setLayout(new java.awt.BorderLayout());

        jScrollPane1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jScrollPane1.getViewport().add(table);
        jPanel2.add(jScrollPane1, java.awt.BorderLayout.CENTER);

        jPanel4.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        jPanel4.setPreferredSize(new java.awt.Dimension(801, 60));
        jLabel1.setText("\u041a\u043e\u0434:");
        jPanel4.add(jLabel1);

        jTextFieldCod.setPreferredSize(new java.awt.Dimension(45, 20));
        jPanel4.add(jTextFieldCod);

        jLabel2.setText("\u0418\u043c\u0435:");
        jPanel4.add(jLabel2);

        jTextFieldName.setPreferredSize(new java.awt.Dimension(200, 20));
        jPanel4.add(jTextFieldName);

        jLabel3.setText("\u0411\u0443\u043b\u0441\u0442\u0430\u0442:");
        jPanel4.add(jLabel3);

        jTextFieldBulstat.setPreferredSize(new java.awt.Dimension(90, 20));
        jPanel4.add(jTextFieldBulstat);

        jLabel4.setText("\u0414.\u043d\u043e\u043c\u0435\u0440:");
        jPanel4.add(jLabel4);

        jTextFieldDanNomer.setPreferredSize(new java.awt.Dimension(90, 20));
        jPanel4.add(jTextFieldDanNomer);

        jLabel5.setText("\u0410\u0434\u0440\u0435\u0441:");
        jPanel4.add(jLabel5);

        jTextFieldAddress.setPreferredSize(new java.awt.Dimension(200, 20));
        jPanel4.add(jTextFieldAddress);

        jLabel6.setText("\u0422\u0435\u043b.:");
        jPanel4.add(jLabel6);

        jTextFieldTel.setPreferredSize(new java.awt.Dimension(70, 20));
        jPanel4.add(jTextFieldTel);

        jLabel7.setText("\u0424\u0430\u043a\u0441:");
        jPanel4.add(jLabel7);

        jTextFieldFax.setPreferredSize(new java.awt.Dimension(70, 20));
        jPanel4.add(jTextFieldFax);

        jLabel8.setText("E-mail:");
        jPanel4.add(jLabel8);

        jTextFieldEmail.setPreferredSize(new java.awt.Dimension(150, 20));
        jPanel4.add(jTextFieldEmail);

        jLabel9.setText("Web page:");
        jPanel4.add(jLabel9);

        jTextFieldWeb.setPreferredSize(new java.awt.Dimension(150, 20));
        jPanel4.add(jTextFieldWeb);

        jButton1.setText("\u0422\u044a\u0440\u0441\u0435\u043d\u0435");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jPanel4.add(jButton1);

        jPanel2.add(jPanel4, java.awt.BorderLayout.SOUTH);

        getContentPane().add(jPanel2, java.awt.BorderLayout.CENTER);

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

        jButtonPrintReport.setText("\u041f\u0435\u0447\u0430\u0442 \u0440\u0435\u043f\u043e\u0440\u0442");
        jPanel3.add(jButtonPrintReport);

        jButtonDelete.setText("\u0418\u0437\u0442\u0440\u0438\u0432\u0430\u043d\u0435");
        jButtonDelete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonDeleteActionPerformed(evt);
            }
        });

        jPanel3.add(jButtonDelete);

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
    
    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
        imakante.sales.sales_main tmp =  (imakante.sales.sales_main) myframe;
        tmp.isStartFrmContragent = false; // flag dali da se startira FrmContragent ot sales_main
    }//GEN-LAST:event_formInternalFrameClosed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        try {
            java.text.MessageFormat headerFormat = new java.text.MessageFormat("Contragent");
            java.text.MessageFormat footerFormat = new java.text.MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(javax.swing.JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(java.awt.print.PrinterException e) { e.printStackTrace(); }
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        if(jTextFieldCod.getText().length()>0) {
            try {
                setCod(Integer.parseInt(jTextFieldCod.getText()));
            } catch(Exception e) { e.printStackTrace(); }
        } else setCod(0);
        setName(jTextFieldName.getText());
        setBulstat(jTextFieldBulstat.getText());
        setDanNomer(jTextFieldDanNomer.getText());
        setAddress(jTextFieldAddress.getText());
        setTel(jTextFieldTel.getText());
        setFax(jTextFieldFax.getText());
        setEmail(jTextFieldEmail.getText());
        setWeb(jTextFieldWeb.getText());
        try {
            rs = getContragentDB().searchRecords(getCod(),getName(),getBulstat(),
                    getDanNomer(),getAddress(),getID_NM(), getTel(),
                    getFax(),getEmail(),getWeb(),getID_MOL(),getID_OSO(),
                    getNameBank_R(),getNameBank_D(),
                    getIBAN_D(), getIBAN_R(),
                    getBIC_R(),getBIC_D(),
                    getValita_D(),getValita_R());
            model = new imakante.com.CustomTableModel(conn,rs, null);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id_contragent"));
            HideColumns(getColumnIndex("id_nm"));
            HideColumns(getColumnIndex("id_mol"));
            HideColumns(getColumnIndex("id_oso"));
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
        table.requestFocus();
    }//GEN-LAST:event_jButton1ActionPerformed
    
    private void jButtonRefreshActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonRefreshActionPerformed
        refreshTable();
    }//GEN-LAST:event_jButtonRefreshActionPerformed
    
    private void jButtonDeleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonDeleteActionPerformed
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariable();
            getContragentDB().deleteRow(getId());
            refreshTable();
        }
    }//GEN-LAST:event_jButtonDeleteActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        setCod(-1);
        setName("");
        setBulstat("");
        setDanNomer("");
        setAddress("");
        setID_NM(-1);
        setTel("");
        setFax("");
        setEmail("");
        setWeb("");
        setID_MOL(-1);
        setID_OSO(-1);
        try {
            dialog = new aeContragent(this, true,true);
            dialog.setVisible(true);
        } catch(Exception e) { e.printStackTrace(); }
        refreshTable();
    }//GEN-LAST:event_jButtonNewActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
    
    private void jButtonEditActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonEditActionPerformed
        if (table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }
            setAllVariable();
            /*setId((Integer) table.getValueAt(getRow(), 0));
            setCod((Integer) table.getValueAt(getRow(), 1));
            setName((String) table.getValueAt(getRow(), 2));
            setBulstat((String)table.getValueAt(getRow(),3));
            setDanNomer((String)table.getValueAt(getRow(),4));
            setAddress((String)table.getValueAt(getRow(),5));
            setID_NM((Integer) table.getValueAt(getRow(), 6));
            setTel((String) table.getValueAt(getRow(), 11));
            setFax((String) table.getValueAt(getRow(), 12));
            setEmail((String) table.getValueAt(getRow(), 13));
            setWeb((String) table.getValueAt(getRow(), 14));
            setID_MOL((Integer) table.getValueAt(getRow(), 15));
            setID_OSO((Integer) table.getValueAt(getRow(), 17));*/
            try {
                dialog = new aeContragent(this, true,false);
                dialog.setVisible(true);
            } catch(Exception e) { e.printStackTrace(); }
        } else {  }
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButtonClose;
    private javax.swing.JButton jButtonDelete;
    private javax.swing.JButton jButtonDeleteAll;
    private javax.swing.JButton jButtonEdit;
    private javax.swing.JButton jButtonNew;
    private javax.swing.JButton jButtonPrint;
    private javax.swing.JButton jButtonPrintReport;
    private javax.swing.JButton jButtonRefresh;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextFieldAddress;
    private javax.swing.JTextField jTextFieldBulstat;
    private javax.swing.JTextField jTextFieldCod;
    private javax.swing.JTextField jTextFieldDanNomer;
    private javax.swing.JTextField jTextFieldEmail;
    private javax.swing.JTextField jTextFieldFax;
    private javax.swing.JTextField jTextFieldName;
    private javax.swing.JTextField jTextFieldTel;
    private javax.swing.JTextField jTextFieldWeb;
    // End of variables declaration//GEN-END:variables
//--------------- My Variables
   /* private String columnName[] = {"id_contragent","Код:","Име:","Булстат","Данъчен номер:","Адрес:","id_nm","Населено място","Област",
                         "Код на страната","Държава","Телфон","Факс","E-mail","Web страница","id_mol","МОЛ","id_oso","ОСО","flag_n_contragent"};*/
    private String columnName[] = {"id_contragent","\u041a\u043e\u0434","\u0418\u043c\u0435","\u0411\u0443\u043b\u0441\u0442\u0430\u0442","\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u0440","\u0410\u0434\u0440\u0435\u0441","id_nm","\u041d\u0430\u0441\u0435\u043b\u0435\u043d\u043e \u043c\u044f\u0441\u0442\u043e","\u041e\u0431\u043b\u0430\u0441\u0442",
    "\u041a\u043e\u0434 \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0430\u0442\u0430","\u0414\u044a\u0440\u0436\u0430\u0432\u0430","\u0422\u0435\u043b\u0444\u043e\u043d","\u0424\u0430\u043a\u0441","E-mail","Web \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430","id_mol","\u041c\u041e\u041b","id_oso","\u041e\u0421\u041e","flag_n_contragent",
    "\u0418\u043C\u0435 \u043D\u0430 \u0411\u0430\u043D\u043A\u0430\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)",
    "\u0418\u043C\u0435 \u043D\u0430 \u0411\u0430\u043D\u043A\u0430\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430\u0430(\u0414\u0414\u0421)",
    "IBAN(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)",
    "IBAN(\u0414\u0414\u0421)",
    "BIC(\u0414\u0414\u0421)",
    "BIC(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)",
    "\u0412\u0430\u043B\u0443\u0442\u0430(\u0414\u0414\u0421)",
    "\u0412\u0430\u043B\u0443\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)"};
    
    private  boolean atBegining=false;
    private  boolean atEnd = false;
    private int row;
    private aeContragent dialog;
    private int cod,id,id_nm,id_mol,id_oso,flag;
    private String name,bull,dan,address,tel,fax,email,web;
    private String nameBank_r,nameBank_d, IBAN_R, IBAN_D,valuta_R,valuta_D,BIC_R,BIC_D;
    
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private java.sql.ResultSet rs;
    private nom.contragentDB contragent;
    private imakante.com.CustomTableModel model;
    private imakante.com.CustomTable table;
    
//---------------END My Variables
    
    //---------------START MyFunction
    private void prepareConn() {
        try {
            setConn(myframe.getConn());
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void constructGroupDB() {
        try {
            setContragent(new nom.contragentDB(conn, flag));
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    private void initTable() {
        try {
            getContragentDB().setFlag(flag);
            rs = getContragentDB().getTable();
            model = new imakante.com.CustomTableModel(conn, rs, columnName);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_contragent"));
            HideColumns(getColumnIndex("id_nm"));
            HideColumns(getColumnIndex("id_mol"));
            HideColumns(getColumnIndex("id_oso"));
            HideColumns(getColumnIndex("flag_n_contragent"));
            
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
    
    public  void setRow(int val) {
        row = val;
    }
    
    public int getRow() {
        return row;
    }
    
    public  void setAtBegining(boolean aAtBegining) {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd() {
        return atEnd;
    }
    
    public  boolean isAtBegining() {
        return atBegining;
    }
    
    public  void setAtEnd(boolean aAtEnd) {
        atEnd = aAtEnd;
    }
    
    private int  getMaxRow() {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    
    public void setId(int ID) {
        this.id = ID;
    }
    
    public int getId() {
        return id;
    }
    
    public void setCod(int COD) {
        this.cod = COD;
    }
    
    public int getCod() {
        return cod;
    }
    
    public void setName(String Name) {
        this.name = Name;
    }
    
    public String getName() {
        return name;
    }
    
    public void setBulstat(String bul) {
        this.bull = bul;
    }
    
    public String getBulstat() {
        return bull;
    }
    
    public void setDanNomer(String dannomer) {
        this.dan = dannomer;
    }
    
    public String getDanNomer() {
        return dan;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setID_NM(int nm) {
        this.id_nm = nm;
    }
    
    public int getID_NM() {
        return id_nm;
    }
    
    public void setTel(String tel) {
        this.tel = tel;
    }
    
    public String getTel() {
        return tel;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }
    
    public String getFax() {
        return fax;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setWeb(String web) {
        this.web = web;
    }
    
    public String getWeb() {
        return web;
    }
    
    public void setID_MOL(int mol) {
        this.id_mol = mol;
    }
    
    public int getID_MOL() {
        return id_mol;
    }
    
    public void setID_OSO(int oso) {
        this.id_oso = oso;
    }
    
    public int getID_OSO() {
        return id_oso;
    }
    
    public void setNameBank_R(String b)
    {
        nameBank_r=b;
    }
    public void setNameBank_D(String b)
    {
        nameBank_d=b;
    }
    public void setIBAN_R(String iban)
    {
        IBAN_R=iban;
    }
    public void setIBAN_D(String iban)
    {
        IBAN_D=iban;
    }
    public String getBIC_R()
    {
       return BIC_R;
    }
     public String getBIC_D()
    {
       return BIC_D;
    }
    public String getNameBank_R()
    {
       return nameBank_r;
    }
    public String getNameBank_D()
    {
       return  nameBank_d;
    }
    public String getIBAN_R()
    {
        return IBAN_R;
    }
    public String getIBAN_D()
    {
       return IBAN_D;
    }
    public void setBIC_R(String bic)
    {
        BIC_R=bic;
    }
     public void setBIC_D(String bic)
    {
        BIC_D=bic;
    }
   public String getValita_R()
   {
       return valuta_R;
   }
   public void setValuta_R(String in)
   {
       valuta_R=in;
   }
   public String getValita_D()
   {
       return valuta_D;
   }
   public void setValuta_D(String in)
   {
       valuta_D=in;
   }
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = getContragentDB().getTable();
        model = new imakante.com.CustomTableModel(conn, rs, columnName);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id_contragent"));
        HideColumns(getColumnIndex("id_nm"));
        HideColumns(getColumnIndex("id_mol"));
        HideColumns(getColumnIndex("id_oso"));
        HideColumns(getColumnIndex("flag_n_contragent"));
        jScrollPane1.repaint();
        
    }
    
    public  void mTableEnd() {
        setRow(getMaxRow());
        try{
            setAllVariable();
            table.changeSelection(getRow(),2,false,false);
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem - mTableEnd");
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
                setAllVariable();
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem - mOneRowPlus");
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    
    public  void mOneRowMinus() {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setAtEnd(false);
            try {
                setAllVariable();
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
            System.out.println("problem - mOneRowMinus");}
        if(getRow() == 0){
            setAtBegining(true);
        }
    }
    
    public void mTableBegining() {
        setRow(0);
        try {
            setAllVariable();
            
            table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
        } catch(ArrayIndexOutOfBoundsException aioobe) {
            setRow(getRow() - 1);
            System.out.println("problem- mTableBegining");
        }
        setAtBegining(true);
        setAtEnd(false);
    }
    
    public void setConn(java.sql.Connection con) {
        this.conn = con;
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
    
    public void setAllVariable() {
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id_contragent")));
        setCod((Integer) table.getValueAt(getRow(), getColumnIndex("\u041a\u043e\u0434")));
        setName((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043c\u0435")));
        setBulstat((String)table.getValueAt(getRow(),getColumnIndex("\u0411\u0443\u043b\u0441\u0442\u0430\u0442")));
        setDanNomer((String)table.getValueAt(getRow(),getColumnIndex("\u0414\u0430\u043d\u044a\u0447\u0435\u043d \u043d\u043e\u043c\u0435\u0440")));
        setAddress((String)table.getValueAt(getRow(),getColumnIndex("\u0410\u0434\u0440\u0435\u0441")));
        setID_NM((Integer) table.getValueAt(getRow(), getColumnIndex("id_nm")));
        setTel((String) table.getValueAt(getRow(), getColumnIndex("\u0422\u0435\u043b\u0444\u043e\u043d")));
        setFax((String) table.getValueAt(getRow(), getColumnIndex("\u0424\u0430\u043a\u0441")));
        setEmail((String) table.getValueAt(getRow(), getColumnIndex("E-mail")));
        setWeb((String) table.getValueAt(getRow(), getColumnIndex("Web \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430")));
        setID_MOL((Integer) table.getValueAt(getRow(), getColumnIndex("id_mol")));
        setID_OSO((Integer) table.getValueAt(getRow(), getColumnIndex("id_oso")));
        
        setNameBank_R((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043C\u0435 \u043D\u0430 \u0411\u0430\u043D\u043A\u0430\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)"))); //Име на Банката(р.сметка)
        setNameBank_D((String) table.getValueAt(getRow(), getColumnIndex("\u0418\u043C\u0435 \u043D\u0430 \u0411\u0430\u043D\u043A\u0430\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430\u0430(\u0414\u0414\u0421)")));
        
        setIBAN_R((String) table.getValueAt(getRow(), getColumnIndex("IBAN(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)")));
        setIBAN_D((String) table.getValueAt(getRow(), getColumnIndex("IBAN(\u0414\u0414\u0421)")));
        
        setBIC_D((String) table.getValueAt(getRow(), getColumnIndex("BIC(\u0414\u0414\u0421)")));
        setBIC_R((String) table.getValueAt(getRow(), getColumnIndex("BIC(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)")));
        
        setValuta_D((String) table.getValueAt(getRow(), getColumnIndex("\u0412\u0430\u043B\u0443\u0442\u0430(\u0414\u0414\u0421)")));
        setValuta_R((String) table.getValueAt(getRow(), getColumnIndex("\u0412\u0430\u043B\u0443\u0442\u0430(\u0440.\u0441\u043C\u0435\u0442\u043A\u0430)")));
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
        getContragentDB().close();
    }

    public nom.contragentDB getContragentDB() {
        return contragent;
    }

    public void setContragent(nom.contragentDB contragent) {
        this.contragent = contragent;
    }
    
}// end class
