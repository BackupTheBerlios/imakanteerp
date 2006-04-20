
package nom;

import java.awt.event.WindowListener;
import java.awt.print.PrinterException;
import java.sql.*;
import imakante.com.*;
import imakante.com.vcomponents.*;
import javax.print.PrintException;
import javax.swing.*;
import java.text.MessageFormat;
import java.lang.Byte;


public class FrmOblast extends  imakante.com.vcomponents.iInternalFrame implements WindowListener {
    
    public FrmOblast(String title, imakante.com.vcomponents.iFrame frame) {
        super(title);
        myframe = frame;
        prepareConn();     // zapazva connection
        constructOblastDB(); // inicializira class otgovarq6t za vryzkata s DB
        initTable();
        initComponents();
    }
    
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jPanel4 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jTextFieldOblast = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jTextFieldCountry = new javax.swing.JTextField();
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
        setIconifiable(true);
        setMaximizable(true);
        setResizable(true);
        setFrameIcon(new javax.swing.ImageIcon(getClass().getResource("/images/imakante_ico.png")));
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
        jLabel1.setText("\u041e\u0431\u043b\u0430\u0441\u0442:");
        jPanel4.add(jLabel1);

        jTextFieldOblast.setPreferredSize(new java.awt.Dimension(150, 20));
        jTextFieldOblast.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldOblastFocusGained(evt);
            }
        });
        jTextFieldOblast.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldOblastKeyPressed(evt);
            }
        });

        jPanel4.add(jTextFieldOblast);

        jLabel2.setText("\u0414\u044a\u0440\u0436\u0430\u0432\u0430:");
        jPanel4.add(jLabel2);

        jTextFieldCountry.setPreferredSize(new java.awt.Dimension(100, 20));
        jTextFieldCountry.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                jTextFieldCountryFocusGained(evt);
            }
        });
        jTextFieldCountry.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextFieldCountryKeyPressed(evt);
            }
        });

        jPanel4.add(jTextFieldCountry);

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/images/Symbol Search.png")));
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
            .add(0, 936, Short.MAX_VALUE)
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
        setBounds((screenSize.width-946)/2, (screenSize.height-319)/2, 946, 319);
    }// </editor-fold>//GEN-END:initComponents

    private void jTextFieldOblastFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldOblastFocusGained
        jTextFieldOblast.selectAll();
    }//GEN-LAST:event_jTextFieldOblastFocusGained

    private void jTextFieldOblastKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldOblastKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButton1.doClick(); searchRecords(); }
    }//GEN-LAST:event_jTextFieldOblastKeyPressed

    private void jTextFieldCountryFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_jTextFieldCountryFocusGained
        jTextFieldCountry.selectAll();
    }//GEN-LAST:event_jTextFieldCountryFocusGained

    private void jTextFieldCountryKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextFieldCountryKeyPressed
        if (evt.getKeyCode() == java.awt.event.KeyEvent.VK_ENTER) { jButton1.doClick(); searchRecords(); }
    }//GEN-LAST:event_jTextFieldCountryKeyPressed
    
    private void formInternalFrameClosed(javax.swing.event.InternalFrameEvent evt) {//GEN-FIRST:event_formInternalFrameClosed
        
    }//GEN-LAST:event_formInternalFrameClosed
    
    private void jButtonPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonPrintActionPerformed
        try {
            MessageFormat headerFormat = new MessageFormat("Oblast");
            MessageFormat footerFormat = new MessageFormat("Page. "+"- {0} -"+" IMAKANTE' ");
            table.print(JTable.PrintMode.FIT_WIDTH, headerFormat, footerFormat);
        } catch(PrinterException e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_jButtonPrintActionPerformed
    
    private void jButtonCloseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCloseActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButtonCloseActionPerformed
// ????? proverka za vhoda na dannite , trqbva da sa samo cifri   v momenta e izpylneno s class imacante.com.InputIntegerVerifier
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
        if (table.getSelectedRow() != -1) {
            
            setRow(table.getSelectedRow());
            if(getRow()==0){
                setAtBegining(true);
            }
            if(getRow()==getMaxRow()){
                setAtEnd(true);
            }else{
                setAtBegining(false);
                setAtEnd(false);
            }
            setId((Integer) table.getValueAt(getRow(), 0));
            setNames((String) table.getValueAt(getRow(), 1));
            setIDCountry((Byte) table.getValueAt(getRow(), 2));
            try {
                dialog = new aeOblast(this, true, getIDCountry());
                dialog.setVisible(true);
            } catch(Exception e) {
                e.printStackTrace();
            }
        } else {
            
        }
        
    }//GEN-LAST:event_jButtonEditActionPerformed
    
    private void jButtonNewActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonNewActionPerformed
        setNames("");
        setId(countriesT.getMaxId()+1);
        setIDCountry(new Integer(0).byteValue());
        countriesT.insertRow(getId(), getNames(), getIDCountry());
        
        setId(countriesT.getMaxId());
        refreshTable();
        try {
            dialog = new aeOblast(this, true,0);
            dialog.setVisible(true);
            
        } catch(Exception e) { e.printStackTrace(); }
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
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField jTextFieldCountry;
    private javax.swing.JTextField jTextFieldOblast;
    // End of variables declaration//GEN-END:variables
    //--------------- My Variables
    private String columnName[] = { "id_n_oblast","\u041e\u0431\u043b\u0430\u0441\u0442",
                                    "id_n_country","\u0414\u044a\u0440\u0436\u0430\u0432\u0430" };
    private int id = 0; // imena ot tablicata
    private int postcode = 0; // imena ot tablicata
    private String name; // imena ot tablicata
    private byte id_country = 0; // vryzkata kym tablicata za Oblastite
    private  boolean atBegining = false;
    private  boolean atEnd = false;
    private int row;
    private aeOblast dialog;
    private imakante.com.vcomponents.iFrame myframe;
    private java.sql.Connection conn;
    private  java.sql.ResultSet rs;
    private  oblastDB countriesT;
    private  imakante.com.CustomTableModel model;
    private  imakante.com.CustomTable table;
    //---------------END My Variables
    
    //---------------START MyFunction
    private void prepareConn() {
        try {
            setConn(myframe.getConn());
        } catch(Exception e) {
            e.printStackTrace();
        }
    }
    
    private void constructOblastDB() // OK
    {
        try {
            
            countriesT = new nom.oblastDB(conn);
        } catch(Exception e)
        
        {
            e.printStackTrace();
        }
        System.out.println("ot construct object");
    }
    private void initTable() //-OK  -- !!ima za dovyr6wane - skrivane na koloni!!
    {
        try {
            rs = countriesT.getTable();
            model = new imakante.com.CustomTableModel(conn,rs, columnName);
            table = new imakante.com.CustomTable(model);
            HideColumns(getColumnIndex("id_n_oblast"));
            HideColumns(getColumnIndex("id_n_country"));
            
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
    public oblastDB getCountriesT() //-
    {
        return countriesT;
    }
    
    public void setCountriesT(oblastDB val)//-
    {
        this.countriesT = val;
    }
    
    public CustomTableModel getModel()//-
    {
        return model;
    }
    
    public void setModel(CustomTableModel val)//-
    {
        this.model = val;
    }
    
    public CustomTable getTable()//-
    {
        return table;
    }
    
    public void setTable(CustomTable val) //-
    {
        this.table = val;
    }
    
    public iFrame getMyframe()//-
    {
        return myframe;
    }
    
    public void setMyframe(iFrame val)//-
    {
        this.myframe = val;
    }
    public  boolean isAtBegining()//-
    {
        return atBegining;
    }
    
    public  void setAtBegining(boolean aAtBegining)//-
    {
        atBegining = aAtBegining;
    }
    
    public  boolean isAtEnd()//-
    {
        return atEnd;
    }
    
    public  void setAtEnd(boolean aAtEnd) //-
    {
        atEnd = aAtEnd;
    }
    private int  getMaxRow() //-
    {
        int i = 0;
        i  = table.getRowCount() - 1;
        return i;
    }
    public  int getRow() {
        return row;
    }
    
    public void setId(int ID) //-
    {
        this.id = ID;
    }
    public int getId() //-
    {
        return id;
    }
    
    
    public void setNames(String Name) //OK
    {
        this.name = Name;
    }
    public String getNames() //OK
    {
        return name;
    }
    
    public void setIDCountry(byte anid) //OK
    {
        this.id_country = anid;
    }
    public byte getIDCountry() //OK
    {
        return id_country;
    }
    public  void setRow(int val) //-
    {
        row = val;
    }
    public  void mTableEnd() //-
    {
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
    public void mOneRowPlus() //-
    {
        if(getRow() <= getMaxRow()) {
            if(getRow() < getMaxRow()) {
                setRow(getRow()+1);
            }
            setAtBegining(false);
            try {
                setAllVariables();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() - 1);
                System.out.println("problem");
            }
            if(getRow() == getMaxRow()) {
                setAtEnd(true);
            }
        }
    }
    public  void mOneRowMinus() //-
    {
        if(getRow() >= 0){
            if(getRow() > 0){
                setRow(getRow() - 1);}
            setAtEnd(false);
            try {
                setAllVariables();
                
                table.changeSelection(getRow(),2,false,false); // za predvijvane na selektiraniq red nazad
            } catch(ArrayIndexOutOfBoundsException aioobe) {
                setRow(getRow() + 1);
            }
            System.out.println("problem");}
        if(getRow() == 0){
            setAtBegining(true);
        }
    }
    public void mTableBegining() //-
    {
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
    private void searchRecords() {
        int searchPostCode = 0;
        try {
            String searchNameCountry = jTextFieldCountry.getText();
            String searchNameOblast = jTextFieldOblast.getText();
            rs = countriesT.searchRecords(searchNameOblast, searchNameCountry);
            jScrollPane1.remove(table);
            model = new imakante.com.CustomTableModel(conn, rs, columnName);
            table = new imakante.com.CustomTable(model);
            jScrollPane1.getViewport().add(table);
            HideColumns(getColumnIndex("id_n_oblast"));
            HideColumns(getColumnIndex("id_n_country"));
            jScrollPane1.repaint();
        } catch(Exception e) { e.printStackTrace(); }
    }
    
    protected  void refreshTable() {
        jScrollPane1.remove(table);
        rs = countriesT.getTable();
        model = new imakante.com.CustomTableModel(conn, rs, columnName);
        table = new imakante.com.CustomTable(model);
        jScrollPane1.getViewport().add(table);
        HideColumns(getColumnIndex("id_n_oblast"));
        HideColumns(getColumnIndex("id_n_country"));
        jTextFieldOblast.setText("");
        jTextFieldCountry.setText("");
        jScrollPane1.repaint();
        
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
        setId((Integer) table.getValueAt(getRow(), getColumnIndex("id_n_oblast")));
        setNames((String) table.getValueAt(getRow(), getColumnIndex("\u041e\u0431\u043b\u0430\u0441\u0442")));
        setIDCountry((Byte) table.getValueAt(getRow(), getColumnIndex("id_n_country")));
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
        countriesT.close();
    }

    private void delRecord() {
        if(table.getSelectedRow() != -1) {
            setRow(table.getSelectedRow());
            setAllVariables();
            countriesT.deleteRow(getId());
            refreshTable();
        }
    }
}// end class
